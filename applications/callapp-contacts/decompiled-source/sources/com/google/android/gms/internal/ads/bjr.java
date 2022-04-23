package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bjr.class */
public final class bjr implements dsi<ayi<awi>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bjz> f24564a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f24565b;

    private bjr(dsv<bjz> dsvVar, dsv<Executor> dsvVar2) {
        this.f24564a = dsvVar;
        this.f24565b = dsvVar2;
    }

    public static bjr a(dsv<bjz> dsvVar, dsv<Executor> dsvVar2) {
        return new bjr(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f24564a.a(), this.f24565b.a()));
    }
}
