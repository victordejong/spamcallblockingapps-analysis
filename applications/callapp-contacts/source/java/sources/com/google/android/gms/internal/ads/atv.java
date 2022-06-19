package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/atv.class */
public final class atv implements dsi<att> {

    /* renamed from: a */
    private final dsv<Set<ayi<atu>>> f43162a;

    /* renamed from: b */
    private final dsv<cov> f43163b;

    private atv(dsv<Set<ayi<atu>>> dsvVar, dsv<cov> dsvVar2) {
        this.f43162a = dsvVar;
        this.f43163b = dsvVar2;
    }

    /* renamed from: a */
    public static atv m18414a(dsv<Set<ayi<atu>>> dsvVar, dsv<cov> dsvVar2) {
        return new atv(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new att(this.f43162a.mo14005a(), this.f43163b.mo14005a());
    }
}
