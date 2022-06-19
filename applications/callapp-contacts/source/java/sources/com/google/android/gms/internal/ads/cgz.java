package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cgz.class */
public final class cgz implements dsi<cgr> {

    /* renamed from: a */
    private final dsv<dbs> f45762a;

    /* renamed from: b */
    private final dsv<Context> f45763b;

    private cgz(dsv<dbs> dsvVar, dsv<Context> dsvVar2) {
        this.f45762a = dsvVar;
        this.f45763b = dsvVar2;
    }

    /* renamed from: a */
    public static cgr m17463a(dbs dbsVar, Context context) {
        return new cgr(dbsVar, context);
    }

    /* renamed from: a */
    public static cgz m17462a(dsv<dbs> dsvVar, dsv<Context> dsvVar2) {
        return new cgz(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return m17463a(this.f45762a.mo14005a(), this.f45763b.mo14005a());
    }
}
