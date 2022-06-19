package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.internal.ads.api */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/api.class */
public final class C12185api implements dsi<ayi<asd>> {

    /* renamed from: a */
    private final dsv<ajk> f42573a;

    /* renamed from: b */
    private final dsv<Executor> f42574b;

    private C12185api(dsv<ajk> dsvVar, dsv<Executor> dsvVar2) {
        this.f42573a = dsvVar;
        this.f42574b = dsvVar2;
    }

    /* renamed from: a */
    public static C12185api m18491a(dsv<ajk> dsvVar, dsv<Executor> dsvVar2) {
        return new C12185api(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f42573a.mo14005a(), this.f42574b.mo14005a()));
    }
}
