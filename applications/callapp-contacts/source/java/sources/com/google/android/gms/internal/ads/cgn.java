package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cgn.class */
public final class cgn implements dsi<cgl> {

    /* renamed from: a */
    private final dsv<dbs> f45745a;

    /* renamed from: b */
    private final dsv<Context> f45746b;

    /* renamed from: c */
    private final dsv<zzbar> f45747c;

    private cgn(dsv<dbs> dsvVar, dsv<Context> dsvVar2, dsv<zzbar> dsvVar3) {
        this.f45745a = dsvVar;
        this.f45746b = dsvVar2;
        this.f45747c = dsvVar3;
    }

    /* renamed from: a */
    public static cgn m17469a(dsv<dbs> dsvVar, dsv<Context> dsvVar2, dsv<zzbar> dsvVar3) {
        return new cgn(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new cgl(this.f45745a.mo14005a(), this.f45746b.mo14005a(), this.f45747c.mo14005a());
    }
}
