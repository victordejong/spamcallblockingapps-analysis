package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajc.class */
public final class zzajc implements Runnable {
    private final /* synthetic */ zzajb zzdis;

    public zzajc(zzajb zzajbVar) {
        this.zzdis = zzajbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdis.disconnect();
    }
}
