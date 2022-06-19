package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcyi.class */
public final class zzcyi implements zzfrz<Void> {
    public final /* synthetic */ zzcyj zza;

    public zzcyi(zzcyj zzcyjVar) {
        this.zza = zzcyjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zza(Throwable th) {
        zzdgh zzdghVar;
        zzdghVar = this.zza.zzf;
        zzdghVar.zzo(false);
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final /* bridge */ /* synthetic */ void zzb(Void r4) {
        zzdgh zzdghVar;
        zzdghVar = this.zza.zzf;
        zzdghVar.zzo(true);
    }
}
