package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cfr.class */
public final class cfr implements cgy<Bundle>, chb<cgy<Bundle>> {

    /* renamed from: a */
    private final ApplicationInfo f45681a;

    /* renamed from: b */
    private final PackageInfo f45682b;

    public cfr(ApplicationInfo applicationInfo, PackageInfo packageInfo) {
        this.f45681a = applicationInfo;
        this.f45682b = packageInfo;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<cgy<Bundle>> mo17449a() {
        return dbh.m16899a(this);
    }

    @Override // com.google.android.gms.internal.ads.cgy
    /* renamed from: a */
    public final /* synthetic */ void mo17450a(Bundle bundle) {
        Bundle bundle2 = bundle;
        String str = this.f45681a.packageName;
        PackageInfo packageInfo = this.f45682b;
        Integer valueOf = packageInfo == null ? null : Integer.valueOf(packageInfo.versionCode);
        bundle2.putString("pn", str);
        if (valueOf != null) {
            bundle2.putInt("vc", valueOf.intValue());
        }
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42846dx)).booleanValue()) {
            PackageInfo packageInfo2 = this.f45682b;
            String str2 = packageInfo2 == null ? null : packageInfo2.versionName;
            if (str2 == null) {
                return;
            }
            bundle2.putString("vnm", str2);
        }
    }
}
