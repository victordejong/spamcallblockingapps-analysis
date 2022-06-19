package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cub.class */
public final class cub implements dsi<cty> {

    /* renamed from: a */
    private final dsv<cuf> f46549a;

    /* renamed from: b */
    private final dsv<cuo> f46550b;

    /* renamed from: c */
    private final dsv<ScheduledExecutorService> f46551c;

    public cub(dsv<cuf> dsvVar, dsv<cuo> dsvVar2, dsv<ScheduledExecutorService> dsvVar3) {
        this.f46549a = dsvVar;
        this.f46550b = dsvVar2;
        this.f46551c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        dsb m15773b = dsj.m15773b(this.f46549a);
        dsb m15773b2 = dsj.m15773b(this.f46550b);
        return (cty) dso.m15764b(((Boolean) ekb.m14831e().m18571a(C12187aq.f42934ff)).booleanValue() ? new cua((cty) m15773b.mo14005a(), this.f46551c.mo14005a()) : (cty) m15773b2.mo14005a());
    }
}
