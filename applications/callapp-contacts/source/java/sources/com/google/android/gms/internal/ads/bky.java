package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bky.class */
public final class bky implements dsi<ayi<arp>> {

    /* renamed from: a */
    private final dsv<bkx> f44173a;

    /* renamed from: b */
    private final dsv<Executor> f44174b;

    /* renamed from: c */
    private final dsv<bqg> f44175c;

    private bky(dsv<bkx> dsvVar, dsv<Executor> dsvVar2, dsv<bqg> dsvVar3) {
        this.f44173a = dsvVar;
        this.f44174b = dsvVar2;
        this.f44175c = dsvVar3;
    }

    /* renamed from: a */
    public static bky m17777a(dsv<bkx> dsvVar, dsv<Executor> dsvVar2, dsv<bqg> dsvVar3) {
        return new bky(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        bkx mo14005a = this.f44173a.mo14005a();
        Executor mo14005a2 = this.f44174b.mo14005a();
        return (ayi) dso.m15764b(((Boolean) ekb.m14831e().m18571a(C12187aq.f42933fe)).booleanValue() ? new ayi(this.f44175c.mo14005a(), mo14005a2) : new ayi(mo14005a, mo14005a2));
    }
}
