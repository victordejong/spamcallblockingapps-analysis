package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcwg.class */
public final class zzcwg extends zzcvj {
    private final zzbvm zzgwf;

    public zzcwg(zzbrl zzbrlVar, zzbsd zzbsdVar, zzbsm zzbsmVar, zzbsw zzbswVar, zzbrt zzbrtVar, zzbvt zzbvtVar, zzbyp zzbypVar, zzbtj zzbtjVar, zzbyk zzbykVar, zzbvm zzbvmVar) {
        super(zzbrlVar, zzbsdVar, zzbsmVar, zzbswVar, zzbrtVar, zzbvtVar, zzbypVar, zzbtjVar, zzbykVar, zzbvmVar);
        this.zzgwf = zzbvmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcwl, com.google.android.gms.internal.ads.zzank
    public final void onAdImpression() {
        this.zzgwf.zzale();
    }
}
