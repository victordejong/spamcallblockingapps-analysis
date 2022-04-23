package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqr.class */
public final class bqr implements dsi<ayi<atb>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bqz> f24907a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f24908b;

    private bqr(dsv<bqz> dsvVar, dsv<Executor> dsvVar2) {
        this.f24907a = dsvVar;
        this.f24908b = dsvVar2;
    }

    public static bqr a(dsv<bqz> dsvVar, dsv<Executor> dsvVar2) {
        return new bqr(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f24907a.a(), this.f24908b.a()));
    }
}
