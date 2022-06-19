package com.google.android.gms.ads.internal.util;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzc.class */
public final class zzc implements Runnable {
    private final /* synthetic */ zza zzedr;

    public zzc(zza zzaVar) {
        this.zzedr = zzaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzedr.thread = Thread.currentThread();
        this.zzedr.zzwe();
    }
}
