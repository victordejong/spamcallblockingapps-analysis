package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmi.class */
public final class zzdmi implements zzgpr<zzdmh> {
    private final zzgqe<zzfdn> zza;
    private final zzgqe<zzfjs> zzb;

    public zzdmi(zzgqe<zzfdn> zzgqeVar, zzgqe<zzfjs> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdmh(((zzdbl) this.zza).zza(), this.zzb.zzb());
    }
}
