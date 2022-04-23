package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aoo.class */
public final class aoo implements dsi<ayi<atk>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<att> f23670a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f23671b;

    private aoo(dsv<att> dsvVar, dsv<Executor> dsvVar2) {
        this.f23670a = dsvVar;
        this.f23671b = dsvVar2;
    }

    public static aoo a(dsv<att> dsvVar, dsv<Executor> dsvVar2) {
        return new aoo(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f23670a.a(), this.f23671b.a()));
    }
}
