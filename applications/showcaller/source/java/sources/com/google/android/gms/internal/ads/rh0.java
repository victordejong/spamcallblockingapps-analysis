package com.google.android.gms.internal.ads;

import java.math.BigInteger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rh0.class */
public final class rh0 {

    /* renamed from: a */
    private BigInteger f28954a = BigInteger.ONE;

    /* renamed from: b */
    private String f28955b = "0";

    /* renamed from: a */
    public final String m11468a() {
        String bigInteger;
        synchronized (this) {
            bigInteger = this.f28954a.toString();
            this.f28954a = this.f28954a.add(BigInteger.ONE);
            this.f28955b = bigInteger;
        }
        return bigInteger;
    }

    /* renamed from: b */
    public final String m11467b() {
        String str;
        synchronized (this) {
            str = this.f28955b;
        }
        return str;
    }
}
