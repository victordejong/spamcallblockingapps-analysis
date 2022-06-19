package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/chn.class */
public final class chn implements dsi<chl> {

    /* renamed from: a */
    private final dsv<dbs> f45803a;

    /* renamed from: b */
    private final dsv<Context> f45804b;

    private chn(dsv<dbs> dsvVar, dsv<Context> dsvVar2) {
        this.f45803a = dsvVar;
        this.f45804b = dsvVar2;
    }

    /* renamed from: a */
    public static chn m17455a(dsv<dbs> dsvVar, dsv<Context> dsvVar2) {
        return new chn(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new chl(this.f45803a.mo14005a(), this.f45804b.mo14005a());
    }
}
