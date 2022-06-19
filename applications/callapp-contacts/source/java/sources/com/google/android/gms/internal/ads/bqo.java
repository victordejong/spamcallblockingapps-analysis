package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqo.class */
public final class bqo implements dsi<ayi<arp>> {

    /* renamed from: a */
    private final dsv<bqz> f44504a;

    /* renamed from: b */
    private final dsv<Executor> f44505b;

    private bqo(dsv<bqz> dsvVar, dsv<Executor> dsvVar2) {
        this.f44504a = dsvVar;
        this.f44505b = dsvVar2;
    }

    /* renamed from: a */
    public static bqo m17669a(dsv<bqz> dsvVar, dsv<Executor> dsvVar2) {
        return new bqo(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f44504a.mo14005a(), this.f44505b.mo14005a()));
    }
}
