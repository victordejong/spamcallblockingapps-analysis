package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbtx.class */
public final class zzbtx implements Runnable {
    private final WeakReference<zzbts> zzfzr;

    private zzbtx(zzbts zzbtsVar) {
        this.zzfzr = new WeakReference<>(zzbtsVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbts zzbtsVar = this.zzfzr.get();
        if (zzbtsVar != null) {
            zzbts.zza(zzbtsVar);
        }
    }
}
