package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.internal.ads.up */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/up.class */
public final class C3551up {
    @GuardedBy("this")

    /* renamed from: a */
    private BigInteger f17451a = BigInteger.ONE;
    @GuardedBy("this")

    /* renamed from: b */
    private String f17452b = "0";

    /* renamed from: a */
    public final String m7066a() {
        String bigInteger;
        synchronized (this) {
            bigInteger = this.f17451a.toString();
            this.f17451a = this.f17451a.add(BigInteger.ONE);
            this.f17452b = bigInteger;
        }
        return bigInteger;
    }

    /* renamed from: b */
    public final String m7065b() {
        String str;
        synchronized (this) {
            str = this.f17452b;
        }
        return str;
    }
}
