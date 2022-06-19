package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzety.class */
public final class zzety implements zzevn, zzevm {
    private final ApplicationInfo zza;
    private final PackageInfo zzb;

    public zzety(ApplicationInfo applicationInfo, PackageInfo packageInfo) {
        this.zza = applicationInfo;
        this.zzb = packageInfo;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = (Bundle) obj;
        String str = this.zza.packageName;
        PackageInfo packageInfo = this.zzb;
        Integer valueOf = packageInfo == null ? null : Integer.valueOf(packageInfo.versionCode);
        bundle.putString("pn", str);
        if (valueOf != null) {
            bundle.putInt("vc", valueOf.intValue());
        }
        PackageInfo packageInfo2 = this.zzb;
        String str2 = packageInfo2 == null ? null : packageInfo2.versionName;
        if (str2 != null) {
            bundle.putString("vnm", str2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzevm<Bundle>> zzb() {
        return zzfwq.zzi(this);
    }
}
