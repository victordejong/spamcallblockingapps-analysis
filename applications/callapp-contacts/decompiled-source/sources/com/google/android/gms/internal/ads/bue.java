package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bue.class */
public final class bue implements dsi<bua> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<amn> f25116a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<btd> f25117b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<arn> f25118c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<ScheduledExecutorService> f25119d;
    private final dsv<dbs> e;

    public bue(dsv<amn> dsvVar, dsv<btd> dsvVar2, dsv<arn> dsvVar3, dsv<ScheduledExecutorService> dsvVar4, dsv<dbs> dsvVar5) {
        this.f25116a = dsvVar;
        this.f25117b = dsvVar2;
        this.f25118c = dsvVar3;
        this.f25119d = dsvVar4;
        this.e = dsvVar5;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bua(this.f25116a.a(), this.f25117b.a(), this.f25118c.a(), this.f25119d.a(), this.e.a());
    }
}
