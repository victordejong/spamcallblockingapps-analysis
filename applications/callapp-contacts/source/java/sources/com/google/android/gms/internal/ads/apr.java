package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apr.class */
public final class apr implements dsi<ayi<aro>> {

    /* renamed from: a */
    private final dsv<aue> f42591a;

    /* renamed from: b */
    private final dsv<Executor> f42592b;

    private apr(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        this.f42591a = dsvVar;
        this.f42592b = dsvVar2;
    }

    /* renamed from: a */
    public static apr m18484a(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        return new apr(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f42591a.mo14005a(), this.f42592b.mo14005a()));
    }
}
