#!/bin/sh

rm -f /data/.session/rtorrent.lock

chown -R $UID:$GID /data /home/torrent /tmp /usr/flood/dist /flood-db /etc/s6.d

if [ ${RTORRENT_SOCK} = "false" ]; then
    sed -i -e 's|^scgi_local.*$|scgi_port = 0.0.0.0:5000|' /home/torrent/.rtorrent.rc
fi


