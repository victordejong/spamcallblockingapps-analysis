package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bgy.class */
public final class bgy implements apv, arg, ash {

    /* renamed from: a */
    private final bhg f11222a;

    /* renamed from: b */
    private final bho f11223b;

    public bgy(bhg bhgVar, bho bhoVar) {
        this.f11222a = bhgVar;
        this.f11223b = bhoVar;
    }

    @Override // com.google.android.gms.internal.ads.arg
    /* renamed from: a */
    public final void mo11427a() {
        this.f11222a.m11945a().put("action", "loaded");
        this.f11223b.m11923a(this.f11222a.m11945a());
    }

    @Override // com.google.android.gms.internal.ads.apv
    /* renamed from: a */
    public final void mo11258a(int i) {
        this.f11222a.m11945a().put("action", "ftl");
        this.f11222a.m11945a().put("ftl", String.valueOf(i));
        this.f11223b.m11923a(this.f11222a.m11945a());
    }

    @Override // com.google.android.gms.internal.ads.ash
    /* renamed from: a */
    public final void mo11830a(chd chdVar) {
        this.f11222a.m11943a(chdVar);
    }

    @Override // com.google.android.gms.internal.ads.ash
    /* renamed from: a */
    public final void mo11829a(C3423pw c3423pw) {
        this.f11222a.m11944a(c3423pw.f17198a);
    }
}
