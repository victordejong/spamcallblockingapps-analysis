package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqy.class */
public final class bqy implements dsi<bqz> {

    /* renamed from: a */
    private final dsv<bre> f44519a;

    /* renamed from: b */
    private final dsv<zzf> f44520b;

    private bqy(dsv<bre> dsvVar, dsv<zzf> dsvVar2) {
        this.f44519a = dsvVar;
        this.f44520b = dsvVar2;
    }

    /* renamed from: a */
    public static bqy m17661a(dsv<bre> dsvVar, dsv<zzf> dsvVar2) {
        return new bqy(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bqz(this.f44519a.mo14005a(), this.f44520b.mo14005a());
    }
}
