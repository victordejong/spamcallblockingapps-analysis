package com.google.android.exoplayer2.video;

import android.view.Surface;
import com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException;
import com.google.android.exoplayer2.mediacodec.g;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/MediaCodecVideoDecoderException.class */
public class MediaCodecVideoDecoderException extends MediaCodecDecoderException {

    /* renamed from: c  reason: collision with root package name */
    public final int f22362c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f22363d;

    public MediaCodecVideoDecoderException(Throwable th, g gVar, Surface surface) {
        super(th, gVar);
        this.f22362c = System.identityHashCode(surface);
        this.f22363d = surface == null || surface.isValid();
    }
}
