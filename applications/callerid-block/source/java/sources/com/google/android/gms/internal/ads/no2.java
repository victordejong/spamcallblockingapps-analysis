package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/no2.class */
final class no2 {

    /* renamed from: a */
    public final int f7771a;

    /* renamed from: b */
    public final long[] f7772b;

    /* renamed from: c */
    public final int[] f7773c;

    /* renamed from: d */
    public final int f7774d;

    /* renamed from: e */
    public final long[] f7775e;

    /* renamed from: f */
    public final int[] f7776f;

    public no2(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2) {
        int length = jArr2.length;
        jr2.m6926a(iArr.length == length);
        int length2 = jArr.length;
        jr2.m6926a(length2 == length);
        jr2.m6926a(iArr2.length == length);
        this.f7772b = jArr;
        this.f7773c = iArr;
        this.f7774d = i;
        this.f7775e = jArr2;
        this.f7776f = iArr2;
        this.f7771a = length2;
    }

    /* renamed from: a */
    public final int m6410a(long j) {
        for (int m4527h = zr2.m4527h(this.f7775e, j, true, false); m4527h >= 0; m4527h--) {
            if ((this.f7776f[m4527h] & 1) != 0) {
                return m4527h;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public final int m6409b(long j) {
        for (int m4526i = zr2.m4526i(this.f7775e, j, true, false); m4526i < this.f7775e.length; m4526i++) {
            if ((this.f7776f[m4526i] & 1) != 0) {
                return m4526i;
            }
        }
        return -1;
    }
}
