package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apk.class */
public final class apk implements dsi<ayi<atb>> {

    /* renamed from: a */
    private final dsv<ajk> f42577a;

    /* renamed from: b */
    private final dsv<Executor> f42578b;

    private apk(dsv<ajk> dsvVar, dsv<Executor> dsvVar2) {
        this.f42577a = dsvVar;
        this.f42578b = dsvVar2;
    }

    /* renamed from: a */
    public static apk m18488a(dsv<ajk> dsvVar, dsv<Executor> dsvVar2) {
        return new apk(dsvVar, dsvVar2);
    }

    /* renamed from: a */
    public static ayi<atb> m18489a(ajk ajkVar, Executor executor) {
        return (ayi) dso.m15764b(new ayi(ajkVar, executor));
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return m18489a(this.f42577a.mo14005a(), this.f42578b.mo14005a());
    }
}
