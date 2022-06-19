package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxt.class */
public final class zzaxt implements Runnable {
    public final /* synthetic */ zzara zza;
    public final /* synthetic */ zzaxu zzb;

    public zzaxt(zzaxu zzaxuVar, zzara zzaraVar) {
        this.zzb = zzaxuVar;
        this.zza = zzaraVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zza();
    }
}
