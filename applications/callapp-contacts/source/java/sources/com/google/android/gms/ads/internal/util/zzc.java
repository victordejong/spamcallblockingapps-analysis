package com.google.android.gms.ads.internal.util;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzc.class */
public final class zzc implements Runnable {
    private final /* synthetic */ zza zzeft;

    public zzc(zza zzaVar) {
        this.zzeft = zzaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzeft.thread = Thread.currentThread();
        this.zzeft.zzwp();
    }
}
