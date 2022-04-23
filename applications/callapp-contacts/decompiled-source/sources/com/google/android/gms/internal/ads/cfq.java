package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cfq.class */
public final class cfq implements dsi<cfr> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<ApplicationInfo> f25744a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<PackageInfo> f25745b;

    private cfq(dsv<ApplicationInfo> dsvVar, dsv<PackageInfo> dsvVar2) {
        this.f25744a = dsvVar;
        this.f25745b = dsvVar2;
    }

    public static cfq a(dsv<ApplicationInfo> dsvVar, dsv<PackageInfo> dsvVar2) {
        return new cfq(dsvVar, dsvVar2);
    }

    public static cfr a(ApplicationInfo applicationInfo, PackageInfo packageInfo) {
        return new cfr(applicationInfo, packageInfo);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return a(this.f25744a.a(), this.f25745b.a());
    }
}
