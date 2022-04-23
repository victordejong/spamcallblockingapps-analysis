package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bmg.class */
public final class bmg implements dsi<Set<ayi<cto>>> {

    /* renamed from: a  reason: collision with root package name */
    private final blv f24693a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bmf> f24694b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Executor> f24695c;

    private bmg(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        this.f24693a = blvVar;
        this.f24694b = dsvVar;
        this.f24695c = dsvVar2;
    }

    public static bmg a(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        return new bmg(blvVar, dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(blv.a(this.f24694b.a(), this.f24695c.a()));
    }
}
