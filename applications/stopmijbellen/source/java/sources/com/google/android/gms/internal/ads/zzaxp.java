package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxp.class */
public final class zzaxp implements Runnable {
    public final /* synthetic */ zzapg zza;
    public final /* synthetic */ zzaxu zzb;

    public zzaxp(zzaxu zzaxuVar, zzapg zzapgVar) {
        this.zzb = zzaxuVar;
        this.zza = zzapgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzaxv zzaxvVar;
        zzaxvVar = this.zzb.zzb;
        zzaxvVar.zzn(this.zza);
    }
}
