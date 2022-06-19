package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzctg.class */
public final class zzctg implements zzeai {
    private final Context zza;
    private final zzbso zzb;
    private final zzcui zzc;
    private final zzctg zzd = this;
    private final zzgqe<zzeai> zze;
    private final zzgqe<zzbso> zzf;
    private final zzgqe<zzead> zzg;
    private final zzgqe<zzeaf> zzh;

    public /* synthetic */ zzctg(zzcui zzcuiVar, Context context, zzbso zzbsoVar, zzctf zzctfVar) {
        this.zzc = zzcuiVar;
        this.zza = context;
        this.zzb = zzbsoVar;
        zzgpr zza = zzgps.zza(this);
        this.zze = zza;
        zzgpr zza2 = zzgps.zza(zzbsoVar);
        this.zzf = zza2;
        zzeae zzeaeVar = new zzeae(zza2);
        this.zzg = zzeaeVar;
        this.zzh = zzgpq.zzc(new zzeag(zza, zzeaeVar));
    }

    @Override // com.google.android.gms.internal.ads.zzeai
    public final zzdzz zzb() {
        return new zzcta(this.zzc, this.zzd, null);
    }

    @Override // com.google.android.gms.internal.ads.zzeai
    public final zzeaf zzd() {
        return this.zzh.zzb();
    }
}
