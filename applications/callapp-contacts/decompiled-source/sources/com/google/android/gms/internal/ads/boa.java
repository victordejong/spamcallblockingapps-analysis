package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/boa.class */
public final class boa implements dsi<bnw> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<cpo> f24782a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bmw> f24783b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<dbs> f24784c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<ScheduledExecutorService> f24785d;
    private final dsv<brb> e;

    private boa(dsv<cpo> dsvVar, dsv<bmw> dsvVar2, dsv<dbs> dsvVar3, dsv<ScheduledExecutorService> dsvVar4, dsv<brb> dsvVar5) {
        this.f24782a = dsvVar;
        this.f24783b = dsvVar2;
        this.f24784c = dsvVar3;
        this.f24785d = dsvVar4;
        this.e = dsvVar5;
    }

    public static boa a(dsv<cpo> dsvVar, dsv<bmw> dsvVar2, dsv<dbs> dsvVar3, dsv<ScheduledExecutorService> dsvVar4, dsv<brb> dsvVar5) {
        return new boa(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bnw(this.f24782a.a(), this.f24783b.a(), this.f24784c.a(), this.f24785d.a(), this.e.a());
    }
}
