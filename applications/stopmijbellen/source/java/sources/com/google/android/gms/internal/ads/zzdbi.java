package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbi.class */
public final class zzdbi implements zzfwm<zzdav> {
    public final /* synthetic */ zzfwm zza;
    public final /* synthetic */ zzdbj zzb;

    public zzdbi(zzdbj zzdbjVar, zzfwm zzfwmVar) {
        this.zzb = zzdbjVar;
        this.zza = zzfwmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
        zzcjm.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdbf
            @Override // java.lang.Runnable
            public final void run() {
                zzdbj.this.zzd();
            }
        });
        this.zza.zza(th);
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final /* bridge */ /* synthetic */ void zzb(zzdav zzdavVar) {
        zzcjm.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdbf
            @Override // java.lang.Runnable
            public final void run() {
                zzdbj.this.zzd();
            }
        });
        this.zza.zzb(zzdavVar);
    }
}
