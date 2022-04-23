package com.google.android.gms.internal.ads;

import java.math.BigInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayg.class */
public final class zzayg {

    /* renamed from: a */
    public BigInteger f24632a = BigInteger.ONE;

    /* renamed from: b */
    public String f24633b = "0";

    /* renamed from: a */
    public final String m16167a() {
        String bigInteger;
        synchronized (this) {
            bigInteger = this.f24632a.toString();
            this.f24632a = this.f24632a.add(BigInteger.ONE);
            this.f24633b = bigInteger;
        }
        return bigInteger;
    }

    /* renamed from: b */
    public final String m16166b() {
        String str;
        synchronized (this) {
            str = this.f24633b;
        }
        return str;
    }
}
