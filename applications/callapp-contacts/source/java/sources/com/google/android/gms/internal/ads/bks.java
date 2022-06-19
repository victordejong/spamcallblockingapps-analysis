package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bks.class */
public final class bks implements dsi<bkr> {

    /* renamed from: a */
    private final dsv<ehk> f44150a;

    /* renamed from: b */
    private final dsv<Map<ctj, bkt>> f44151b;

    private bks(dsv<ehk> dsvVar, dsv<Map<ctj, bkt>> dsvVar2) {
        this.f44150a = dsvVar;
        this.f44151b = dsvVar2;
    }

    /* renamed from: a */
    public static bks m17784a(dsv<ehk> dsvVar, dsv<Map<ctj, bkt>> dsvVar2) {
        return new bks(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bkr(this.f44150a.mo14005a(), this.f44151b.mo14005a());
    }
}
