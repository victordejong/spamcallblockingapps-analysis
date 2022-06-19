package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/av3.class */
final class av3 {

    /* renamed from: a */
    public final xu3 f20142a;

    /* renamed from: b */
    public final int f20143b;

    /* renamed from: c */
    public final long[] f20144c;

    /* renamed from: d */
    public final int[] f20145d;

    /* renamed from: e */
    public final int f20146e;

    /* renamed from: f */
    public final long[] f20147f;

    /* renamed from: g */
    public final int[] f20148g;

    /* renamed from: h */
    public final long f20149h;

    public av3(xu3 xu3Var, long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
        int length = iArr.length;
        int length2 = jArr2.length;
        C7173y8.m8898a(length == length2);
        int length3 = jArr.length;
        C7173y8.m8898a(length3 == length2);
        int length4 = iArr2.length;
        C7173y8.m8898a(length4 == length2);
        this.f20142a = xu3Var;
        this.f20144c = jArr;
        this.f20145d = iArr;
        this.f20146e = i;
        this.f20147f = jArr2;
        this.f20148g = iArr2;
        this.f20149h = j;
        this.f20143b = length3;
        if (length4 > 0) {
            int i2 = length4 - 1;
            iArr2[i2] = iArr2[i2] | 536870912;
        }
    }

    /* renamed from: a */
    public final int m16478a(long j) {
        for (int m9695d = C7101wa.m9695d(this.f20147f, j, true, false); m9695d >= 0; m9695d--) {
            if ((this.f20148g[m9695d] & 1) != 0) {
                return m9695d;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public final int m16477b(long j) {
        for (int m9693e = C7101wa.m9693e(this.f20147f, j, true, false); m9693e < this.f20147f.length; m9693e++) {
            if ((this.f20148g[m9693e] & 1) != 0) {
                return m9693e;
            }
        }
        return -1;
    }
}
