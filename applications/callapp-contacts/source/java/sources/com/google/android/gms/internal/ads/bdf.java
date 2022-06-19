package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bdf.class */
public final class bdf implements dsi<ayi<atu>> {

    /* renamed from: a */
    private final dsv<bzx> f43624a;

    /* renamed from: b */
    private final dsv<Executor> f43625b;

    private bdf(dsv<bzx> dsvVar, dsv<Executor> dsvVar2) {
        this.f43624a = dsvVar;
        this.f43625b = dsvVar2;
    }

    /* renamed from: a */
    public static bdf m18132a(dsv<bzx> dsvVar, dsv<Executor> dsvVar2) {
        return new bdf(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f43624a.mo14005a(), this.f43625b.mo14005a()));
    }
}
