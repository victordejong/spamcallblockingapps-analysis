package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bma.class */
public final class bma implements dsi<Set<ayi<asg>>> {

    /* renamed from: a  reason: collision with root package name */
    private final blv f24678a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bmf> f24679b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Executor> f24680c;

    private bma(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        this.f24678a = blvVar;
        this.f24679b = dsvVar;
        this.f24680c = dsvVar2;
    }

    public static bma a(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        return new bma(blvVar, dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(blv.a(this.f24679b.a(), this.f24680c.a()));
    }
}
