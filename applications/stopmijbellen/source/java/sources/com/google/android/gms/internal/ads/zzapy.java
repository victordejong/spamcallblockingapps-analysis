package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzapy.class */
public final class zzapy implements Runnable {
    public final /* synthetic */ zzapg zza;
    public final /* synthetic */ zzaqc zzb;

    public zzapy(zzaqc zzaqcVar, zzapg zzapgVar) {
        this.zzb = zzaqcVar;
        this.zza = zzapgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzaqd zzaqdVar;
        zzaqdVar = this.zzb.zzb;
        zzaqdVar.zzh(this.zza);
    }
}
