package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcwf.class */
public final class zzcwf extends zzcwl {
    private final zzbvm zzgwf;

    public zzcwf(zzbrl zzbrlVar, zzbsd zzbsdVar, zzbsm zzbsmVar, zzbsw zzbswVar, zzbvt zzbvtVar, zzbtj zzbtjVar, zzbyp zzbypVar, zzbvm zzbvmVar, zzbrt zzbrtVar) {
        super(zzbrlVar, zzbsdVar, zzbsmVar, zzbswVar, zzbvtVar, zzbtjVar, zzbypVar, zzbvmVar, zzbrtVar);
        this.zzgwf = zzbvmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcwl, com.google.android.gms.internal.ads.zzank
    public final void onAdImpression() {
        this.zzgwf.zzale();
    }
}
