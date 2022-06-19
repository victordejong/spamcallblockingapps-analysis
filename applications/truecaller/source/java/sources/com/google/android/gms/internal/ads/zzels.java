package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzels.class */
public final class zzels implements zzelx<zzcxg> {
    public final /* synthetic */ zzelt zza;

    public zzels(zzelt zzeltVar) {
        this.zza = zzeltVar;
    }

    @Override // com.google.android.gms.internal.ads.zzelx
    public final void zza() {
        synchronized (this.zza) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzelx
    public final /* bridge */ /* synthetic */ void zzb(zzcxg zzcxgVar) {
        synchronized (this.zza) {
            this.zza.zzc = zzcxgVar.zzm();
            zzcxgVar.zzS();
        }
    }
}
