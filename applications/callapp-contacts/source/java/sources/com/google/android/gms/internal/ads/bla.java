package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bla.class */
public final class bla implements dsi<ayi<cto>> {

    /* renamed from: a */
    private final dsv<blm> f44179a;

    /* renamed from: b */
    private final dsv<Executor> f44180b;

    /* renamed from: c */
    private final dsv<bqn> f44181c;

    private bla(dsv<blm> dsvVar, dsv<Executor> dsvVar2, dsv<bqn> dsvVar3) {
        this.f44179a = dsvVar;
        this.f44180b = dsvVar2;
        this.f44181c = dsvVar3;
    }

    /* renamed from: a */
    public static bla m17775a(dsv<blm> dsvVar, dsv<Executor> dsvVar2, dsv<bqn> dsvVar3) {
        return new bla(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        blm mo14005a = this.f44179a.mo14005a();
        Executor mo14005a2 = this.f44180b.mo14005a();
        return (ayi) dso.m15764b(((Boolean) ekb.m14831e().m18571a(C12187aq.f42933fe)).booleanValue() ? new ayi(this.f44181c.mo14005a(), mo14005a2) : new ayi(mo14005a, mo14005a2));
    }
}
