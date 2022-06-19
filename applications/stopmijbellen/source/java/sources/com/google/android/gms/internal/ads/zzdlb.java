package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlb.class */
public final class zzdlb implements zzgpr<zzelg> {
    private final zzdke zza;
    private final zzgqe<Clock> zzb;
    private final zzgqe<zzelh> zzc;
    private final zzgqe<zzehy> zzd;
    private final zzgqe<zzfjs> zze;

    public zzdlb(zzdke zzdkeVar, zzgqe<Clock> zzgqeVar, zzgqe<zzelh> zzgqeVar2, zzgqe<zzehy> zzgqeVar3, zzgqe<zzfjs> zzgqeVar4) {
        this.zza = zzdkeVar;
        this.zzb = zzgqeVar;
        this.zzc = zzgqeVar2;
        this.zzd = zzgqeVar3;
        this.zze = zzgqeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzelg zzb = this.zza.zzb(this.zzb.zzb(), ((zzeli) this.zzc).zzb(), this.zzd.zzb(), this.zze.zzb());
        zzgpz.zzb(zzb);
        return zzb;
    }
}
