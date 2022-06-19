package com.google.android.exoplayer2.video;

import android.view.Surface;
import com.google.android.exoplayer2.mediacodec.C11187g;
import com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/MediaCodecVideoDecoderException.class */
public class MediaCodecVideoDecoderException extends MediaCodecDecoderException {

    /* renamed from: c */
    public final int f38771c;

    /* renamed from: d */
    public final boolean f38772d;

    public MediaCodecVideoDecoderException(Throwable th, C11187g c11187g, Surface surface) {
        super(th, c11187g);
        this.f38771c = System.identityHashCode(surface);
        this.f38772d = surface == null || surface.isValid();
    }
}
