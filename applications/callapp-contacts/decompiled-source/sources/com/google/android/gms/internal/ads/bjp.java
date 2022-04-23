package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bjp.class */
public final class bjp implements dsi<ayi<arp>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bjz> f24560a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f24561b;

    private bjp(dsv<bjz> dsvVar, dsv<Executor> dsvVar2) {
        this.f24560a = dsvVar;
        this.f24561b = dsvVar2;
    }

    public static bjp a(dsv<bjz> dsvVar, dsv<Executor> dsvVar2) {
        return new bjp(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f24560a.a(), this.f24561b.a()));
    }
}
