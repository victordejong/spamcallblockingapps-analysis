package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxq.class */
public final class zzaxq implements Runnable {
    public final /* synthetic */ int zza;
    public final /* synthetic */ long zzb;
    public final /* synthetic */ zzaxu zzc;

    public zzaxq(zzaxu zzaxuVar, int i, long j) {
        this.zzc = zzaxuVar;
        this.zza = i;
        this.zzb = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzaxv zzaxvVar;
        zzaxvVar = this.zzc.zzb;
        zzaxvVar.zzl(this.zza, this.zzb);
    }
}
