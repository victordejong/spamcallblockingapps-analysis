package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bmg.class */
public final class bmg implements dsi<Set<ayi<cto>>> {

    /* renamed from: a */
    private final blv f44255a;

    /* renamed from: b */
    private final dsv<bmf> f44256b;

    /* renamed from: c */
    private final dsv<Executor> f44257c;

    private bmg(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        this.f44255a = blvVar;
        this.f44256b = dsvVar;
        this.f44257c = dsvVar2;
    }

    /* renamed from: a */
    public static bmg m17737a(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        return new bmg(blvVar, dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (Set) dso.m15764b(blv.m17751a(this.f44256b.mo14005a(), this.f44257c.mo14005a()));
    }
}
