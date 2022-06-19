package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfrc.class */
public final class zzfrc implements Runnable {
    public final /* synthetic */ zzfoe zza;
    public final /* synthetic */ zzfrd zzb;

    public zzfrc(zzfrd zzfrdVar, zzfoe zzfoeVar) {
        this.zzb = zzfrdVar;
        this.zza = zzfoeVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfrd.zzy(this.zzb, this.zza);
    }
}
