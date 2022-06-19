package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqq.class */
public final class bqq implements dsi<ayi<cto>> {

    /* renamed from: a */
    private final dsv<brc> f44508a;

    /* renamed from: b */
    private final dsv<Executor> f44509b;

    private bqq(dsv<brc> dsvVar, dsv<Executor> dsvVar2) {
        this.f44508a = dsvVar;
        this.f44509b = dsvVar2;
    }

    /* renamed from: a */
    public static bqq m17667a(dsv<brc> dsvVar, dsv<Executor> dsvVar2) {
        return new bqq(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f44508a.mo14005a(), this.f44509b.mo14005a()));
    }
}
