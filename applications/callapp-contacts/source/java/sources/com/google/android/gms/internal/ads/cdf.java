package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdf.class */
public final class cdf implements dsi<cda> {

    /* renamed from: a */
    private final dsv<Executor> f45555a;

    /* renamed from: b */
    private final dsv<C13064yd> f45556b;

    private cdf(dsv<Executor> dsvVar, dsv<C13064yd> dsvVar2) {
        this.f45555a = dsvVar;
        this.f45556b = dsvVar2;
    }

    /* renamed from: a */
    public static cda m17494a(Executor executor, C13064yd c13064yd) {
        return new cda(executor, c13064yd);
    }

    /* renamed from: a */
    public static cdf m17495a(dsv<Executor> dsvVar, dsv<C13064yd> dsvVar2) {
        return new cdf(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return m17494a(this.f45555a.mo14005a(), this.f45556b.mo14005a());
    }
}
