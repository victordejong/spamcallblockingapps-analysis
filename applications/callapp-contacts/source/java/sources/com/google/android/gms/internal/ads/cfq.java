package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cfq.class */
public final class cfq implements dsi<cfr> {

    /* renamed from: a */
    private final dsv<ApplicationInfo> f45679a;

    /* renamed from: b */
    private final dsv<PackageInfo> f45680b;

    private cfq(dsv<ApplicationInfo> dsvVar, dsv<PackageInfo> dsvVar2) {
        this.f45679a = dsvVar;
        this.f45680b = dsvVar2;
    }

    /* renamed from: a */
    public static cfq m17476a(dsv<ApplicationInfo> dsvVar, dsv<PackageInfo> dsvVar2) {
        return new cfq(dsvVar, dsvVar2);
    }

    /* renamed from: a */
    public static cfr m17477a(ApplicationInfo applicationInfo, PackageInfo packageInfo) {
        return new cfr(applicationInfo, packageInfo);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return m17477a(this.f45679a.mo14005a(), this.f45680b.mo14005a());
    }
}
