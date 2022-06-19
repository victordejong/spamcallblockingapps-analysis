package com.google.android.gms.internal.ads;

import java.math.BigInteger;
/* renamed from: com.google.android.gms.internal.ads.yn */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/yn.class */
public final class C13074yn {

    /* renamed from: a */
    private BigInteger f50085a = BigInteger.ONE;

    /* renamed from: b */
    private String f50086b = "0";

    /* renamed from: a */
    public final String m13957a() {
        String bigInteger;
        synchronized (this) {
            bigInteger = this.f50085a.toString();
            this.f50085a = this.f50085a.add(BigInteger.ONE);
            this.f50086b = bigInteger;
        }
        return bigInteger;
    }

    /* renamed from: b */
    public final String m13956b() {
        String str;
        synchronized (this) {
            str = this.f50086b;
        }
        return str;
    }
}
