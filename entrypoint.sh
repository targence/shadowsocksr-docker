#!/bin/bash

[ -e /etc/shadowsocks.json ] && rm /etc/shadowsocks.json

PASSWORD = "12345678";

config=$(</etc/shadowsocks.tmpl);
config="${config//\{PASSWORD\}/$YOUR_PASSWORD}";
printf '%s\n' "$config" >/etc/shadowsocks.json

echo "Configured, starting"

exec "$@"
