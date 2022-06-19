package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bnx.class */
public final class bnx implements dsi<bnv> {

    /* renamed from: a */
    private final dsv<ScheduledExecutorService> f44360a;

    /* renamed from: b */
    private final dsv<dbs> f44361b;

    /* renamed from: c */
    private final dsv<bom> f44362c;

    /* renamed from: d */
    private final dsv<bpk> f44363d;

    public bnx(dsv<ScheduledExecutorService> dsvVar, dsv<dbs> dsvVar2, dsv<bom> dsvVar3, dsv<bpk> dsvVar4) {
        this.f44360a = dsvVar;
        this.f44361b = dsvVar2;
        this.f44362c = dsvVar3;
        this.f44363d = dsvVar4;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bnv(this.f44360a.mo14005a(), this.f44361b.mo14005a(), this.f44362c.mo14005a(), dsj.m15773b(this.f44363d));
    }
}
