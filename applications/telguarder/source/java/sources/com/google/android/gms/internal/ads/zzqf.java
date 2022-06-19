package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.Handler;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqf.class */
final class zzqf implements MediaCodec.OnFrameRenderedListener {
    private final /* synthetic */ zzqe zzbmh;

    /* JADX INFO: Access modifiers changed from: private */
    public zzqf(zzqe zzqeVar, MediaCodec mediaCodec) {
        this.zzbmh = zzqeVar;
        mediaCodec.setOnFrameRenderedListener(this, new Handler());
    }

    @Override // android.media.MediaCodec.OnFrameRenderedListener
    public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
        if (this != this.zzbmh.zzbme) {
            return;
        }
        this.zzbmh.zzjk();
    }
}
