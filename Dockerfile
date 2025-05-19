FROM alpinelinux/docker-cli:latest AS cli

FROM moby/buildkit:v0.12.4-rootless

COPY --from=cli /usr/bin/docker /usr/bin/docker
