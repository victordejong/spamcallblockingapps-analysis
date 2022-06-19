package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dnf.class */
public final class dnf implements dnm {

    /* renamed from: a */
    private final int f14890a;

    /* renamed from: b */
    private final int[] f14891b;

    /* renamed from: c */
    private final long[] f14892c;

    /* renamed from: d */
    private final long[] f14893d;

    /* renamed from: e */
    private final long[] f14894e;

    /* renamed from: f */
    private final long f14895f;

    public dnf(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f14891b = iArr;
        this.f14892c = jArr;
        this.f14893d = jArr2;
        this.f14894e = jArr3;
        this.f14890a = iArr.length;
        if (this.f14890a > 0) {
            this.f14895f = jArr2[this.f14890a - 1] + jArr3[this.f14890a - 1];
        } else {
            this.f14895f = 0L;
        }
    }

    @Override // com.google.android.gms.internal.ads.dnm
    /* renamed from: a */
    public final long mo8988a(long j) {
        return this.f14892c[dsn.m8701a(this.f14894e, j, true, true)];
    }

    @Override // com.google.android.gms.internal.ads.dnm
    /* renamed from: a */
    public final boolean mo8989a() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dnm
    /* renamed from: b */
    public final long mo8983b() {
        return this.f14895f;
    }
}
