package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdo.class */
public final class cdo implements dsi<cdm> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<dbs> f25646a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f25647b;

    public cdo(dsv<dbs> dsvVar, dsv<Context> dsvVar2) {
        this.f25646a = dsvVar;
        this.f25647b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new cdm(this.f25646a.a(), this.f25647b.a());
    }
}
