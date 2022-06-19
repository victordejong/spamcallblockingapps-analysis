package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dzo.class */
final class dzo {

    /* renamed from: a */
    public final int f48371a;

    /* renamed from: b */
    public final long[] f48372b;

    /* renamed from: c */
    public final int[] f48373c;

    /* renamed from: d */
    public final int f48374d;

    /* renamed from: e */
    public final long[] f48375e;

    /* renamed from: f */
    public final int[] f48376f;

    public dzo(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2) {
        ecr.m15249a(iArr.length == jArr2.length);
        ecr.m15249a(jArr.length == jArr2.length);
        ecr.m15249a(iArr2.length == jArr2.length);
        this.f48372b = jArr;
        this.f48373c = iArr;
        this.f48374d = i;
        this.f48375e = jArr2;
        this.f48376f = iArr2;
        this.f48371a = jArr.length;
    }

    /* renamed from: a */
    public final int m15411a(long j) {
        for (int m15191a = ede.m15191a(this.f48375e, j, false); m15191a >= 0; m15191a--) {
            if ((this.f48376f[m15191a] & 1) != 0) {
                return m15191a;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public final int m15410b(long j) {
        for (int m15190a = ede.m15190a(this.f48375e, j, true, false); m15190a < this.f48375e.length; m15190a++) {
            if ((this.f48376f[m15190a] & 1) != 0) {
                return m15190a;
            }
        }
        return -1;
    }
}
