package com.google.android.gms.stats;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/stats/zzb.class */
public final class zzb implements Runnable {
    private final /* synthetic */ WakeLock zzp;

    public zzb(WakeLock wakeLock) {
        this.zzp = wakeLock;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzp.zza(0);
    }
}
