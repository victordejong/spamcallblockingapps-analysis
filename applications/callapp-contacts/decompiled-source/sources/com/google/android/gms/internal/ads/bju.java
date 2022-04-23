package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bju.class */
public final class bju implements dsi<ayi<atb>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bjz> f24570a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f24571b;

    private bju(dsv<bjz> dsvVar, dsv<Executor> dsvVar2) {
        this.f24570a = dsvVar;
        this.f24571b = dsvVar2;
    }

    public static bju a(dsv<bjz> dsvVar, dsv<Executor> dsvVar2) {
        return new bju(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f24570a.a(), this.f24571b.a()));
    }
}
