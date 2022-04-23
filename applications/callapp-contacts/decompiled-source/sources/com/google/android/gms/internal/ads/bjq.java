package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bjq.class */
public final class bjq implements dsi<ayi<eir>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bjz> f24562a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f24563b;

    private bjq(dsv<bjz> dsvVar, dsv<Executor> dsvVar2) {
        this.f24562a = dsvVar;
        this.f24563b = dsvVar2;
    }

    public static bjq a(dsv<bjz> dsvVar, dsv<Executor> dsvVar2) {
        return new bjq(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f24562a.a(), this.f24563b.a()));
    }
}
