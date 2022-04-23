package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/chn.class */
public final class chn implements dsi<chl> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<dbs> f25845a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f25846b;

    private chn(dsv<dbs> dsvVar, dsv<Context> dsvVar2) {
        this.f25845a = dsvVar;
        this.f25846b = dsvVar2;
    }

    public static chn a(dsv<dbs> dsvVar, dsv<Context> dsvVar2) {
        return new chn(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new chl(this.f25845a.a(), this.f25846b.a());
    }
}
