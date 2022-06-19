package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaog.class */
public final class zzaog implements Runnable {
    public final /* synthetic */ zzapf zza;
    public final /* synthetic */ zzaoi zzb;

    public zzaog(zzaoi zzaoiVar, zzapf zzapfVar) {
        this.zzb = zzaoiVar;
        this.zza = zzapfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zza();
    }
}
