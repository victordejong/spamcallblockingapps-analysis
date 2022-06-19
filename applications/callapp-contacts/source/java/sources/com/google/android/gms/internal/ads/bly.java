package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bly.class */
public final class bly implements dsi<Set<ayi<aro>>> {

    /* renamed from: a */
    private final blv f44234a;

    /* renamed from: b */
    private final dsv<bmf> f44235b;

    /* renamed from: c */
    private final dsv<Executor> f44236c;

    private bly(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        this.f44234a = blvVar;
        this.f44235b = dsvVar;
        this.f44236c = dsvVar2;
    }

    /* renamed from: a */
    public static bly m17749a(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        return new bly(blvVar, dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (Set) dso.m15764b(blv.m17751a(this.f44235b.mo14005a(), this.f44236c.mo14005a()));
    }
}
