package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdo.class */
public final class cdo implements dsi<cdm> {

    /* renamed from: a */
    private final dsv<dbs> f45581a;

    /* renamed from: b */
    private final dsv<Context> f45582b;

    public cdo(dsv<dbs> dsvVar, dsv<Context> dsvVar2) {
        this.f45581a = dsvVar;
        this.f45582b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new cdm(this.f45581a.mo14005a(), this.f45582b.mo14005a());
    }
}
