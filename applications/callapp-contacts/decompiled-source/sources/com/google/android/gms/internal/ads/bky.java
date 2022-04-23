package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bky.class */
public final class bky implements dsi<ayi<arp>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bkx> f24615a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f24616b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bqg> f24617c;

    private bky(dsv<bkx> dsvVar, dsv<Executor> dsvVar2, dsv<bqg> dsvVar3) {
        this.f24615a = dsvVar;
        this.f24616b = dsvVar2;
        this.f24617c = dsvVar3;
    }

    public static bky a(dsv<bkx> dsvVar, dsv<Executor> dsvVar2, dsv<bqg> dsvVar3) {
        return new bky(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        bkx a2 = this.f24615a.a();
        Executor a3 = this.f24616b.a();
        return (ayi) dso.b(((Boolean) ekb.e().a(aq.fe)).booleanValue() ? new ayi(this.f24617c.a(), a3) : new ayi(a2, a3));
    }
}
