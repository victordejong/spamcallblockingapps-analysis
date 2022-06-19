package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcss.class */
final class zzcss implements zzfaa {
    private final Context zza;
    private final zzbfi zzb;
    private final String zzc;
    private final zzcui zzd;
    private final zzcss zze = this;
    private final zzgqe<Context> zzf;
    private final zzgqe<zzbfi> zzg;
    private final zzgqe<zzeox> zzh;
    private final zzgqe<zzepb> zzi;
    private final zzgqe<zzezx> zzj;

    public /* synthetic */ zzcss(zzcui zzcuiVar, Context context, String str, zzbfi zzbfiVar, zzcsr zzcsrVar) {
        zzgqe zzgqeVar;
        zzgqe zzgqeVar2;
        zzgqe zzgqeVar3;
        this.zzd = zzcuiVar;
        this.zza = context;
        this.zzb = zzbfiVar;
        this.zzc = str;
        zzgpr zza = zzgps.zza(context);
        this.zzf = zza;
        zzgpr zza2 = zzgps.zza(zzbfiVar);
        this.zzg = zza2;
        zzgqeVar = zzcuiVar.zzo;
        zzgqe<zzeox> zzc = zzgpq.zzc(new zzeoy(zzgqeVar));
        this.zzh = zzc;
        zzgqe<zzepb> zzc2 = zzgpq.zzc(zzepd.zza());
        this.zzi = zzc2;
        zzgqeVar2 = zzcuiVar.zzp;
        zzgqeVar3 = zzcuiVar.zzO;
        this.zzj = zzgpq.zzc(new zzezy(zza, zzgqeVar2, zza2, zzgqeVar3, zzc, zzc2, zzfeh.zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzfaa
    public final zzeoe zza() {
        return new zzeoe(this.zza, this.zzb, this.zzc, this.zzj.zzb(), this.zzh.zzb());
    }
}
