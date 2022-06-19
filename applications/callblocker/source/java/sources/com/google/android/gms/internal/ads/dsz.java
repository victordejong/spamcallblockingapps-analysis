package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
@TargetApi(23)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dsz.class */
final class dsz implements MediaCodec.OnFrameRenderedListener {

    /* renamed from: a */
    private final /* synthetic */ dsy f15642a;

    /* JADX INFO: Access modifiers changed from: private */
    public dsz(dsy dsyVar, MediaCodec mediaCodec) {
        this.f15642a = dsyVar;
        mediaCodec.setOnFrameRenderedListener(this, new cnz());
    }

    @Override // android.media.MediaCodec.OnFrameRenderedListener
    public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
        if (this != this.f15642a.f15618b) {
            return;
        }
        this.f15642a.m8652v();
    }
}
