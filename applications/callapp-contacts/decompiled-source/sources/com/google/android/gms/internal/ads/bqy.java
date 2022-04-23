package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqy.class */
public final class bqy implements dsi<bqz> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bre> f24916a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<zzf> f24917b;

    private bqy(dsv<bre> dsvVar, dsv<zzf> dsvVar2) {
        this.f24916a = dsvVar;
        this.f24917b = dsvVar2;
    }

    public static bqy a(dsv<bre> dsvVar, dsv<zzf> dsvVar2) {
        return new bqy(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bqz(this.f24916a.a(), this.f24917b.a());
    }
}
