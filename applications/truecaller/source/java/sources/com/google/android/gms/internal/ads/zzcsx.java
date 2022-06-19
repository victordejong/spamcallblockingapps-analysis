package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcsx.class */
public final class zzcsx implements zzdbf {
    private final zzfac zza;
    private final zzfal zzb;
    private final zzffr zzc;
    private final zzffu zzd;

    public zzcsx(zzfal zzfalVar, zzffu zzffuVar, zzffr zzffrVar) {
        this.zzb = zzfalVar;
        this.zzd = zzffuVar;
        this.zzc = zzffrVar;
        this.zza = zzfalVar.zzb.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final void zzbD(zzbcz zzbczVar) {
        this.zzd.zza(this.zzc.zza(this.zzb, null, this.zza.zza));
    }
}
