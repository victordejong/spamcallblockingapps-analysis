package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/blb.class */
public final class blb implements dsi<ayi<atb>> {

    /* renamed from: a */
    private final dsv<bkx> f44182a;

    /* renamed from: b */
    private final dsv<Executor> f44183b;

    /* renamed from: c */
    private final dsv<bqg> f44184c;

    private blb(dsv<bkx> dsvVar, dsv<Executor> dsvVar2, dsv<bqg> dsvVar3) {
        this.f44182a = dsvVar;
        this.f44183b = dsvVar2;
        this.f44184c = dsvVar3;
    }

    /* renamed from: a */
    public static blb m17774a(dsv<bkx> dsvVar, dsv<Executor> dsvVar2, dsv<bqg> dsvVar3) {
        return new blb(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        bkx mo14005a = this.f44182a.mo14005a();
        Executor mo14005a2 = this.f44183b.mo14005a();
        return (ayi) dso.m15764b(((Boolean) ekb.m14831e().m18571a(C12187aq.f42933fe)).booleanValue() ? new ayi(this.f44184c.mo14005a(), mo14005a2) : new ayi(mo14005a, mo14005a2));
    }
}
