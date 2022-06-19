package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdyw.class */
public final class zzdyw implements zzgpr<zzdyv> {
    private final zzgqe<zzdze> zza;
    private final zzgqe<zzcio> zzb;

    public zzdyw(zzgqe<zzdze> zzgqeVar, zzgqe<zzcio> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdyv(this.zza.zzb(), ((zzffi) this.zzb).zzb());
    }
}
