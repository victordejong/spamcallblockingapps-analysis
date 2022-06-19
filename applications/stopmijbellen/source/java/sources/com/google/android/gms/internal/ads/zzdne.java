package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdne.class */
public final class zzdne implements zzgpr<zzdlw<zzdgf>> {
    private final zzdna zza;
    private final zzgqe<Context> zzb;
    private final zzgqe<zzcjf> zzc;
    private final zzgqe<zzfdn> zzd;
    private final zzgqe<zzfef> zze;

    public zzdne(zzdna zzdnaVar, zzgqe<Context> zzgqeVar, zzgqe<zzcjf> zzgqeVar2, zzgqe<zzfdn> zzgqeVar3, zzgqe<zzfef> zzgqeVar4) {
        this.zza = zzdnaVar;
        this.zzb = zzgqeVar;
        this.zzc = zzgqeVar2;
        this.zzd = zzgqeVar3;
        this.zze = zzgqeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        final Context zzb = this.zzb.zzb();
        final zzcjf zza = ((zzcrb) this.zzc).zza();
        final zzfdn zza2 = ((zzdbl) this.zzd).zza();
        final zzfef zza3 = ((zzdei) this.zze).zza();
        return new zzdlw(new zzdgf() { // from class: com.google.android.gms.internal.ads.zzdmy
            @Override // com.google.android.gms.internal.ads.zzdgf
            public final void zzn() {
                zzt.zzs().zzn(zzb, zza.zza, zza2.zzD.toString(), zza3.zzf);
            }
        }, zzcjm.zzf);
    }
}
