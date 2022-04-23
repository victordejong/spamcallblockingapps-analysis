package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bks.class */
public final class bks implements dsi<bkr> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<ehk> f24598a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Map<ctj, bkt>> f24599b;

    private bks(dsv<ehk> dsvVar, dsv<Map<ctj, bkt>> dsvVar2) {
        this.f24598a = dsvVar;
        this.f24599b = dsvVar2;
    }

    public static bks a(dsv<ehk> dsvVar, dsv<Map<ctj, bkt>> dsvVar2) {
        return new bks(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bkr(this.f24598a.a(), this.f24599b.a());
    }
}
