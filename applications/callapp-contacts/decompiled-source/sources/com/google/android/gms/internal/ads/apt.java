package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apt.class */
public final class apt implements dsi<ayi<asd>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<aue> f23724a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f23725b;

    private apt(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        this.f23724a = dsvVar;
        this.f23725b = dsvVar2;
    }

    public static apt a(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        return new apt(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f23724a.a(), this.f23725b.a()));
    }
}
