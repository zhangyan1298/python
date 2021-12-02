FROM python:3.6.8

# Edit with mysql-client, postgresql-client, sqlite3, etc. for your needs.
# Or delete entirely if not needed.
RUN sed -i s/deb.debian.org/mirrors.tuna.tsinghua.edu.cn/g /etc/apt/sources.list
RUN sed -i s/security.debian.org/mirrors.tuna.tsinghua.edu.cn/g /etc/apt/sources.list
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    apt-transport-https \
    ca-certificates\
    libsasl2-dev \
    python-dev \
    libldap2-dev \
    libssl-dev \
    python-dev \
    libldap2-dev \
    libsasl2-dev \
    libssl-dev \
    supervisor \
    && rm -rf /var/lib/apt/lists/*
