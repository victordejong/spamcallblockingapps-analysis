package com.google.android.gms.stats;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/stats/zzb.class */
final class zzb implements Runnable {
    private final /* synthetic */ WakeLock zzp;

    public zzb(WakeLock wakeLock) {
        this.zzp = wakeLock;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzp.zza(0);
    }
}
