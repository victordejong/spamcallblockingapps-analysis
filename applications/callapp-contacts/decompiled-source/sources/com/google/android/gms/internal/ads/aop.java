package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aop.class */
public final class aop implements dsi<ayi<ash>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<att> f23672a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f23673b;

    private aop(dsv<att> dsvVar, dsv<Executor> dsvVar2) {
        this.f23672a = dsvVar;
        this.f23673b = dsvVar2;
    }

    public static aop a(dsv<att> dsvVar, dsv<Executor> dsvVar2) {
        return new aop(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f23672a.a(), this.f23673b.a()));
    }
}
