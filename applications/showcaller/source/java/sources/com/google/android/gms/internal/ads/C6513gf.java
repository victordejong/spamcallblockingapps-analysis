package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.gf */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gf.class */
final class C6513gf {

    /* renamed from: a */
    public final int f23316a;

    /* renamed from: b */
    public final long[] f23317b;

    /* renamed from: c */
    public final int[] f23318c;

    /* renamed from: d */
    public final int f23319d;

    /* renamed from: e */
    public final long[] f23320e;

    /* renamed from: f */
    public final int[] f23321f;

    public C6513gf(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2) {
        int length = jArr2.length;
        C6367ci.m16042a(iArr.length == length);
        int length2 = jArr.length;
        C6367ci.m16042a(length2 == length);
        C6367ci.m16042a(iArr2.length == length);
        this.f23317b = jArr;
        this.f23318c = iArr;
        this.f23319d = i;
        this.f23320e = jArr2;
        this.f23321f = iArr2;
        this.f23316a = length2;
    }

    /* renamed from: a */
    public final int m14957a(long j) {
        for (int m11014h = C6961si.m11014h(this.f23320e, j, true, false); m11014h >= 0; m11014h--) {
            if ((this.f23321f[m11014h] & 1) != 0) {
                return m11014h;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public final int m14956b(long j) {
        for (int m11013i = C6961si.m11013i(this.f23320e, j, true, false); m11013i < this.f23320e.length; m11013i++) {
            if ((this.f23321f[m11013i] & 1) != 0) {
                return m11013i;
            }
        }
        return -1;
    }
}
