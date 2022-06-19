package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdss.class */
public final class zzdss {
    private final zzcmx zza;
    private final Context zzb;
    private final zzaas zzc;
    private final zzbkk zzd;
    private final zzcgz zze;
    private final zza zzf;
    private final zzazb zzg;
    private final zzddr zzh;

    public zzdss(zzcmx zzcmxVar, Context context, zzaas zzaasVar, zzbkk zzbkkVar, zzcgz zzcgzVar, zza zzaVar, zzazb zzazbVar, zzddr zzddrVar) {
        this.zza = zzcmxVar;
        this.zzb = context;
        this.zzc = zzaasVar;
        this.zzd = zzbkkVar;
        this.zze = zzcgzVar;
        this.zzf = zzaVar;
        this.zzg = zzazbVar;
        this.zzh = zzddrVar;
    }

    public final zzcml zzb(zzbdl zzbdlVar, zzezz zzezzVar, zzfac zzfacVar) throws zzcmw {
        return zzcmx.zza(this.zzb, zzcob.zza(zzbdlVar), zzbdlVar.zza, false, false, this.zzc, this.zzd, this.zze, null, new zzdsh(this), this.zzf, this.zzg, zzezzVar, zzfacVar);
    }
}
