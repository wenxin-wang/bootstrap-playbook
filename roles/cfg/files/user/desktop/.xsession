# -*- mode: Shell-script -*-
urxvtd -q -o -f

#xrandr --setprovideroffloadsink radeon Intel

#eval $(gnome-keyring-daemon -d --components=pkcs11,secrets,ssh,gpg)
#export GNOME_KEYRING_CONTROL='false' # just a nonsense/invalid value
#export SSH_AUTH_SOCK
export SSH_AUTH_SOCK=/run/user/$UID/keyring/ssh
#export GPG_AGENT_INFO

for profile in /etc/profile ~/.bash_profile
do
    if [ -f $profile ]
    then
        . $profile
    fi
done

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

ibus-daemon -drx

rand_bg
xkb-custom
dex -a
