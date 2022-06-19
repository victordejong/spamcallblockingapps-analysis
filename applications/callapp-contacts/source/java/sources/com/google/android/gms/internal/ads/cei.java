package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cei.class */
public final class cei implements dsi<cee> {

    /* renamed from: a */
    private final dsv<Context> f45621a;

    /* renamed from: b */
    private final dsv<dbs> f45622b;

    private cei(dsv<Context> dsvVar, dsv<dbs> dsvVar2) {
        this.f45621a = dsvVar;
        this.f45622b = dsvVar2;
    }

    /* renamed from: a */
    public static cee m17488a(Context context, dbs dbsVar) {
        return new cee(context, dbsVar);
    }

    /* renamed from: a */
    public static cei m17487a(dsv<Context> dsvVar, dsv<dbs> dsvVar2) {
        return new cei(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return m17488a(this.f45621a.mo14005a(), this.f45622b.mo14005a());
    }
}
