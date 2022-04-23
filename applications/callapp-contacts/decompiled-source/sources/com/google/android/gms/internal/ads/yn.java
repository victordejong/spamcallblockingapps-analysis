package com.google.android.gms.internal.ads;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/yn.class */
public final class yn {

    /* renamed from: a  reason: collision with root package name */
    private BigInteger f28549a = BigInteger.ONE;

    /* renamed from: b  reason: collision with root package name */
    private String f28550b = "0";

    public final String a() {
        String bigInteger;
        synchronized (this) {
            bigInteger = this.f28549a.toString();
            this.f28549a = this.f28549a.add(BigInteger.ONE);
            this.f28550b = bigInteger;
        }
        return bigInteger;
    }

    public final String b() {
        String str;
        synchronized (this) {
            str = this.f28550b;
        }
        return str;
    }
}
