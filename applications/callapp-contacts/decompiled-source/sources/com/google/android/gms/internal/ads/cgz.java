package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cgz.class */
public final class cgz implements dsi<cgr> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<dbs> f25816a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f25817b;

    private cgz(dsv<dbs> dsvVar, dsv<Context> dsvVar2) {
        this.f25816a = dsvVar;
        this.f25817b = dsvVar2;
    }

    public static cgr a(dbs dbsVar, Context context) {
        return new cgr(dbsVar, context);
    }

    public static cgz a(dsv<dbs> dsvVar, dsv<Context> dsvVar2) {
        return new cgz(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return a(this.f25816a.a(), this.f25817b.a());
    }
}
