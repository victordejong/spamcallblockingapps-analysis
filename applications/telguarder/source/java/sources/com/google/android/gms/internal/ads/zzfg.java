package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfg.class */
public final class zzfg implements Runnable {
    private final /* synthetic */ zzfc zzzo;

    public zzfg(zzfc zzfcVar) {
        this.zzzo = zzfcVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzabp.initialize(this.zzzo.context);
    }
}
