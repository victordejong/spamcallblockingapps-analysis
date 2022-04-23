package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cgf.class */
public final class cgf implements dsi<cgc> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<dbs> f25776a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<ScheduledExecutorService> f25777b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<String> f25778c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<byp> f25779d;
    private final dsv<Context> e;
    private final dsv<cpo> f;
    private final dsv<bym> g;

    private cgf(dsv<dbs> dsvVar, dsv<ScheduledExecutorService> dsvVar2, dsv<String> dsvVar3, dsv<byp> dsvVar4, dsv<Context> dsvVar5, dsv<cpo> dsvVar6, dsv<bym> dsvVar7) {
        this.f25776a = dsvVar;
        this.f25777b = dsvVar2;
        this.f25778c = dsvVar3;
        this.f25779d = dsvVar4;
        this.e = dsvVar5;
        this.f = dsvVar6;
        this.g = dsvVar7;
    }

    public static cgf a(dsv<dbs> dsvVar, dsv<ScheduledExecutorService> dsvVar2, dsv<String> dsvVar3, dsv<byp> dsvVar4, dsv<Context> dsvVar5, dsv<cpo> dsvVar6, dsv<bym> dsvVar7) {
        return new cgf(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5, dsvVar6, dsvVar7);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new cgc(this.f25776a.a(), this.f25777b.a(), this.f25778c.a(), this.f25779d.a(), this.e.a(), this.f.a(), this.g.a());
    }
}
