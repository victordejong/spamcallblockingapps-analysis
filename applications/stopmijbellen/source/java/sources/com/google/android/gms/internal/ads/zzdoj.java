package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdoj.class */
public final class zzdoj implements zzgpr<zzdoi> {
    private final zzgqe<Map<String, zzeht<zzdbc>>> zza;
    private final zzgqe<Map<String, zzeht<zzdpx>>> zzb;
    private final zzgqe<Map<String, zzekh<zzdpx>>> zzc;
    private final zzgqe<zzday<zzcyw>> zzd;
    private final zzgqe<zzdqn> zze;

    public zzdoj(zzgqe<Map<String, zzeht<zzdbc>>> zzgqeVar, zzgqe<Map<String, zzeht<zzdpx>>> zzgqeVar2, zzgqe<Map<String, zzekh<zzdpx>>> zzgqeVar3, zzgqe<zzday<zzcyw>> zzgqeVar4, zzgqe<zzdqn> zzgqeVar5) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdoi(((zzgpv) this.zza).zzb(), ((zzgpv) this.zzb).zzb(), ((zzgpv) this.zzc).zzb(), this.zzd, ((zzdon) this.zze).zza());
    }
}
