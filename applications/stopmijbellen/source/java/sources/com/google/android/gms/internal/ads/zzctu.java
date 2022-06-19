package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzctu.class */
final class zzctu implements zzfdh {
    private final zzcui zza;
    private final zzctu zzb = this;
    private final zzgqe<Context> zzc;
    private final zzgqe<zzfbc<zzdvs, zzdvn>> zzd;
    private final zzgqe<zzfcq> zze;
    private final zzgqe<zzfea> zzf;
    private final zzgqe<zzfda> zzg;
    private final zzgqe<zzfdk> zzh;
    private final zzgqe<String> zzi;
    private final zzgqe<zzfde> zzj;

    public /* synthetic */ zzctu(zzcui zzcuiVar, Context context, String str, zzctt zzcttVar) {
        zzgqe zzgqeVar;
        zzgqe zzgqeVar2;
        zzgqe zzgqeVar3;
        zzgqe zzgqeVar4;
        zzgqe zzgqeVar5;
        this.zza = zzcuiVar;
        zzgpr zza = zzgps.zza(context);
        this.zzc = zza;
        zzgqeVar = zzcuiVar.zzau;
        zzgqeVar2 = zzcuiVar.zzav;
        zzfbh zzfbhVar = new zzfbh(zza, zzgqeVar, zzgqeVar2);
        this.zzd = zzfbhVar;
        zzgqeVar3 = zzcuiVar.zzau;
        zzgqe<zzfcq> zzc = zzgpq.zzc(new zzfcr(zzgqeVar3));
        this.zze = zzc;
        zzgqe<zzfea> zzc2 = zzgpq.zzc(zzfec.zza());
        this.zzf = zzc2;
        zzgqeVar4 = zzcuiVar.zzp;
        zzgqeVar5 = zzcuiVar.zzO;
        zzgqe<zzfda> zzc3 = zzgpq.zzc(new zzfdb(zza, zzgqeVar4, zzgqeVar5, zzfbhVar, zzc, zzfeh.zza(), zzc2));
        this.zzg = zzc3;
        this.zzh = zzgpq.zzc(new zzfdl(zzc3, zzc, zzc2));
        zzgpr zzc4 = zzgps.zzc(str);
        this.zzi = zzc4;
        this.zzj = zzgpq.zzc(new zzfdf(zzc4, zzc3, zza, zzc, zzc2));
    }

    @Override // com.google.android.gms.internal.ads.zzfdh
    public final zzfde zza() {
        return this.zzj.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzfdh
    public final zzfdk zzb() {
        return this.zzh.zzb();
    }
}
