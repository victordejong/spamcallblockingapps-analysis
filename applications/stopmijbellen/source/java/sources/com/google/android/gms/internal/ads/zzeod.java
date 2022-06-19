package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeod.class */
public final class zzeod implements zzepm<zzcyw> {
    public final /* synthetic */ zzeoe zza;

    public zzeod(zzeoe zzeoeVar) {
        this.zza = zzeoeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zzg = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void zzb(zzcyw zzcywVar) {
        zzcyw zzcywVar2;
        zzcyw zzcywVar3;
        zzcyw zzcywVar4;
        zzcyw zzcywVar5 = zzcywVar;
        synchronized (this.zza) {
            zzcywVar2 = this.zza.zzg;
            if (zzcywVar2 != null) {
                zzcywVar4 = this.zza.zzg;
                zzcywVar4.zzT();
            }
            this.zza.zzg = zzcywVar5;
            zzcywVar3 = this.zza.zzg;
            zzcywVar3.zzU();
        }
    }
}
