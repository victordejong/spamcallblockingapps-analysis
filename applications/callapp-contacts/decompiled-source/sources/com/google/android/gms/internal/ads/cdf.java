package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdf.class */
public final class cdf implements dsi<cda> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Executor> f25625a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<yd> f25626b;

    private cdf(dsv<Executor> dsvVar, dsv<yd> dsvVar2) {
        this.f25625a = dsvVar;
        this.f25626b = dsvVar2;
    }

    public static cda a(Executor executor, yd ydVar) {
        return new cda(executor, ydVar);
    }

    public static cdf a(dsv<Executor> dsvVar, dsv<yd> dsvVar2) {
        return new cdf(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return a(this.f25625a.a(), this.f25626b.a());
    }
}
