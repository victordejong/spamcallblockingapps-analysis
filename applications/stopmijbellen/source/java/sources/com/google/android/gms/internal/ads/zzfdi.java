package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfdi.class */
final class zzfdi implements zzepm<zzdvn> {
    public final /* synthetic */ zzfdk zza;

    public zzfdi(zzfdk zzfdkVar) {
        this.zza = zzfdkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zzd = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void zzb(zzdvn zzdvnVar) {
        zzdvn zzdvnVar2;
        zzdvn zzdvnVar3 = zzdvnVar;
        synchronized (this.zza) {
            this.zza.zzd = zzdvnVar3;
            zzdvnVar2 = this.zza.zzd;
            zzdvnVar2.zzU();
        }
    }
}
