package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcid.class */
public final class zzcid implements Runnable {
    public final /* synthetic */ zzcig zza;

    public zzcid(zzcig zzcigVar) {
        this.zza = zzcigVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcih zzcihVar;
        zzcih zzcihVar2;
        zzcih zzcihVar3;
        zzcihVar = this.zza.zzs;
        if (zzcihVar != null) {
            zzcihVar2 = this.zza.zzs;
            zzcihVar2.zzd();
            zzcihVar3 = this.zza.zzs;
            zzcihVar3.zzh();
        }
    }
}
