package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dxs.class */
public final class dxs implements dya {

    /* renamed from: a  reason: collision with root package name */
    private final int f27382a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f27383b;

    /* renamed from: c  reason: collision with root package name */
    private final long[] f27384c;

    /* renamed from: d  reason: collision with root package name */
    private final long[] f27385d;
    private final long[] e;
    private final long f;

    public dxs(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f27383b = iArr;
        this.f27384c = jArr;
        this.f27385d = jArr2;
        this.e = jArr3;
        int length = iArr.length;
        this.f27382a = length;
        if (length > 0) {
            this.f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f = 0L;
        }
    }

    @Override // com.google.android.gms.internal.ads.dya
    public final long a(long j) {
        return this.f27384c[ede.a(this.e, j, true)];
    }

    @Override // com.google.android.gms.internal.ads.dya
    public final boolean a() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dya
    public final long b() {
        return this.f;
    }
}
