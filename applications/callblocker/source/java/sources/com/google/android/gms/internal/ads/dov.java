package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dov.class */
final class dov {

    /* renamed from: a */
    public final int f15217a;

    /* renamed from: b */
    public final long[] f15218b;

    /* renamed from: c */
    public final int[] f15219c;

    /* renamed from: d */
    public final int f15220d;

    /* renamed from: e */
    public final long[] f15221e;

    /* renamed from: f */
    public final int[] f15222f;

    public dov(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2) {
        drz.m8772a(iArr.length == jArr2.length);
        drz.m8772a(jArr.length == jArr2.length);
        drz.m8772a(iArr2.length == jArr2.length);
        this.f15218b = jArr;
        this.f15219c = iArr;
        this.f15220d = i;
        this.f15221e = jArr2;
        this.f15222f = iArr2;
        this.f15217a = jArr.length;
    }

    /* renamed from: a */
    public final int m8972a(long j) {
        int m8701a = dsn.m8701a(this.f15221e, j, true, false);
        while (true) {
            if (m8701a < 0) {
                m8701a = -1;
                break;
            } else if ((this.f15222f[m8701a] & 1) != 0) {
                break;
            } else {
                m8701a--;
            }
        }
        return m8701a;
    }

    /* renamed from: b */
    public final int m8971b(long j) {
        int m8696b = dsn.m8696b(this.f15221e, j, true, false);
        while (true) {
            if (m8696b >= this.f15221e.length) {
                m8696b = -1;
                break;
            } else if ((this.f15222f[m8696b] & 1) != 0) {
                break;
            } else {
                m8696b++;
            }
        }
        return m8696b;
    }
}
