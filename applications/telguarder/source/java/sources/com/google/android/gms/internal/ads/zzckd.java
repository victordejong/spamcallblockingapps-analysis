package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzckd.class */
public final class zzckd implements zzbrr, zzbtb, zzbua {
    private final zzckl zzgln;
    private final zzckw zzglo;

    public zzckd(zzckl zzcklVar, zzckw zzckwVar) {
        this.zzgln = zzcklVar;
        this.zzglo = zzckwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void onAdLoaded() {
        this.zzgln.zzso().put("action", "loaded");
        this.zzglo.zzo(this.zzgln.zzso());
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzb(zzdnl zzdnlVar) {
        this.zzgln.zzc(zzdnlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbrr
    public final void zzc(zzvg zzvgVar) {
        this.zzgln.zzso().put("action", "ftl");
        this.zzgln.zzso().put("ftl", String.valueOf(zzvgVar.errorCode));
        this.zzgln.zzso().put("ed", zzvgVar.zzchh);
        this.zzglo.zzo(this.zzgln.zzso());
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzd(zzatq zzatqVar) {
        this.zzgln.zzi(zzatqVar.zzdxi);
    }
}
