package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apr.class */
public final class apr implements dsi<ayi<aro>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<aue> f23720a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f23721b;

    private apr(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        this.f23720a = dsvVar;
        this.f23721b = dsvVar2;
    }

    public static apr a(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        return new apr(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f23720a.a(), this.f23721b.a()));
    }
}
