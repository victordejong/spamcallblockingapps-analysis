package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzg;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdaj.class */
public final class zzdaj implements zzgla<zzdai> {
    private final zzgln<zzfes> zza;
    private final zzgln<zzcgz> zzb;
    private final zzgln<ApplicationInfo> zzc;
    private final zzgln<String> zzd;
    private final zzgln<List<String>> zze;
    private final zzgln<PackageInfo> zzf;
    private final zzgln<zzfsm<String>> zzg;
    private final zzgln<zzg> zzh;
    private final zzgln<String> zzi;
    private final zzgln<zzesb<Bundle>> zzj;

    public zzdaj(zzgln<zzfes> zzglnVar, zzgln<zzcgz> zzglnVar2, zzgln<ApplicationInfo> zzglnVar3, zzgln<String> zzglnVar4, zzgln<List<String>> zzglnVar5, zzgln<PackageInfo> zzglnVar6, zzgln<zzfsm<String>> zzglnVar7, zzgln<zzg> zzglnVar8, zzgln<String> zzglnVar9, zzgln<zzesb<Bundle>> zzglnVar10) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
        this.zzf = zzglnVar6;
        this.zzg = zzglnVar7;
        this.zzh = zzglnVar8;
        this.zzi = zzglnVar9;
        this.zzj = zzglnVar10;
    }

    /* renamed from: zza */
    public final zzdai zzb() {
        return new zzdai(this.zza.zzb(), ((zzcox) this.zzb).zza(), ((zzdyy) this.zzc).zzb(), ((zzdze) this.zzd).zzb(), zzbjl.zzc(), this.zzf.zzb(), zzgkz.zzc(this.zzg), ((zzfbu) this.zzh).zzb(), this.zzi.zzb(), ((zzesc) this.zzj).zzb());
    }
}
