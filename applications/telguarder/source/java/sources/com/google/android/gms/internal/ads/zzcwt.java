package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcwt.class */
public final class zzcwt<AdT> implements zzcrj<AdT> {
    private final zzdrj zzfwz;
    private final zzdzv zzgwi;
    private final zzacl zzgwq;
    private final zzcwy<AdT> zzgwu;

    public zzcwt(zzdrj zzdrjVar, zzdzv zzdzvVar, zzacl zzaclVar, zzcwy<AdT> zzcwyVar) {
        this.zzfwz = zzdrjVar;
        this.zzgwi = zzdzvVar;
        this.zzgwq = zzaclVar;
        this.zzgwu = zzcwyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final boolean zza(zzdnl zzdnlVar, zzdmw zzdmwVar) {
        return (this.zzgwq == null || zzdmwVar.zzhjg == null || zzdmwVar.zzhjg.zzdsy == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final zzdzw<AdT> zzb(zzdnl zzdnlVar, zzdmw zzdmwVar) {
        zzbaa zzbaaVar = new zzbaa();
        zzcxb zzcxbVar = new zzcxb();
        zzcxbVar.zza(new zzcwv(this, zzbaaVar, zzdnlVar, zzdmwVar, zzcxbVar));
        return this.zzfwz.zzt(zzdrk.CUSTOM_RENDER_SYN).zza(new zzdqt(this, new zzace(zzcxbVar, zzdmwVar.zzhjg.zzdsw, zzdmwVar.zzhjg.zzdsy)) { // from class: com.google.android.gms.internal.ads.zzcww
            private final zzace zzgws;
            private final zzcwt zzgxa;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgxa = this;
                this.zzgws = zzaceVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdqt
            public final void run() {
                this.zzgxa.zzb(this.zzgws);
            }
        }, this.zzgwi).zzv(zzdrk.CUSTOM_RENDER_ACK).zze(zzbaaVar).zzaxj();
    }

    public final /* synthetic */ void zzb(zzace zzaceVar) throws Exception {
        this.zzgwq.zza(zzaceVar);
    }
}
