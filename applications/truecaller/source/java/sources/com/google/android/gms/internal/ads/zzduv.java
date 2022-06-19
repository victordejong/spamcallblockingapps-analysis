package com.google.android.gms.internal.ads;

import com.razorpay.AnalyticsConstants;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzduv.class */
public final class zzduv implements zzddx, zzdcq, zzdbf, zzdeb {
    private final zzdve zza;
    private final zzdvn zzb;

    public zzduv(zzdve zzdveVar, zzdvn zzdvnVar) {
        this.zza = zzdveVar;
        this.zzb = zzdvnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdeb
    public final void zzbB(boolean z) {
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfl)).booleanValue()) {
            this.zza.zzc().put("scar", "true");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final void zzbD(zzbcz zzbczVar) {
        this.zza.zzc().put("action", "ftl");
        this.zza.zzc().put("ftl", String.valueOf(zzbczVar.zza));
        this.zza.zzc().put("ed", zzbczVar.zzc);
        this.zzb.zzb(this.zza.zzc());
    }

    @Override // com.google.android.gms.internal.ads.zzddx
    public final void zzbG(zzcbj zzcbjVar) {
        this.zza.zzb(zzcbjVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdcq
    public final void zzf() {
        this.zza.zzc().put("action", AnalyticsConstants.LOADED);
        this.zzb.zzb(this.zza.zzc());
    }

    @Override // com.google.android.gms.internal.ads.zzddx
    public final void zzq(zzfal zzfalVar) {
        this.zza.zza(zzfalVar);
    }
}
