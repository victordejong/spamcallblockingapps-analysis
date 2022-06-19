package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/blz.class */
public final class blz implements dsi<Set<ayi<atb>>> {

    /* renamed from: a */
    private final blv f44237a;

    /* renamed from: b */
    private final dsv<bmf> f44238b;

    /* renamed from: c */
    private final dsv<Executor> f44239c;

    private blz(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        this.f44237a = blvVar;
        this.f44238b = dsvVar;
        this.f44239c = dsvVar2;
    }

    /* renamed from: a */
    public static blz m17748a(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        return new blz(blvVar, dsvVar, dsvVar2);
    }

    /* renamed from: a */
    public static Set<ayi<atb>> m17747a(bmf bmfVar, Executor executor) {
        return (Set) dso.m15764b(blv.m17751a(bmfVar, executor));
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return m17747a(this.f44238b.mo14005a(), this.f44239c.mo14005a());
    }
}
