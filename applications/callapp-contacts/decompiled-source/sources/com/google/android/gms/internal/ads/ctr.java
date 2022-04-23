package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ctr.class */
public final class ctr implements dsi<cti> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<dbs> f26378a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<ScheduledExecutorService> f26379b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<ctl> f26380c;

    private ctr(dsv<dbs> dsvVar, dsv<ScheduledExecutorService> dsvVar2, dsv<ctl> dsvVar3) {
        this.f26378a = dsvVar;
        this.f26379b = dsvVar2;
        this.f26380c = dsvVar3;
    }

    public static ctr a(dsv<dbs> dsvVar, dsv<ScheduledExecutorService> dsvVar2, dsv<ctl> dsvVar3) {
        return new ctr(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new cti(this.f26378a.a(), this.f26379b.a(), this.f26380c.a());
    }
}
