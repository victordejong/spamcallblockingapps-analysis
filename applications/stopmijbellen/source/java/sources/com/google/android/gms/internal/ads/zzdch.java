package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdch.class */
public final class zzdch implements zzgpr<zzcie> {
    private final zzgqe<Clock> zza;
    private final zzgqe<zzcio> zzb;
    private final zzgqe<zzfef> zzc;

    public zzdch(zzgqe<Clock> zzgqeVar, zzgqe<zzcio> zzgqeVar2, zzgqe<zzfef> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return ((zzffi) this.zzb).zzb().zzb(this.zza.zzb(), ((zzdei) this.zzc).zza().zzf);
    }
}
