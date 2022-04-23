package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfk.class */
public final class zzdfk implements zzdgu<Bundle>, zzdgx<zzdgu<Bundle>> {

    /* renamed from: a */
    public final ApplicationInfo f27240a;

    /* renamed from: b */
    public final PackageInfo f27241b;

    public zzdfk(ApplicationInfo applicationInfo, PackageInfo packageInfo) {
        this.f27240a = applicationInfo;
        this.f27241b = packageInfo;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdgu<Bundle>> mo13576a() {
        return zzdyq.m12988a(this);
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(Bundle bundle) {
        Bundle bundle2 = bundle;
        String str = this.f27240a.packageName;
        PackageInfo packageInfo = this.f27241b;
        String str2 = null;
        Integer valueOf = packageInfo == null ? null : Integer.valueOf(packageInfo.versionCode);
        bundle2.putString("pn", str);
        if (valueOf != null) {
            bundle2.putInt("vc", valueOf.intValue());
        }
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23756V2)).booleanValue()) {
            PackageInfo packageInfo2 = this.f27241b;
            if (packageInfo2 != null) {
                str2 = packageInfo2.versionName;
            }
            if (str2 != null) {
                bundle2.putString("vnm", str2);
            }
        }
    }
}
