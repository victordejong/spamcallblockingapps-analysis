package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzequ.class */
public final class zzequ implements zzgpr<zzeqo> {
    private final zzgqe<zzfxb> zza;
    private final zzgqe<zzdww> zzb;
    private final zzgqe<zzebb> zzc;
    private final zzgqe<zzeqr> zzd;

    public zzequ(zzgqe<zzfxb> zzgqeVar, zzgqe<zzdww> zzgqeVar2, zzgqe<zzebb> zzgqeVar3, zzgqe<zzeqr> zzgqeVar4) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzeqo(zzfxbVar, this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb());
    }
}
