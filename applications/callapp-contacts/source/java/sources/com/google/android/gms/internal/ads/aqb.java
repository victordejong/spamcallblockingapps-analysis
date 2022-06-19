package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqb.class */
public final class aqb implements dsi<ayi<ash>> {

    /* renamed from: a */
    private final dsv<bkv> f43003a;

    /* renamed from: b */
    private final dsv<Executor> f43004b;

    /* renamed from: c */
    private final dsv<bqe> f43005c;

    private aqb(dsv<bkv> dsvVar, dsv<Executor> dsvVar2, dsv<bqe> dsvVar3) {
        this.f43003a = dsvVar;
        this.f43004b = dsvVar2;
        this.f43005c = dsvVar3;
    }

    /* renamed from: a */
    public static aqb m18469a(dsv<bkv> dsvVar, dsv<Executor> dsvVar2, dsv<bqe> dsvVar3) {
        return new aqb(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        bkv mo14005a = this.f43003a.mo14005a();
        Executor mo14005a2 = this.f43004b.mo14005a();
        return (ayi) dso.m15764b(((Boolean) ekb.m14831e().m18571a(C12187aq.f42933fe)).booleanValue() ? new ayi(this.f43005c.mo14005a(), mo14005a2) : new ayi(mo14005a, mo14005a2));
    }
}
