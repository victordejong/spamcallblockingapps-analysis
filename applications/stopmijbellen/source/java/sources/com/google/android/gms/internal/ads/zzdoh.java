package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdoh.class */
public final class zzdoh implements zzgpr<zzdog> {
    private final zzgqe<zzcgq> zza;
    private final zzgqe<Context> zzb;
    private final zzgqe<zzchh> zzc;
    private final zzgqe<View> zzd;
    private final zzgqe<zzbbg> zze;

    public zzdoh(zzgqe<zzcgq> zzgqeVar, zzgqe<Context> zzgqeVar2, zzgqe<zzchh> zzgqeVar3, zzgqe<View> zzgqeVar4, zzgqe<zzbbg> zzgqeVar5) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdog(((zzdnj) this.zza).zzb(), ((zzffh) this.zzb).zza(), this.zzc.zzb(), ((zzdnc) this.zzd).zza(), this.zze.zzb());
    }
}
