package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
@TargetApi(24)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dmu.class */
final class dmu {

    /* renamed from: a */
    private final MediaCodec.CryptoInfo f14868a;

    /* renamed from: b */
    private final MediaCodec.CryptoInfo.Pattern f14869b;

    /* JADX INFO: Access modifiers changed from: private */
    public dmu(MediaCodec.CryptoInfo cryptoInfo) {
        this.f14868a = cryptoInfo;
        this.f14869b = new MediaCodec.CryptoInfo.Pattern(0, 0);
    }

    /* renamed from: a */
    public final void m9087a(int i, int i2) {
        this.f14869b.set(i, i2);
        this.f14868a.setPattern(this.f14869b);
    }
}
