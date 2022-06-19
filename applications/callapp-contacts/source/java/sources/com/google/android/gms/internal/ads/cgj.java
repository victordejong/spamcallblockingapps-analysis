package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cgj.class */
public final class cgj implements dsi<cgh> {

    /* renamed from: a */
    private final dsv<C13019wo> f45731a;

    /* renamed from: b */
    private final dsv<dbs> f45732b;

    /* renamed from: c */
    private final dsv<Context> f45733c;

    private cgj(dsv<C13019wo> dsvVar, dsv<dbs> dsvVar2, dsv<Context> dsvVar3) {
        this.f45731a = dsvVar;
        this.f45732b = dsvVar2;
        this.f45733c = dsvVar3;
    }

    /* renamed from: a */
    public static cgj m17470a(dsv<C13019wo> dsvVar, dsv<dbs> dsvVar2, dsv<Context> dsvVar3) {
        return new cgj(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new cgh(this.f45731a.mo14005a(), this.f45732b.mo14005a(), this.f45733c.mo14005a());
    }
}
