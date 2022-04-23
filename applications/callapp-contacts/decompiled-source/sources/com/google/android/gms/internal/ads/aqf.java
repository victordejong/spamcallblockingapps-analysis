package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzf;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqf.class */
public final class aqf implements dsi<aqg> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f23756a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<cpo> f23757b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<zzbar> f23758c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<zzf> f23759d;
    private final dsv<bmi> e;

    private aqf(dsv<Context> dsvVar, dsv<cpo> dsvVar2, dsv<zzbar> dsvVar3, dsv<zzf> dsvVar4, dsv<bmi> dsvVar5) {
        this.f23756a = dsvVar;
        this.f23757b = dsvVar2;
        this.f23758c = dsvVar3;
        this.f23759d = dsvVar4;
        this.e = dsvVar5;
    }

    public static aqf a(dsv<Context> dsvVar, dsv<cpo> dsvVar2, dsv<zzbar> dsvVar3, dsv<zzf> dsvVar4, dsv<bmi> dsvVar5) {
        return new aqf(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new aqg(this.f23756a.a(), this.f23757b.a(), this.f23758c.a(), this.f23759d.a(), this.e.a());
    }
}
