package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ccf.class */
public final class ccf implements dsi<cce> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<dbt<String>> f25576a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f25577b;

    private ccf(dsv<dbt<String>> dsvVar, dsv<Executor> dsvVar2) {
        this.f25576a = dsvVar;
        this.f25577b = dsvVar2;
    }

    public static ccf a(dsv<dbt<String>> dsvVar, dsv<Executor> dsvVar2) {
        return new ccf(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new cce(this.f25576a.a(), this.f25577b.a());
    }
}
