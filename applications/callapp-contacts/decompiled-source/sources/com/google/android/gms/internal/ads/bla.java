package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bla.class */
public final class bla implements dsi<ayi<cto>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<blm> f24621a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f24622b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bqn> f24623c;

    private bla(dsv<blm> dsvVar, dsv<Executor> dsvVar2, dsv<bqn> dsvVar3) {
        this.f24621a = dsvVar;
        this.f24622b = dsvVar2;
        this.f24623c = dsvVar3;
    }

    public static bla a(dsv<blm> dsvVar, dsv<Executor> dsvVar2, dsv<bqn> dsvVar3) {
        return new bla(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        blm a2 = this.f24621a.a();
        Executor a3 = this.f24622b.a();
        return (ayi) dso.b(((Boolean) ekb.e().a(aq.fe)).booleanValue() ? new ayi(this.f24623c.a(), a3) : new ayi(a2, a3));
    }
}
