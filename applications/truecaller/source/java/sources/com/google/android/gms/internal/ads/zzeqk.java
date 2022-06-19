package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeqk.class */
public final class zzeqk implements zzgla<zzeqj> {
    private final zzgln<ApplicationInfo> zza;
    private final zzgln<PackageInfo> zzb;

    public zzeqk(zzgln<ApplicationInfo> zzglnVar, zzgln<PackageInfo> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeqj(((zzdyy) this.zza).zzb(), this.zzb.zzb());
    }
}
