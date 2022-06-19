package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzden.class */
public final class zzden implements zzgpr<zzcgf> {
    private final zzdem zza;
    private final zzgqe<Context> zzb;
    private final zzgqe<zzcjf> zzc;
    private final zzgqe<zzfdn> zzd;
    private final zzgqe<zzcgb> zze;

    public zzden(zzdem zzdemVar, zzgqe<Context> zzgqeVar, zzgqe<zzcjf> zzgqeVar2, zzgqe<zzfdn> zzgqeVar3, zzgqe<zzcgb> zzgqeVar4) {
        this.zza = zzdemVar;
        this.zzb = zzgqeVar;
        this.zzc = zzgqeVar2;
        this.zzd = zzgqeVar3;
        this.zze = zzgqeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* synthetic */ Object zzb() {
        Context zzb = this.zzb.zzb();
        zzcjf zza = ((zzcrb) this.zzc).zza();
        zzfdn zza2 = ((zzdbl) this.zzd).zza();
        zzcgb zzcgbVar = new zzcgb();
        zzcgc zzcgcVar = zza2.zzB;
        if (zzcgcVar != null) {
            return new zzcfz(zzb, zza, zzcgcVar, zza2.zzt.zzb, zzcgbVar, null);
        }
        return null;
    }
}
