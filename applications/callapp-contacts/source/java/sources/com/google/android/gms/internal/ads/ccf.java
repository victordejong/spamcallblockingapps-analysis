package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ccf.class */
public final class ccf implements dsi<cce> {

    /* renamed from: a */
    private final dsv<dbt<String>> f45498a;

    /* renamed from: b */
    private final dsv<Executor> f45499b;

    private ccf(dsv<dbt<String>> dsvVar, dsv<Executor> dsvVar2) {
        this.f45498a = dsvVar;
        this.f45499b = dsvVar2;
    }

    /* renamed from: a */
    public static ccf m17504a(dsv<dbt<String>> dsvVar, dsv<Executor> dsvVar2) {
        return new ccf(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new cce(this.f45498a.mo14005a(), this.f45499b.mo14005a());
    }
}
