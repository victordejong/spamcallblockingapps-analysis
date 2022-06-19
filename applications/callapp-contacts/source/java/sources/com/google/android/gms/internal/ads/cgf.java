package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cgf.class */
public final class cgf implements dsi<cgc> {

    /* renamed from: a */
    private final dsv<dbs> f45715a;

    /* renamed from: b */
    private final dsv<ScheduledExecutorService> f45716b;

    /* renamed from: c */
    private final dsv<String> f45717c;

    /* renamed from: d */
    private final dsv<byp> f45718d;

    /* renamed from: e */
    private final dsv<Context> f45719e;

    /* renamed from: f */
    private final dsv<cpo> f45720f;

    /* renamed from: g */
    private final dsv<bym> f45721g;

    private cgf(dsv<dbs> dsvVar, dsv<ScheduledExecutorService> dsvVar2, dsv<String> dsvVar3, dsv<byp> dsvVar4, dsv<Context> dsvVar5, dsv<cpo> dsvVar6, dsv<bym> dsvVar7) {
        this.f45715a = dsvVar;
        this.f45716b = dsvVar2;
        this.f45717c = dsvVar3;
        this.f45718d = dsvVar4;
        this.f45719e = dsvVar5;
        this.f45720f = dsvVar6;
        this.f45721g = dsvVar7;
    }

    /* renamed from: a */
    public static cgf m17471a(dsv<dbs> dsvVar, dsv<ScheduledExecutorService> dsvVar2, dsv<String> dsvVar3, dsv<byp> dsvVar4, dsv<Context> dsvVar5, dsv<cpo> dsvVar6, dsv<bym> dsvVar7) {
        return new cgf(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5, dsvVar6, dsvVar7);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new cgc(this.f45715a.mo14005a(), this.f45716b.mo14005a(), this.f45717c.mo14005a(), this.f45718d.mo14005a(), this.f45719e.mo14005a(), this.f45720f.mo14005a(), this.f45721g.mo14005a());
    }
}
