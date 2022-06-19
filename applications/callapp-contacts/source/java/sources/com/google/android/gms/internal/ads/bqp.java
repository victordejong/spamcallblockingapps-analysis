package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqp.class */
public final class bqp implements dsi<bqn> {

    /* renamed from: a */
    private final dsv<Set<bqm>> f44506a;

    /* renamed from: b */
    private final dsv<ctz> f44507b;

    private bqp(dsv<Set<bqm>> dsvVar, dsv<ctz> dsvVar2) {
        this.f44506a = dsvVar;
        this.f44507b = dsvVar2;
    }

    /* renamed from: a */
    public static bqp m17668a(dsv<Set<bqm>> dsvVar, dsv<ctz> dsvVar2) {
        return new bqp(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bqn(this.f44506a.mo14005a(), this.f44507b.mo14005a());
    }
}
