package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cfr.class */
public final class cfr implements cgy<Bundle>, chb<cgy<Bundle>> {

    /* renamed from: a  reason: collision with root package name */
    private final ApplicationInfo f25746a;

    /* renamed from: b  reason: collision with root package name */
    private final PackageInfo f25747b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cfr(ApplicationInfo applicationInfo, PackageInfo packageInfo) {
        this.f25746a = applicationInfo;
        this.f25747b = packageInfo;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<cgy<Bundle>> a() {
        return dbh.a(this);
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        String str = this.f25746a.packageName;
        PackageInfo packageInfo = this.f25747b;
        String str2 = null;
        Integer valueOf = packageInfo == null ? null : Integer.valueOf(packageInfo.versionCode);
        bundle2.putString("pn", str);
        if (valueOf != null) {
            bundle2.putInt("vc", valueOf.intValue());
        }
        if (((Boolean) ekb.e().a(aq.dx)).booleanValue()) {
            PackageInfo packageInfo2 = this.f25747b;
            if (packageInfo2 != null) {
                str2 = packageInfo2.versionName;
            }
            if (str2 != null) {
                bundle2.putString("vnm", str2);
            }
        }
    }
}
