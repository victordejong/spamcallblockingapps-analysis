package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdqn.class */
public final class zzdqn implements zzgla<zzdqm> {
    private final zzgln<String> zza;
    private final zzgln<zzdmh> zzb;
    private final zzgln<zzdmm> zzc;

    public zzdqn(zzgln<String> zzglnVar, zzgln<zzdmh> zzglnVar2, zzgln<zzdmm> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdqm(((zzcxx) this.zza).zza(), this.zzb.zzb(), ((zzdne) this.zzc).zza());
    }
}
