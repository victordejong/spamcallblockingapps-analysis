package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cub.class */
public final class cub implements dsi<cty> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<cuf> f26400a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<cuo> f26401b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<ScheduledExecutorService> f26402c;

    public cub(dsv<cuf> dsvVar, dsv<cuo> dsvVar2, dsv<ScheduledExecutorService> dsvVar3) {
        this.f26400a = dsvVar;
        this.f26401b = dsvVar2;
        this.f26402c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        dsb b2 = dsj.b(this.f26400a);
        dsb b3 = dsj.b(this.f26401b);
        return (cty) dso.b(((Boolean) ekb.e().a(aq.ff)).booleanValue() ? new cua((cty) b2.a(), this.f26402c.a()) : (cty) b3.a());
    }
}
