package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdk.class */
public final class cdk implements dsi<cdi> {

    /* renamed from: a */
    private final dsv<dbs> f45574a;

    /* renamed from: b */
    private final dsv<Context> f45575b;

    private cdk(dsv<dbs> dsvVar, dsv<Context> dsvVar2) {
        this.f45574a = dsvVar;
        this.f45575b = dsvVar2;
    }

    /* renamed from: a */
    public static cdk m17492a(dsv<dbs> dsvVar, dsv<Context> dsvVar2) {
        return new cdk(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new cdi(this.f45574a.mo14005a(), this.f45575b.mo14005a());
    }
}
