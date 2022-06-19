package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzjn.class */
final class zzjn {
    private final MediaCodec.CryptoInfo zzany;
    private final MediaCodec.CryptoInfo.Pattern zzaoh;

    /* JADX INFO: Access modifiers changed from: private */
    public zzjn(MediaCodec.CryptoInfo cryptoInfo) {
        this.zzany = cryptoInfo;
        this.zzaoh = new MediaCodec.CryptoInfo.Pattern(0, 0);
    }

    public final void set(int i, int i2) {
        this.zzaoh.set(0, 0);
        this.zzany.setPattern(this.zzaoh);
    }
}
