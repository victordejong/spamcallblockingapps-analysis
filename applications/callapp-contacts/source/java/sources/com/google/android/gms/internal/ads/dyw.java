package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dyw.class */
final class dyw implements dyu {

    /* renamed from: a */
    private final int f48226a;

    /* renamed from: b */
    private final int f48227b;

    /* renamed from: c */
    private final ecy f48228c;

    public dyw(dyt dytVar) {
        ecy ecyVar = dytVar.f48216a;
        this.f48228c = ecyVar;
        ecyVar.m15226c(12);
        this.f48226a = ecyVar.m15218i();
        this.f48227b = ecyVar.m15218i();
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: a */
    public final int mo15441a() {
        return this.f48227b;
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: b */
    public final int mo15440b() {
        int i = this.f48226a;
        int i2 = i;
        if (i == 0) {
            i2 = this.f48228c.m15218i();
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: c */
    public final boolean mo15439c() {
        return this.f48226a != 0;
    }
}
