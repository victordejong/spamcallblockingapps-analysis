package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbtx.class */
public final class zzbtx implements Runnable {
    private final WeakReference<zzbts> zzfzr;

    /* JADX INFO: Access modifiers changed from: private */
    public zzbtx(zzbts zzbtsVar) {
        this.zzfzr = new WeakReference<>(zzbtsVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbts zzbtsVar = this.zzfzr.get();
        if (zzbtsVar != null) {
            zzbtsVar.zzalt();
        }
    }
}
