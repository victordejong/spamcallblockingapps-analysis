package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/api.class */
public final class api implements dsi<ayi<asd>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<ajk> f23705a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f23706b;

    private api(dsv<ajk> dsvVar, dsv<Executor> dsvVar2) {
        this.f23705a = dsvVar;
        this.f23706b = dsvVar2;
    }

    public static api a(dsv<ajk> dsvVar, dsv<Executor> dsvVar2) {
        return new api(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f23705a.a(), this.f23706b.a()));
    }
}
