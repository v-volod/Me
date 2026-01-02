
.PHONY: preview build

preview:
	swift package --disable-sandbox preview-documentation --target Me

build:
	mv docs/CNAME CNAME
	swift package --allow-writing-to-directory docs  \
    generate-documentation --target Me \
    --disable-indexing \
    --transform-for-static-hosting \
    --output-path docs
	mv CNAME docs/CNAME
