package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzg;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdai.class */
public final class zzdai {
    private final zzfes zza;
    private final zzcgz zzb;
    private final ApplicationInfo zzc;
    private final String zzd;
    private final List<String> zze;
    private final PackageInfo zzf;
    private final zzgku<zzfsm<String>> zzg;
    private final String zzh;
    private final zzesb<Bundle> zzi;

    public zzdai(zzfes zzfesVar, zzcgz zzcgzVar, ApplicationInfo applicationInfo, String str, List<String> list, PackageInfo packageInfo, zzgku<zzfsm<String>> zzgkuVar, zzg zzgVar, String str2, zzesb<Bundle> zzesbVar) {
        this.zza = zzfesVar;
        this.zzb = zzcgzVar;
        this.zzc = applicationInfo;
        this.zzd = str;
        this.zze = list;
        this.zzf = packageInfo;
        this.zzg = zzgkuVar;
        this.zzh = str2;
        this.zzi = zzesbVar;
    }

    public final zzfsm<Bundle> zza() {
        zzfes zzfesVar = this.zza;
        return zzfed.zza(this.zzi.zza(new Bundle()), zzfem.SIGNALS, zzfesVar).zzi();
    }

    public final zzfsm<zzcbj> zzb() {
        zzfsm<Bundle> zza = zza();
        return this.zza.zzf(zzfem.REQUEST_PARCEL, zza, this.zzg.zzb()).zza(new Callable(this, zza) { // from class: com.google.android.gms.internal.ads.zzdah
            private final zzdai zza;
            private final zzfsm zzb;

            {
                this.zza = this;
                this.zzb = zza;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzc(this.zzb);
            }
        }).zzi();
    }

    public final /* synthetic */ zzcbj zzc(zzfsm zzfsmVar) throws Exception {
        return new zzcbj((Bundle) zzfsmVar.get(), this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg.zzb().get(), this.zzh, null, null);
    }
}
