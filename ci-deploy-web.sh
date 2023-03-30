#!/bin/bash

cd /var/www/clover-app && \
    git pull origin main && \
    pip3 install -r ./requirements.txt && \
    cd frontend && flutter build web && cd ../ && \
    systemctl restart systemd_web_server_clover_app.service
