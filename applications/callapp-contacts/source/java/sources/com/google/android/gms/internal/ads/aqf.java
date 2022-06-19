package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzf;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqf.class */
public final class aqf implements dsi<aqg> {

    /* renamed from: a */
    private final dsv<Context> f43013a;

    /* renamed from: b */
    private final dsv<cpo> f43014b;

    /* renamed from: c */
    private final dsv<zzbar> f43015c;

    /* renamed from: d */
    private final dsv<zzf> f43016d;

    /* renamed from: e */
    private final dsv<bmi> f43017e;

    private aqf(dsv<Context> dsvVar, dsv<cpo> dsvVar2, dsv<zzbar> dsvVar3, dsv<zzf> dsvVar4, dsv<bmi> dsvVar5) {
        this.f43013a = dsvVar;
        this.f43014b = dsvVar2;
        this.f43015c = dsvVar3;
        this.f43016d = dsvVar4;
        this.f43017e = dsvVar5;
    }

    /* renamed from: a */
    public static aqf m18465a(dsv<Context> dsvVar, dsv<cpo> dsvVar2, dsv<zzbar> dsvVar3, dsv<zzf> dsvVar4, dsv<bmi> dsvVar5) {
        return new aqf(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new aqg(this.f43013a.mo14005a(), this.f43014b.mo14005a(), this.f43015c.mo14005a(), this.f43016d.mo14005a(), this.f43017e.mo14005a());
    }
}
