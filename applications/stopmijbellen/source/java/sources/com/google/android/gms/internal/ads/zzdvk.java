package com.google.android.gms.internal.ads;

import javax.annotation.ParametersAreNonnullByDefault;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvk.class */
public final class zzdvk implements zzbsi {
    private final zzdfy zza;
    private final zzces zzb;
    private final String zzc;
    private final String zzd;

    public zzdvk(zzdfy zzdfyVar, zzfdn zzfdnVar) {
        this.zza = zzdfyVar;
        this.zzb = zzfdnVar.zzm;
        this.zzc = zzfdnVar.zzk;
        this.zzd = zzfdnVar.zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzbsi
    @ParametersAreNonnullByDefault
    public final void zza(zzces zzcesVar) {
        int i;
        String str;
        zzces zzcesVar2 = this.zzb;
        if (zzcesVar2 != null) {
            zzcesVar = zzcesVar2;
        }
        if (zzcesVar != null) {
            String str2 = zzcesVar.zza;
            i = zzcesVar.zzb;
            str = str2;
        } else {
            i = 1;
            str = "";
        }
        this.zza.zzd(new zzced(str, i), this.zzc, this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzbsi
    public final void zzb() {
        this.zza.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzbsi
    public final void zzc() {
        this.zza.zzf();
    }
}
