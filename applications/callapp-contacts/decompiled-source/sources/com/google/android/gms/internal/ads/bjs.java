package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bjs.class */
public final class bjs implements dsi<ayi<ash>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bjz> f24566a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f24567b;

    private bjs(dsv<bjz> dsvVar, dsv<Executor> dsvVar2) {
        this.f24566a = dsvVar;
        this.f24567b = dsvVar2;
    }

    public static bjs a(dsv<bjz> dsvVar, dsv<Executor> dsvVar2) {
        return new bjs(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f24566a.a(), this.f24567b.a()));
    }
}
