package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.Handler;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/edp.class */
final class edp implements MediaCodec.OnFrameRenderedListener {

    /* renamed from: a */
    private final /* synthetic */ edo f48796a;

    /* JADX INFO: Access modifiers changed from: private */
    public edp(edo edoVar, MediaCodec mediaCodec) {
        this.f48796a = edoVar;
        mediaCodec.setOnFrameRenderedListener(this, new Handler());
    }

    @Override // android.media.MediaCodec.OnFrameRenderedListener
    public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
        if (this != this.f48796a.f48772b) {
            return;
        }
        this.f48796a.m15148v();
    }
}
