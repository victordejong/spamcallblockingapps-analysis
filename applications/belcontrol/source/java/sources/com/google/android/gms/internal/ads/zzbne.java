package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbne.class */
public final /* synthetic */ class zzbne implements Runnable {
    private final AtomicReference zzfvp;

    public zzbne(AtomicReference atomicReference) {
        this.zzfvp = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Runnable runnable = (Runnable) this.zzfvp.getAndSet(null);
        if (runnable != null) {
            runnable.run();
        }
    }
}
