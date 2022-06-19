package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apz.class */
public final class apz implements dsi<ayi<avw>> {

    /* renamed from: a */
    private final dsv<bkv> f42608a;

    /* renamed from: b */
    private final dsv<Executor> f42609b;

    /* renamed from: c */
    private final dsv<bqe> f42610c;

    private apz(dsv<bkv> dsvVar, dsv<Executor> dsvVar2, dsv<bqe> dsvVar3) {
        this.f42608a = dsvVar;
        this.f42609b = dsvVar2;
        this.f42610c = dsvVar3;
    }

    /* renamed from: a */
    public static apz m18476a(dsv<bkv> dsvVar, dsv<Executor> dsvVar2, dsv<bqe> dsvVar3) {
        return new apz(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        bkv mo14005a = this.f42608a.mo14005a();
        Executor mo14005a2 = this.f42609b.mo14005a();
        return (ayi) dso.m15764b(((Boolean) ekb.m14831e().m18571a(C12187aq.f42933fe)).booleanValue() ? new ayi(this.f42610c.mo14005a(), mo14005a2) : new ayi(mo14005a, mo14005a2));
    }
}
