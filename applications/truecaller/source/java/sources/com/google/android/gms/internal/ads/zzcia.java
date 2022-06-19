package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcia.class */
public final class zzcia implements Runnable {
    public final /* synthetic */ String zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ zzcig zzc;

    public zzcia(zzcig zzcigVar, String str, String str2) {
        this.zzc = zzcigVar;
        this.zza = str;
        this.zzb = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcih zzcihVar;
        zzcih zzcihVar2;
        zzcihVar = this.zzc.zzs;
        if (zzcihVar != null) {
            zzcihVar2 = this.zzc.zzs;
            zzcihVar2.zzf(this.zza, this.zzb);
        }
    }
}
