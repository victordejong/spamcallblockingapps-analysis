package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bmd.class */
public final class bmd implements dsi<Set<ayi<ash>>> {

    /* renamed from: a */
    private final blv f44246a;

    /* renamed from: b */
    private final dsv<bmf> f44247b;

    /* renamed from: c */
    private final dsv<Executor> f44248c;

    private bmd(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        this.f44246a = blvVar;
        this.f44247b = dsvVar;
        this.f44248c = dsvVar2;
    }

    /* renamed from: a */
    public static bmd m17743a(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        return new bmd(blvVar, dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (Set) dso.m15764b(blv.m17751a(this.f44247b.mo14005a(), this.f44248c.mo14005a()));
    }
}
