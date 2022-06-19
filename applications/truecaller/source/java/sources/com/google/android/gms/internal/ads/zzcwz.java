package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcwz.class */
public final class zzcwz implements zzgla<zzcwy> {
    private final zzgln<zzezz> zza;
    private final zzgln<zzdbu> zzb;
    private final zzgln<zzdcz> zzc;

    public zzcwz(zzgln<zzezz> zzglnVar, zzgln<zzdbu> zzglnVar2, zzgln<zzdcz> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcwy(((zzcxw) this.zza).zza(), this.zzb.zzb(), this.zzc.zzb());
    }
}
