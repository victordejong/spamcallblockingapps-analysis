package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxr.class */
public final class zzaxr implements Runnable {
    public final /* synthetic */ int zza;
    public final /* synthetic */ int zzb;
    public final /* synthetic */ int zzc;
    public final /* synthetic */ float zzd;
    public final /* synthetic */ zzaxu zze;

    public zzaxr(zzaxu zzaxuVar, int i, int i2, int i3, float f) {
        this.zze = zzaxuVar;
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzaxv zzaxvVar;
        zzaxvVar = this.zze.zzb;
        zzaxvVar.zzo(this.zza, this.zzb, this.zzc, this.zzd);
    }
}
