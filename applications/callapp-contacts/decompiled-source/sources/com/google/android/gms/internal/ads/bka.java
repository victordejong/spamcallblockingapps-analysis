package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bka.class */
public final class bka implements dsi<Set<ayi<cto>>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Executor> f24579a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bkr> f24580b;

    private bka(dsv<Executor> dsvVar, dsv<bkr> dsvVar2) {
        this.f24579a = dsvVar;
        this.f24580b = dsvVar2;
    }

    public static bka a(dsv<Executor> dsvVar, dsv<bkr> dsvVar2) {
        return new bka(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        Executor a2 = this.f24579a.a();
        return (Set) dso.b(((Boolean) ekb.e().a(aq.cN)).booleanValue() ? Collections.singleton(new ayi(this.f24580b.a(), a2)) : Collections.emptySet());
    }
}
