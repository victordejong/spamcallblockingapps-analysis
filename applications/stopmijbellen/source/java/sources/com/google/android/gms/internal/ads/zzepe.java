package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzepe.class */
public final class zzepe implements zzepm<zzdmw> {
    public final /* synthetic */ zzepf zza;

    public zzepe(zzepf zzepfVar) {
        this.zza = zzepfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zzg = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void zzb(zzdmw zzdmwVar) {
        zzdmw zzdmwVar2;
        zzdmw zzdmwVar3 = zzdmwVar;
        synchronized (this.zza) {
            this.zza.zzg = zzdmwVar3;
            zzdmwVar2 = this.zza.zzg;
            zzdmwVar2.zzU();
        }
    }
}
