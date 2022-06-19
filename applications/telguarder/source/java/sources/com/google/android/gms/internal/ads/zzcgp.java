package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgp.class */
public final class zzcgp implements zzdzl<zzbeb> {
    private final /* synthetic */ zzdmw zzgjb;
    private final /* synthetic */ zzdnb zzgjc;

    public zzcgp(zzcgk zzcgkVar, zzdmw zzdmwVar, zzdnb zzdnbVar) {
        this.zzgjb = zzdmwVar;
        this.zzgjc = zzdnbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(zzbeb zzbebVar) {
        zzbebVar.zza(this.zzgjb, this.zzgjc);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
    }
}
