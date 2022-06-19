package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfdd.class */
public final class zzfdd implements zzepm<zzdvn> {
    public final /* synthetic */ zzfde zza;

    public zzfdd(zzfde zzfdeVar) {
        this.zza = zzfdeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zzf = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void zzb(zzdvn zzdvnVar) {
        zzdvn zzdvnVar2;
        zzdvn zzdvnVar3 = zzdvnVar;
        synchronized (this.zza) {
            this.zza.zzf = zzdvnVar3;
            zzdvnVar2 = this.zza.zzf;
            zzdvnVar2.zzU();
        }
    }
}
