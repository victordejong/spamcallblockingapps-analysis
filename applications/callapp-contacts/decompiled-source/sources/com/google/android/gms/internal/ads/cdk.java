package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdk.class */
public final class cdk implements dsi<cdi> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<dbs> f25639a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f25640b;

    private cdk(dsv<dbs> dsvVar, dsv<Context> dsvVar2) {
        this.f25639a = dsvVar;
        this.f25640b = dsvVar2;
    }

    public static cdk a(dsv<dbs> dsvVar, dsv<Context> dsvVar2) {
        return new cdk(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new cdi(this.f25639a.a(), this.f25640b.a());
    }
}
