package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/g92.class */
public final class g92 implements wa2, va2 {

    /* renamed from: a */
    private final ApplicationInfo f23274a;

    /* renamed from: b */
    private final PackageInfo f23275b;

    public g92(ApplicationInfo applicationInfo, PackageInfo packageInfo) {
        this.f23274a = applicationInfo;
        this.f23275b = packageInfo;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(Object obj) {
        Bundle bundle = (Bundle) obj;
        String str = this.f23274a.packageName;
        PackageInfo packageInfo = this.f23275b;
        Integer valueOf = packageInfo == null ? null : Integer.valueOf(packageInfo.versionCode);
        bundle.putString("pn", str);
        if (valueOf != null) {
            bundle.putInt("vc", valueOf.intValue());
        }
        PackageInfo packageInfo2 = this.f23275b;
        String str2 = packageInfo2 == null ? null : packageInfo2.versionName;
        if (str2 != null) {
            bundle.putString("vnm", str2);
        }
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<va2<Bundle>> zza() {
        return k03.m14003a(this);
    }
}
