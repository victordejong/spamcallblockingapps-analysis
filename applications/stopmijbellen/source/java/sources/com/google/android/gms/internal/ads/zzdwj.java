package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdwj.class */
public final class zzdwj {
    private final zzcpb zza;
    private final Context zzb;
    private final zzalt zzc;
    private final zzbmi zzd;
    private final zzcjf zze;
    private final zza zzf;
    private final zzbay zzg;
    private final zzdhg zzh;

    public zzdwj(zzcpb zzcpbVar, Context context, zzalt zzaltVar, zzbmi zzbmiVar, zzcjf zzcjfVar, zza zzaVar, zzbay zzbayVar, zzdhg zzdhgVar) {
        this.zza = zzcpbVar;
        this.zzb = context;
        this.zzc = zzaltVar;
        this.zzd = zzbmiVar;
        this.zze = zzcjfVar;
        this.zzf = zzaVar;
        this.zzg = zzbayVar;
        this.zzh = zzdhgVar;
    }

    public final zzcop zza(zzbfi zzbfiVar, zzfdn zzfdnVar, zzfdq zzfdqVar) throws zzcpa {
        return zzcpb.zza(this.zzb, zzcqe.zzc(zzbfiVar), zzbfiVar.zza, false, false, this.zzc, this.zzd, this.zze, null, new zzdvy(this), this.zzf, this.zzg, zzfdnVar, zzfdqVar);
    }
}
