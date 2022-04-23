package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzf;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqu.class */
public final class aqu implements dsi<aqs> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<cti> f23793a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<zzbar> f23794b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<ApplicationInfo> f23795c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<String> f23796d;
    private final dsv<List<String>> e;
    private final dsv<PackageInfo> f;
    private final dsv<dbt<String>> g;
    private final dsv<zzf> h;
    private final dsv<String> i;
    private final dsv<cha<Bundle>> j;

    private aqu(dsv<cti> dsvVar, dsv<zzbar> dsvVar2, dsv<ApplicationInfo> dsvVar3, dsv<String> dsvVar4, dsv<List<String>> dsvVar5, dsv<PackageInfo> dsvVar6, dsv<dbt<String>> dsvVar7, dsv<zzf> dsvVar8, dsv<String> dsvVar9, dsv<cha<Bundle>> dsvVar10) {
        this.f23793a = dsvVar;
        this.f23794b = dsvVar2;
        this.f23795c = dsvVar3;
        this.f23796d = dsvVar4;
        this.e = dsvVar5;
        this.f = dsvVar6;
        this.g = dsvVar7;
        this.h = dsvVar8;
        this.i = dsvVar9;
        this.j = dsvVar10;
    }

    public static aqu a(dsv<cti> dsvVar, dsv<zzbar> dsvVar2, dsv<ApplicationInfo> dsvVar3, dsv<String> dsvVar4, dsv<List<String>> dsvVar5, dsv<PackageInfo> dsvVar6, dsv<dbt<String>> dsvVar7, dsv<zzf> dsvVar8, dsv<String> dsvVar9, dsv<cha<Bundle>> dsvVar10) {
        return new aqu(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5, dsvVar6, dsvVar7, dsvVar8, dsvVar9, dsvVar10);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new aqs(this.f23793a.a(), this.f23794b.a(), this.f23795c.a(), this.f23796d.a(), this.e.a(), this.f.a(), dsj.b(this.g), this.h.a(), this.i.a(), this.j.a());
    }
}
