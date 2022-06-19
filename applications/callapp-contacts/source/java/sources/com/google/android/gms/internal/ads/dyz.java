package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dyz.class */
final class dyz implements dyu {

    /* renamed from: a */
    private final ecy f48236a;

    /* renamed from: b */
    private final int f48237b;

    /* renamed from: c */
    private final int f48238c;

    /* renamed from: d */
    private int f48239d;

    /* renamed from: e */
    private int f48240e;

    public dyz(dyt dytVar) {
        ecy ecyVar = dytVar.f48216a;
        this.f48236a = ecyVar;
        ecyVar.m15226c(12);
        this.f48238c = ecyVar.m15218i() & 255;
        this.f48237b = ecyVar.m15218i();
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: a */
    public final int mo15441a() {
        return this.f48237b;
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: b */
    public final int mo15440b() {
        int i = this.f48238c;
        if (i == 8) {
            return this.f48236a.m15225d();
        }
        if (i == 16) {
            return this.f48236a.m15223e();
        }
        int i2 = this.f48239d;
        this.f48239d = i2 + 1;
        if (i2 % 2 != 0) {
            return this.f48240e & 15;
        }
        int m15225d = this.f48236a.m15225d();
        this.f48240e = m15225d;
        return (m15225d & 240) >> 4;
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: c */
    public final boolean mo15439c() {
        return false;
    }
}
