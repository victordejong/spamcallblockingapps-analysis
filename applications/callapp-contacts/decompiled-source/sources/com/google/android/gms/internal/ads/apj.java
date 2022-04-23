package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apj.class */
public final class apj implements dsi<ayi<aro>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<ajk> f23707a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f23708b;

    private apj(dsv<ajk> dsvVar, dsv<Executor> dsvVar2) {
        this.f23707a = dsvVar;
        this.f23708b = dsvVar2;
    }

    public static apj a(dsv<ajk> dsvVar, dsv<Executor> dsvVar2) {
        return new apj(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f23707a.a(), this.f23708b.a()));
    }
}
