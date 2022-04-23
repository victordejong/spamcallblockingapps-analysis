package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bdf.class */
public final class bdf implements dsi<ayi<atu>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bzx> f24203a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f24204b;

    private bdf(dsv<bzx> dsvVar, dsv<Executor> dsvVar2) {
        this.f24203a = dsvVar;
        this.f24204b = dsvVar2;
    }

    public static bdf a(dsv<bzx> dsvVar, dsv<Executor> dsvVar2) {
        return new bdf(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f24203a.a(), this.f24204b.a()));
    }
}
