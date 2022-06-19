package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/boa.class */
public final class boa implements dsi<bnw> {

    /* renamed from: a */
    private final dsv<cpo> f44366a;

    /* renamed from: b */
    private final dsv<bmw> f44367b;

    /* renamed from: c */
    private final dsv<dbs> f44368c;

    /* renamed from: d */
    private final dsv<ScheduledExecutorService> f44369d;

    /* renamed from: e */
    private final dsv<brb> f44370e;

    private boa(dsv<cpo> dsvVar, dsv<bmw> dsvVar2, dsv<dbs> dsvVar3, dsv<ScheduledExecutorService> dsvVar4, dsv<brb> dsvVar5) {
        this.f44366a = dsvVar;
        this.f44367b = dsvVar2;
        this.f44368c = dsvVar3;
        this.f44369d = dsvVar4;
        this.f44370e = dsvVar5;
    }

    /* renamed from: a */
    public static boa m17707a(dsv<cpo> dsvVar, dsv<bmw> dsvVar2, dsv<dbs> dsvVar3, dsv<ScheduledExecutorService> dsvVar4, dsv<brb> dsvVar5) {
        return new boa(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bnw(this.f44366a.mo14005a(), this.f44367b.mo14005a(), this.f44368c.mo14005a(), this.f44369d.mo14005a(), this.f44370e.mo14005a());
    }
}
