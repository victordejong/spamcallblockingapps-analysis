package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcic.class */
public final class zzcic implements Runnable {
    public final /* synthetic */ int zza;
    public final /* synthetic */ int zzb;
    public final /* synthetic */ zzcig zzc;

    public zzcic(zzcig zzcigVar, int i, int i2) {
        this.zzc = zzcigVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcih zzcihVar;
        zzcih zzcihVar2;
        zzcihVar = this.zzc.zzs;
        if (zzcihVar != null) {
            zzcihVar2 = this.zzc.zzs;
            zzcihVar2.zzj(this.zza, this.zzb);
        }
    }
}
