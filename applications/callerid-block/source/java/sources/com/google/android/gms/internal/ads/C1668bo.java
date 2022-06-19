package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.internal.ads.bo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bo.class */
public final class C1668bo {
    @GuardedBy("this")

    /* renamed from: a */
    private BigInteger f6183a = BigInteger.ONE;
    @GuardedBy("this")

    /* renamed from: b */
    private String f6184b = "0";

    /* renamed from: a */
    public final String m7943a() {
        String bigInteger;
        synchronized (this) {
            bigInteger = this.f6183a.toString();
            this.f6183a = this.f6183a.add(BigInteger.ONE);
            this.f6184b = bigInteger;
        }
        return bigInteger;
    }

    /* renamed from: b */
    public final String m7942b() {
        String str;
        synchronized (this) {
            str = this.f6184b;
        }
        return str;
    }
}
