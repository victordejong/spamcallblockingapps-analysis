package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cem.class */
public final class cem implements dsi<cek> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f25693a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<dbs> f25694b;

    private cem(dsv<Context> dsvVar, dsv<dbs> dsvVar2) {
        this.f25693a = dsvVar;
        this.f25694b = dsvVar2;
    }

    public static cem a(dsv<Context> dsvVar, dsv<dbs> dsvVar2) {
        return new cem(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new cek(this.f25693a.a(), this.f25694b.a());
    }
}
