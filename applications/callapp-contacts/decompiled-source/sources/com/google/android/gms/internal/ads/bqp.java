package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqp.class */
public final class bqp implements dsi<bqn> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Set<bqm>> f24903a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<ctz> f24904b;

    private bqp(dsv<Set<bqm>> dsvVar, dsv<ctz> dsvVar2) {
        this.f24903a = dsvVar;
        this.f24904b = dsvVar2;
    }

    public static bqp a(dsv<Set<bqm>> dsvVar, dsv<ctz> dsvVar2) {
        return new bqp(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bqn(this.f24903a.a(), this.f24904b.a());
    }
}
