package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqn.class */
public final class aqn implements dsi<aqm> {

    /* renamed from: a */
    private final dsv<asc> f43038a;

    /* renamed from: b */
    private final dsv<cov> f43039b;

    /* renamed from: c */
    private final dsv<ScheduledExecutorService> f43040c;

    /* renamed from: d */
    private final dsv<Executor> f43041d;

    private aqn(dsv<asc> dsvVar, dsv<cov> dsvVar2, dsv<ScheduledExecutorService> dsvVar3, dsv<Executor> dsvVar4) {
        this.f43038a = dsvVar;
        this.f43039b = dsvVar2;
        this.f43040c = dsvVar3;
        this.f43041d = dsvVar4;
    }

    /* renamed from: a */
    public static aqn m18462a(dsv<asc> dsvVar, dsv<cov> dsvVar2, dsv<ScheduledExecutorService> dsvVar3, dsv<Executor> dsvVar4) {
        return new aqn(dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new aqm(this.f43038a.mo14005a(), this.f43039b.mo14005a(), this.f43040c.mo14005a(), this.f43041d.mo14005a());
    }
}
