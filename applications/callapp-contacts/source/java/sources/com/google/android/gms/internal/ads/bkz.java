package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bkz.class */
public final class bkz implements dsi<ayi<auf>> {

    /* renamed from: a */
    private final dsv<bkx> f44176a;

    /* renamed from: b */
    private final dsv<Executor> f44177b;

    /* renamed from: c */
    private final dsv<bqg> f44178c;

    private bkz(dsv<bkx> dsvVar, dsv<Executor> dsvVar2, dsv<bqg> dsvVar3) {
        this.f44176a = dsvVar;
        this.f44177b = dsvVar2;
        this.f44178c = dsvVar3;
    }

    /* renamed from: a */
    public static bkz m17776a(dsv<bkx> dsvVar, dsv<Executor> dsvVar2, dsv<bqg> dsvVar3) {
        return new bkz(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        bkx mo14005a = this.f44176a.mo14005a();
        Executor mo14005a2 = this.f44177b.mo14005a();
        return (ayi) dso.m15764b(((Boolean) ekb.m14831e().m18571a(C12187aq.f42933fe)).booleanValue() ? new ayi(this.f44178c.mo14005a(), mo14005a2) : new ayi(mo14005a, mo14005a2));
    }
}
