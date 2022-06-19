package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbh.class */
public final class zzdbh implements zzfwm<zzdbc> {
    public final /* synthetic */ zzfwm zza;
    public final /* synthetic */ zzdbj zzb;

    public zzdbh(zzdbj zzdbjVar, zzfwm zzfwmVar) {
        this.zzb = zzdbjVar;
        this.zza = zzfwmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
        this.zza.zza(th);
        zzcjm.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdbf
            @Override // java.lang.Runnable
            public final void run() {
                zzdbj.this.zzd();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final /* bridge */ /* synthetic */ void zzb(zzdbc zzdbcVar) {
        zzdbj.zzb(this.zzb, zzdbcVar.zza, this.zza);
    }
}
