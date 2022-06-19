package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdqs.class */
public final class zzdqs implements zzgla<zzdqr> {
    private final zzgln<String> zza;
    private final zzgln<zzdmh> zzb;
    private final zzgln<zzdmm> zzc;

    public zzdqs(zzgln<String> zzglnVar, zzgln<zzdmh> zzglnVar2, zzgln<zzdmm> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdqr(((zzcxx) this.zza).zza(), this.zzb.zzb(), ((zzdne) this.zzc).zza());
    }
}
