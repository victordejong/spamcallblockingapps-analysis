package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeph.class */
public final class zzeph implements zzepm<zzdav> {
    public final /* synthetic */ zzepi zza;

    public zzeph(zzepi zzepiVar) {
        this.zza = zzepiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final void zza() {
        synchronized (this.zza) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void zzb(zzdav zzdavVar) {
        synchronized (this.zza) {
            this.zza.zzc = zzdavVar.zzl();
            zzdavVar.zzU();
        }
    }
}
