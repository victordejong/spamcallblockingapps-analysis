package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzf;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqu.class */
public final class aqu implements dsi<aqs> {

    /* renamed from: a */
    private final dsv<cti> f43059a;

    /* renamed from: b */
    private final dsv<zzbar> f43060b;

    /* renamed from: c */
    private final dsv<ApplicationInfo> f43061c;

    /* renamed from: d */
    private final dsv<String> f43062d;

    /* renamed from: e */
    private final dsv<List<String>> f43063e;

    /* renamed from: f */
    private final dsv<PackageInfo> f43064f;

    /* renamed from: g */
    private final dsv<dbt<String>> f43065g;

    /* renamed from: h */
    private final dsv<zzf> f43066h;

    /* renamed from: i */
    private final dsv<String> f43067i;

    /* renamed from: j */
    private final dsv<cha<Bundle>> f43068j;

    private aqu(dsv<cti> dsvVar, dsv<zzbar> dsvVar2, dsv<ApplicationInfo> dsvVar3, dsv<String> dsvVar4, dsv<List<String>> dsvVar5, dsv<PackageInfo> dsvVar6, dsv<dbt<String>> dsvVar7, dsv<zzf> dsvVar8, dsv<String> dsvVar9, dsv<cha<Bundle>> dsvVar10) {
        this.f43059a = dsvVar;
        this.f43060b = dsvVar2;
        this.f43061c = dsvVar3;
        this.f43062d = dsvVar4;
        this.f43063e = dsvVar5;
        this.f43064f = dsvVar6;
        this.f43065g = dsvVar7;
        this.f43066h = dsvVar8;
        this.f43067i = dsvVar9;
        this.f43068j = dsvVar10;
    }

    /* renamed from: a */
    public static aqu m18457a(dsv<cti> dsvVar, dsv<zzbar> dsvVar2, dsv<ApplicationInfo> dsvVar3, dsv<String> dsvVar4, dsv<List<String>> dsvVar5, dsv<PackageInfo> dsvVar6, dsv<dbt<String>> dsvVar7, dsv<zzf> dsvVar8, dsv<String> dsvVar9, dsv<cha<Bundle>> dsvVar10) {
        return new aqu(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5, dsvVar6, dsvVar7, dsvVar8, dsvVar9, dsvVar10);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new aqs(this.f43059a.mo14005a(), this.f43060b.mo14005a(), this.f43061c.mo14005a(), this.f43062d.mo14005a(), this.f43063e.mo14005a(), this.f43064f.mo14005a(), dsj.m15773b(this.f43065g), this.f43066h.mo14005a(), this.f43067i.mo14005a(), this.f43068j.mo14005a());
    }
}
