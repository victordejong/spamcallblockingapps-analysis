package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bma.class */
public final class bma implements dsi<Set<ayi<asg>>> {

    /* renamed from: a */
    private final blv f44240a;

    /* renamed from: b */
    private final dsv<bmf> f44241b;

    /* renamed from: c */
    private final dsv<Executor> f44242c;

    private bma(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        this.f44240a = blvVar;
        this.f44241b = dsvVar;
        this.f44242c = dsvVar2;
    }

    /* renamed from: a */
    public static bma m17746a(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        return new bma(blvVar, dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (Set) dso.m15764b(blv.m17751a(this.f44241b.mo14005a(), this.f44242c.mo14005a()));
    }
}
