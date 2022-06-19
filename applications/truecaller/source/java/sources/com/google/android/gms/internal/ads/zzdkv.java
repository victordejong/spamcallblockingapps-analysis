package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdkv.class */
public final class zzdkv implements zzgla<zzdku> {
    private final zzgln<Map<String, zzeec<zzcxn>>> zza;
    private final zzgln<Map<String, zzeec<zzdmh>>> zzb;
    private final zzgln<Map<String, zzegq<zzdmh>>> zzc;
    private final zzgln<zzcxj<zzcvh>> zzd;
    private final zzgln<zzdmx> zze;

    public zzdkv(zzgln<Map<String, zzeec<zzcxn>>> zzglnVar, zzgln<Map<String, zzeec<zzdmh>>> zzglnVar2, zzgln<Map<String, zzegq<zzdmh>>> zzglnVar3, zzgln<zzcxj<zzcvh>> zzglnVar4, zzgln<zzdmx> zzglnVar5) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdku(((zzgle) this.zza).zzb(), ((zzgle) this.zzb).zzb(), ((zzgle) this.zzc).zzb(), this.zzd, ((zzdkz) this.zze).zza());
    }
}
