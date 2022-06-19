package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cem.class */
public final class cem implements dsi<cek> {

    /* renamed from: a */
    private final dsv<Context> f45628a;

    /* renamed from: b */
    private final dsv<dbs> f45629b;

    private cem(dsv<Context> dsvVar, dsv<dbs> dsvVar2) {
        this.f45628a = dsvVar;
        this.f45629b = dsvVar2;
    }

    /* renamed from: a */
    public static cem m17486a(dsv<Context> dsvVar, dsv<dbs> dsvVar2) {
        return new cem(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new cek(this.f45628a.mo14005a(), this.f45629b.mo14005a());
    }
}
