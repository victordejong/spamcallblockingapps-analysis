package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqc.class */
public final class aqc implements dsi<ayi<eir>> {

    /* renamed from: a */
    private final dsv<bkv> f43006a;

    /* renamed from: b */
    private final dsv<Executor> f43007b;

    /* renamed from: c */
    private final dsv<bqe> f43008c;

    private aqc(dsv<bkv> dsvVar, dsv<Executor> dsvVar2, dsv<bqe> dsvVar3) {
        this.f43006a = dsvVar;
        this.f43007b = dsvVar2;
        this.f43008c = dsvVar3;
    }

    /* renamed from: a */
    public static aqc m18468a(dsv<bkv> dsvVar, dsv<Executor> dsvVar2, dsv<bqe> dsvVar3) {
        return new aqc(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        bkv mo14005a = this.f43006a.mo14005a();
        Executor mo14005a2 = this.f43007b.mo14005a();
        return (ayi) dso.m15764b(((Boolean) ekb.m14831e().m18571a(C12187aq.f42933fe)).booleanValue() ? new ayi(this.f43008c.mo14005a(), mo14005a2) : new ayi(mo14005a, mo14005a2));
    }
}
