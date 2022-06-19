package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bka.class */
public final class bka implements dsi<Set<ayi<cto>>> {

    /* renamed from: a */
    private final dsv<Executor> f44131a;

    /* renamed from: b */
    private final dsv<bkr> f44132b;

    private bka(dsv<Executor> dsvVar, dsv<bkr> dsvVar2) {
        this.f44131a = dsvVar;
        this.f44132b = dsvVar2;
    }

    /* renamed from: a */
    public static bka m17790a(dsv<Executor> dsvVar, dsv<bkr> dsvVar2) {
        return new bka(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        Executor mo14005a = this.f44131a.mo14005a();
        return (Set) dso.m15764b(((Boolean) ekb.m14831e().m18571a(C12187aq.f42757cN)).booleanValue() ? Collections.singleton(new ayi(this.f44132b.mo14005a(), mo14005a)) : Collections.emptySet());
    }
}
