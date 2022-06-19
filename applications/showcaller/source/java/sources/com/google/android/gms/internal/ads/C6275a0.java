package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
/* renamed from: com.google.android.gms.internal.ads.a0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/a0.class */
final class C6275a0 {

    /* renamed from: a */
    private final MediaCodec.CryptoInfo f19780a;

    /* renamed from: b */
    private final MediaCodec.CryptoInfo.Pattern f19781b = new MediaCodec.CryptoInfo.Pattern(0, 0);

    /* renamed from: a */
    public static /* synthetic */ void m16721a(C6275a0 c6275a0, int i, int i2) {
        c6275a0.f19781b.set(i, i2);
        c6275a0.f19780a.setPattern(c6275a0.f19781b);
    }
}
