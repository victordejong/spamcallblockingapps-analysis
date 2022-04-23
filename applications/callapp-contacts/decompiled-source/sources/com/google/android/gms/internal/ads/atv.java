package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/atv.class */
public final class atv implements dsi<att> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Set<ayi<atu>>> f23876a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<cov> f23877b;

    private atv(dsv<Set<ayi<atu>>> dsvVar, dsv<cov> dsvVar2) {
        this.f23876a = dsvVar;
        this.f23877b = dsvVar2;
    }

    public static atv a(dsv<Set<ayi<atu>>> dsvVar, dsv<cov> dsvVar2) {
        return new atv(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new att(this.f23876a.a(), this.f23877b.a());
    }
}
