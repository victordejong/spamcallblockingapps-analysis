package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apu.class */
public final class apu implements dsi<ayi<art>> {

    /* renamed from: a */
    private final dsv<bkv> f42597a;

    /* renamed from: b */
    private final dsv<Executor> f42598b;

    /* renamed from: c */
    private final dsv<bqe> f42599c;

    private apu(dsv<bkv> dsvVar, dsv<Executor> dsvVar2, dsv<bqe> dsvVar3) {
        this.f42597a = dsvVar;
        this.f42598b = dsvVar2;
        this.f42599c = dsvVar3;
    }

    /* renamed from: a */
    public static apu m18481a(dsv<bkv> dsvVar, dsv<Executor> dsvVar2, dsv<bqe> dsvVar3) {
        return new apu(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        bkv mo14005a = this.f42597a.mo14005a();
        Executor mo14005a2 = this.f42598b.mo14005a();
        return (ayi) dso.m15764b(((Boolean) ekb.m14831e().m18571a(C12187aq.f42933fe)).booleanValue() ? new ayi(this.f42599c.mo14005a(), mo14005a2) : new ayi(mo14005a, mo14005a2));
    }
}
