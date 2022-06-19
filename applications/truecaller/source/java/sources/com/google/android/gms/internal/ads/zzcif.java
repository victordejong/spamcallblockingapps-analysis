package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcif.class */
public final class zzcif implements Runnable {
    public final /* synthetic */ zzcig zza;

    public zzcif(zzcig zzcigVar) {
        this.zza = zzcigVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcih zzcihVar;
        zzcih zzcihVar2;
        zzcihVar = this.zza.zzs;
        if (zzcihVar != null) {
            zzcihVar2 = this.zza.zzs;
            zzcihVar2.zzd();
        }
    }
}
