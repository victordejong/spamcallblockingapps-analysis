package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dzo.class */
final class dzo {

    /* renamed from: a  reason: collision with root package name */
    public final int f27485a;

    /* renamed from: b  reason: collision with root package name */
    public final long[] f27486b;

    /* renamed from: c  reason: collision with root package name */
    public final int[] f27487c;

    /* renamed from: d  reason: collision with root package name */
    public final int f27488d;
    public final long[] e;
    public final int[] f;

    public dzo(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2) {
        boolean z = true;
        ecr.a(iArr.length == jArr2.length);
        ecr.a(jArr.length == jArr2.length);
        if (iArr2.length != jArr2.length) {
            z = false;
        }
        ecr.a(z);
        this.f27486b = jArr;
        this.f27487c = iArr;
        this.f27488d = i;
        this.e = jArr2;
        this.f = iArr2;
        this.f27485a = jArr.length;
    }

    public final int a(long j) {
        for (int a2 = ede.a(this.e, j, false); a2 >= 0; a2--) {
            if ((this.f[a2] & 1) != 0) {
                return a2;
            }
        }
        return -1;
    }

    public final int b(long j) {
        for (int a2 = ede.a(this.e, j, true, false); a2 < this.e.length; a2++) {
            if ((this.f[a2] & 1) != 0) {
                return a2;
            }
        }
        return -1;
    }
}
