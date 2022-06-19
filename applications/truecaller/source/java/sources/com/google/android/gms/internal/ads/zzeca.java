package com.google.android.gms.internal.ads;

import com.razorpay.AnalyticsConstants;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeca.class */
public final class zzeca implements zzddx, zzdcq, zzdbf, zzdeb {
    private final zzffb zza;
    private final zzffc zzb;
    private final zzcgi zzc;

    public zzeca(zzffb zzffbVar, zzffc zzffcVar, zzcgi zzcgiVar) {
        this.zza = zzffbVar;
        this.zzb = zzffcVar;
        this.zzc = zzcgiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdeb
    public final void zzbB(boolean z) {
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfl)).booleanValue()) {
            this.zza.zzc("scar", "true");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final void zzbD(zzbcz zzbczVar) {
        zzffb zzffbVar = this.zza;
        zzffbVar.zzc("action", "ftl");
        zzffbVar.zzc("ftl", String.valueOf(zzbczVar.zza));
        zzffbVar.zzc("ed", zzbczVar.zzc);
        this.zzb.zza(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzddx
    public final void zzbG(zzcbj zzcbjVar) {
        this.zza.zzf(zzcbjVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdcq
    public final void zzf() {
        zzffc zzffcVar = this.zzb;
        zzffb zzffbVar = this.zza;
        zzffbVar.zzc("action", AnalyticsConstants.LOADED);
        zzffcVar.zza(zzffbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzddx
    public final void zzq(zzfal zzfalVar) {
        this.zza.zzg(zzfalVar, this.zzc);
    }
}
