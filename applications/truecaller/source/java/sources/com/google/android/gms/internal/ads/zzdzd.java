package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.common.wrappers.Wrappers;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdzd.class */
public final class zzdzd implements zzgla<PackageInfo> {
    private final zzgln<Context> zza;
    private final zzgln<ApplicationInfo> zzb;

    public zzdzd(zzgln<Context> zzglnVar, zzgln<ApplicationInfo> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        PackageInfo packageInfo;
        try {
            packageInfo = Wrappers.m38764a(this.zza.zzb()).m38766c(((zzdyy) this.zzb).zzb().packageName, 0);
        } catch (PackageManager.NameNotFoundException e) {
            packageInfo = null;
        }
        return packageInfo;
    }
}
