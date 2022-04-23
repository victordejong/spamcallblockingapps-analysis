package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqo.class */
public final class bqo implements dsi<ayi<arp>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bqz> f24901a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f24902b;

    private bqo(dsv<bqz> dsvVar, dsv<Executor> dsvVar2) {
        this.f24901a = dsvVar;
        this.f24902b = dsvVar2;
    }

    public static bqo a(dsv<bqz> dsvVar, dsv<Executor> dsvVar2) {
        return new bqo(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f24901a.a(), this.f24902b.a()));
    }
}
