package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bue.class */
public final class bue implements dsi<bua> {

    /* renamed from: a */
    private final dsv<amn> f44758a;

    /* renamed from: b */
    private final dsv<btd> f44759b;

    /* renamed from: c */
    private final dsv<arn> f44760c;

    /* renamed from: d */
    private final dsv<ScheduledExecutorService> f44761d;

    /* renamed from: e */
    private final dsv<dbs> f44762e;

    public bue(dsv<amn> dsvVar, dsv<btd> dsvVar2, dsv<arn> dsvVar3, dsv<ScheduledExecutorService> dsvVar4, dsv<dbs> dsvVar5) {
        this.f44758a = dsvVar;
        this.f44759b = dsvVar2;
        this.f44760c = dsvVar3;
        this.f44761d = dsvVar4;
        this.f44762e = dsvVar5;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bua(this.f44758a.mo14005a(), this.f44759b.mo14005a(), this.f44760c.mo14005a(), this.f44761d.mo14005a(), this.f44762e.mo14005a());
    }
}
