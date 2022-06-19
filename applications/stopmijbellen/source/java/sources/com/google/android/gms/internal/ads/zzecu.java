package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.common.wrappers.Wrappers;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzecu.class */
public final class zzecu implements zzgpr<PackageInfo> {
    private final zzgqe<Context> zza;
    private final zzgqe<ApplicationInfo> zzb;

    public zzecu(zzgqe<Context> zzgqeVar, zzgqe<ApplicationInfo> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        PackageInfo packageInfo;
        try {
            packageInfo = Wrappers.packageManager(this.zza.zzb()).getPackageInfo(((zzecp) this.zzb).zzb().packageName, 0);
        } catch (PackageManager.NameNotFoundException e) {
            packageInfo = null;
        }
        return packageInfo;
    }
}
