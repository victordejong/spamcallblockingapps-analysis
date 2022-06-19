package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bsa.class */
public final class bsa implements dsi<brs> {

    /* renamed from: a */
    private final dsv<Context> f44596a;

    /* renamed from: b */
    private final dsv<dbs> f44597b;

    public bsa(dsv<Context> dsvVar, dsv<dbs> dsvVar2) {
        this.f44596a = dsvVar;
        this.f44597b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new brs(this.f44596a.mo14005a(), this.f44597b.mo14005a());
    }
}
