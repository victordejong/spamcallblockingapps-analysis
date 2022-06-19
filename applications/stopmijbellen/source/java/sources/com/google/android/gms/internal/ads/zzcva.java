package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcva.class */
public final class zzcva implements zzgpr<zzcje> {
    private final zzgqe<zzbwu> zza;
    private final zzgqe<String> zzb;

    public zzcva(zzgqe<zzbwu> zzgqeVar, zzgqe<String> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* synthetic */ Object zzb() {
        zzbww zzbwwVar = new zzbww();
        String zzb = this.zzb.zzb();
        return zzbmy.zza.zze().booleanValue() ? new zzbwv(zzbwwVar, zzb) : new zzcje(zzb);
    }
}
