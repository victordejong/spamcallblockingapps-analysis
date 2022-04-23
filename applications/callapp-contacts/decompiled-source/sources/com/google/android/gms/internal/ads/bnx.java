package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bnx.class */
public final class bnx implements dsi<bnv> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<ScheduledExecutorService> f24776a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<dbs> f24777b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bom> f24778c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<bpk> f24779d;

    public bnx(dsv<ScheduledExecutorService> dsvVar, dsv<dbs> dsvVar2, dsv<bom> dsvVar3, dsv<bpk> dsvVar4) {
        this.f24776a = dsvVar;
        this.f24777b = dsvVar2;
        this.f24778c = dsvVar3;
        this.f24779d = dsvVar4;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bnv(this.f24776a.a(), this.f24777b.a(), this.f24778c.a(), dsj.b(this.f24779d));
    }
}
