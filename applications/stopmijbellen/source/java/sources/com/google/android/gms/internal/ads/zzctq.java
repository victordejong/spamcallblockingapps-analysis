package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzctq.class */
final class zzctq implements zzfbt {
    private final zzcui zza;
    private final zzctq zzb = this;
    private final zzgqe<Context> zzc;
    private final zzgqe<zzbfi> zzd;
    private final zzgqe<String> zze;
    private final zzgqe<zzeox> zzf;
    private final zzgqe<zzfcq> zzg;
    private final zzgqe<zzfbq> zzh;
    private final zzgqe<zzepf> zzi;

    public /* synthetic */ zzctq(zzcui zzcuiVar, Context context, String str, zzbfi zzbfiVar, zzctp zzctpVar) {
        zzgqe zzgqeVar;
        zzgqe zzgqeVar2;
        zzgqe zzgqeVar3;
        zzgqe zzgqeVar4;
        this.zza = zzcuiVar;
        zzgpr zza = zzgps.zza(context);
        this.zzc = zza;
        zzgpr zza2 = zzgps.zza(zzbfiVar);
        this.zzd = zza2;
        zzgpr zza3 = zzgps.zza(str);
        this.zze = zza3;
        zzgqeVar = zzcuiVar.zzo;
        zzgqe<zzeox> zzc = zzgpq.zzc(new zzeoy(zzgqeVar));
        this.zzf = zzc;
        zzgqeVar2 = zzcuiVar.zzau;
        zzgqe<zzfcq> zzc2 = zzgpq.zzc(new zzfcr(zzgqeVar2));
        this.zzg = zzc2;
        zzgqeVar3 = zzcuiVar.zzp;
        zzgqeVar4 = zzcuiVar.zzO;
        zzgqe<zzfbq> zzc3 = zzgpq.zzc(new zzfbr(zza, zzgqeVar3, zzgqeVar4, zzc, zzc2, zzfeh.zza()));
        this.zzh = zzc3;
        this.zzi = zzgpq.zzc(new zzepg(zza, zza2, zza3, zzc3, zzc, zzc2));
    }

    @Override // com.google.android.gms.internal.ads.zzfbt
    public final zzepf zza() {
        return this.zzi.zzb();
    }
}
