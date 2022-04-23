package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bjt.class */
public final class bjt implements dsi<ayi<auf>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bjz> f24568a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f24569b;

    private bjt(dsv<bjz> dsvVar, dsv<Executor> dsvVar2) {
        this.f24568a = dsvVar;
        this.f24569b = dsvVar2;
    }

    public static bjt a(dsv<bjz> dsvVar, dsv<Executor> dsvVar2) {
        return new bjt(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f24568a.a(), this.f24569b.a()));
    }
}
