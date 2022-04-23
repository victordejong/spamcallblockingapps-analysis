package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dyz.class */
final class dyz implements dyu {

    /* renamed from: a  reason: collision with root package name */
    private final ecy f27439a;

    /* renamed from: b  reason: collision with root package name */
    private final int f27440b;

    /* renamed from: c  reason: collision with root package name */
    private final int f27441c;

    /* renamed from: d  reason: collision with root package name */
    private int f27442d;
    private int e;

    public dyz(dyt dytVar) {
        ecy ecyVar = dytVar.f27424a;
        this.f27439a = ecyVar;
        ecyVar.c(12);
        this.f27441c = ecyVar.i() & 255;
        this.f27440b = ecyVar.i();
    }

    @Override // com.google.android.gms.internal.ads.dyu
    public final int a() {
        return this.f27440b;
    }

    @Override // com.google.android.gms.internal.ads.dyu
    public final int b() {
        int i = this.f27441c;
        if (i == 8) {
            return this.f27439a.d();
        }
        if (i == 16) {
            return this.f27439a.e();
        }
        int i2 = this.f27442d;
        this.f27442d = i2 + 1;
        if (i2 % 2 != 0) {
            return this.e & 15;
        }
        int d2 = this.f27439a.d();
        this.e = d2;
        return (d2 & 240) >> 4;
    }

    @Override // com.google.android.gms.internal.ads.dyu
    public final boolean c() {
        return false;
    }
}
