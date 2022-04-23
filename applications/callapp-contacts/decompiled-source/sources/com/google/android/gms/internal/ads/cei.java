package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cei.class */
public final class cei implements dsi<cee> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f25686a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<dbs> f25687b;

    private cei(dsv<Context> dsvVar, dsv<dbs> dsvVar2) {
        this.f25686a = dsvVar;
        this.f25687b = dsvVar2;
    }

    public static cee a(Context context, dbs dbsVar) {
        return new cee(context, dbsVar);
    }

    public static cei a(dsv<Context> dsvVar, dsv<dbs> dsvVar2) {
        return new cei(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return a(this.f25686a.a(), this.f25687b.a());
    }
}
