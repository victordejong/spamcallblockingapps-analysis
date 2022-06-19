package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bjr.class */
public final class bjr implements dsi<ayi<awi>> {

    /* renamed from: a */
    private final dsv<bjz> f44116a;

    /* renamed from: b */
    private final dsv<Executor> f44117b;

    private bjr(dsv<bjz> dsvVar, dsv<Executor> dsvVar2) {
        this.f44116a = dsvVar;
        this.f44117b = dsvVar2;
    }

    /* renamed from: a */
    public static bjr m17802a(dsv<bjz> dsvVar, dsv<Executor> dsvVar2) {
        return new bjr(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f44116a.mo14005a(), this.f44117b.mo14005a()));
    }
}
