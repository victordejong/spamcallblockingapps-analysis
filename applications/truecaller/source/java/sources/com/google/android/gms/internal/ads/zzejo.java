package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzejo.class */
public final class zzejo<AdT> implements zzeec<AdT> {
    private final zzbkg zza;
    private final zzfsn zzb;
    private final zzfes zzc;
    private final zzejx zzd;

    /* JADX WARN: Multi-variable type inference failed */
    public zzejo(zzfes zzfesVar, zzfes zzfesVar2, zzfsn zzfsnVar, zzbkg zzbkgVar, zzejx zzejxVar) {
        this.zzc = zzfesVar;
        this.zzb = zzfesVar2;
        this.zza = zzfsnVar;
        this.zzd = zzbkgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeec
    public final boolean zza(zzfal zzfalVar, zzezz zzezzVar) {
        zzfae zzfaeVar;
        return (this.zza == null || (zzfaeVar = zzezzVar.zzs) == null || zzfaeVar.zza == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzeec
    public final zzfsm<AdT> zzb(zzfal zzfalVar, zzezz zzezzVar) {
        zzchl zzchlVar = new zzchl();
        zzejt zzejtVar = new zzejt();
        zzejtVar.zzd(new zzejn(this, zzchlVar, zzfalVar, zzezzVar, zzejtVar));
        zzfae zzfaeVar = zzezzVar.zzs;
        zzbkb zzbkbVar = new zzbkb(zzejtVar, zzfaeVar.zzb, zzfaeVar.zza);
        zzfes zzfesVar = this.zzc;
        return zzfed.zzd(new zzfdx(this, zzbkbVar) { // from class: com.google.android.gms.internal.ads.zzejm
            private final zzejo zza;
            private final zzbkb zzb;

            {
                this.zza = this;
                this.zzb = zzbkbVar;
            }

            @Override // com.google.android.gms.internal.ads.zzfdx
            public final void zza() {
                this.zza.zzc(this.zzb);
            }
        }, this.zzb, zzfem.CUSTOM_RENDER_SYN, zzfesVar).zzj(zzfem.CUSTOM_RENDER_ACK).zze(zzchlVar).zzi();
    }

    public final /* synthetic */ void zzc(zzbkb zzbkbVar) throws Exception {
        this.zza.zze(zzbkbVar);
    }
}
