package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
@TargetApi(24)
/* renamed from: com.google.android.gms.internal.ads.ed */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ed.class */
final class C6437ed {

    /* renamed from: a */
    private final MediaCodec.CryptoInfo f22068a;

    /* renamed from: b */
    private final MediaCodec.CryptoInfo.Pattern f22069b = new MediaCodec.CryptoInfo.Pattern(0, 0);

    /* renamed from: a */
    public static /* synthetic */ void m15523a(C6437ed c6437ed, int i, int i2) {
        c6437ed.f22069b.set(0, 0);
        c6437ed.f22068a.setPattern(c6437ed.f22069b);
    }
}
