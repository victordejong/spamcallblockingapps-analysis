package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqq.class */
public final class bqq implements dsi<ayi<cto>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<brc> f24905a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f24906b;

    private bqq(dsv<brc> dsvVar, dsv<Executor> dsvVar2) {
        this.f24905a = dsvVar;
        this.f24906b = dsvVar2;
    }

    public static bqq a(dsv<brc> dsvVar, dsv<Executor> dsvVar2) {
        return new bqq(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f24905a.a(), this.f24906b.a()));
    }
}
