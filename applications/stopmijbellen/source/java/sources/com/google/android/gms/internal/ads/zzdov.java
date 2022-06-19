package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdov.class */
public final class zzdov implements zzgpr<zzday<zzcyw>> {
    private final zzgqe<zzcqm> zza;
    private final zzgqe<zzdeb> zzb;
    private final zzgqe<zzdke> zzc;
    private final zzgqe<zzdok> zzd;
    private final zzgqe<zzdhg> zze;

    public zzdov(zzgqe<zzcqm> zzgqeVar, zzgqe<zzdeb> zzgqeVar2, zzgqe<zzdke> zzgqeVar3, zzgqe<zzdok> zzgqeVar4, zzgqe<zzdhg> zzgqeVar5) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzcqm zzb = this.zza.zzb();
        zzdeb zza = ((zzdej) this.zzb).zza();
        zzdke zza2 = ((zzdkx) this.zzc).zza();
        zzdok zza3 = ((zzdom) this.zzd).zza();
        zzdhg zzb2 = ((zzcyv) this.zze).zzb();
        zzczs zzg = zzb.zzg();
        zzg.zzi(zza.zzg());
        zzg.zzf(zza2);
        zzg.zzd(zza3);
        zzg.zze(new zzenh(null));
        zzg.zzg(new zzdap(zzb2));
        zzg.zzc(new zzcyt(null));
        zzday<zzcyw> zzc = zzg.zzj().zzc();
        zzgpz.zzb(zzc);
        return zzc;
    }
}
