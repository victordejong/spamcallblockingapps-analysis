package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeol.class */
public final class zzeol implements zzgla<zzeoj> {
    private final zzgln<zzfsn> zza;
    private final zzgln<zzdtk> zzb;
    private final zzgln<zzfar> zzc;
    private final zzgln<String> zzd;

    public zzeol(zzgln<zzfsn> zzglnVar, zzgln<zzdtk> zzglnVar2, zzgln<zzfar> zzglnVar3, zzgln<String> zzglnVar4) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzeoj(zzfsnVar, this.zzb.zzb(), ((zzdat) this.zzc).zza(), this.zzd.zzb());
    }
}
