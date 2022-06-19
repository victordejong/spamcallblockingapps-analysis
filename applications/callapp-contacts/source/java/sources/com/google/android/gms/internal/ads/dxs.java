package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dxs.class */
public final class dxs implements dya {

    /* renamed from: a */
    private final int f47984a;

    /* renamed from: b */
    private final int[] f47985b;

    /* renamed from: c */
    private final long[] f47986c;

    /* renamed from: d */
    private final long[] f47987d;

    /* renamed from: e */
    private final long[] f47988e;

    /* renamed from: f */
    private final long f47989f;

    public dxs(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f47985b = iArr;
        this.f47986c = jArr;
        this.f47987d = jArr2;
        this.f47988e = jArr3;
        int length = iArr.length;
        this.f47984a = length;
        if (length > 0) {
            this.f47989f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f47989f = 0L;
        }
    }

    @Override // com.google.android.gms.internal.ads.dya
    /* renamed from: a */
    public final long mo15422a(long j) {
        return this.f47986c[ede.m15191a(this.f47988e, j, true)];
    }

    @Override // com.google.android.gms.internal.ads.dya
    /* renamed from: a */
    public final boolean mo15423a() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dya
    /* renamed from: b */
    public final long mo15417b() {
        return this.f47989f;
    }
}
