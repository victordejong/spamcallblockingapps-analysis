package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cfu.class */
public final class cfu implements dsi<cfs> {

    /* renamed from: a */
    private final dsv<dbs> f45686a;

    /* renamed from: b */
    private final dsv<Bundle> f45687b;

    private cfu(dsv<dbs> dsvVar, dsv<Bundle> dsvVar2) {
        this.f45686a = dsvVar;
        this.f45687b = dsvVar2;
    }

    /* renamed from: a */
    public static cfu m17475a(dsv<dbs> dsvVar, dsv<Bundle> dsvVar2) {
        return new cfu(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new cfs(this.f45686a.mo14005a(), this.f45687b.mo14005a());
    }
}
