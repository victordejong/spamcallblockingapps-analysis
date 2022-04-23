package com.bumptech.glide.load.resource.bitmap;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/VideoDecoder$VideoDecoderException.class */
final class VideoDecoder$VideoDecoderException extends RuntimeException {
    private static final long serialVersionUID = -2556382523004027815L;

    VideoDecoder$VideoDecoderException() {
        super("MediaMetadataRetriever failed to retrieve a frame without throwing, check the adb logs for .*MetadataRetriever.* prior to this exception for details");
    }
}
