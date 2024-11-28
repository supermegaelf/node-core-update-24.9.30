#!/bin/bash

apt update && apt install -y wget unzip

mkdir -p /var/lib/marzban/xray-core && cd /var/lib/marzban/xray-core

wget https://github.com/XTLS/Xray-core/releases/download/v24.9.30/Xray-linux-64.zip

unzip Xray-linux-64.zip && rm Xray-linux-64.zip

cd ~/Marzban-node

docker compose down --remove-orphans; docker compose up -d
