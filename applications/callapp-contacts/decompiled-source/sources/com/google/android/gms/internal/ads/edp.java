package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.Handler;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/edp.class */
final class edp implements MediaCodec.OnFrameRenderedListener {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ edo f27683a;

    private edp(edo edoVar, MediaCodec mediaCodec) {
        this.f27683a = edoVar;
        mediaCodec.setOnFrameRenderedListener(this, new Handler());
    }

    @Override // android.media.MediaCodec.OnFrameRenderedListener
    public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
        if (this == this.f27683a.f27681b) {
            this.f27683a.v();
        }
    }
}
