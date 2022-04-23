package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apk.class */
public final class apk implements dsi<ayi<atb>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<ajk> f23709a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f23710b;

    private apk(dsv<ajk> dsvVar, dsv<Executor> dsvVar2) {
        this.f23709a = dsvVar;
        this.f23710b = dsvVar2;
    }

    public static apk a(dsv<ajk> dsvVar, dsv<Executor> dsvVar2) {
        return new apk(dsvVar, dsvVar2);
    }

    public static ayi<atb> a(ajk ajkVar, Executor executor) {
        return (ayi) dso.b(new ayi(ajkVar, executor));
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return a(this.f23709a.a(), this.f23710b.a());
    }
}
