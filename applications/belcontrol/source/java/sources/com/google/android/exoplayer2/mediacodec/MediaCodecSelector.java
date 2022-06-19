package com.google.android.exoplayer2.mediacodec;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecSelector.class */
public interface MediaCodecSelector {
    public static final MediaCodecSelector DEFAULT = new 1();

    MediaCodecInfo getDecoderInfo(String str, boolean z);

    MediaCodecInfo getPassthroughDecoderInfo();
}
