package com.google.android.gms.ads.internal.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzdvl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbl.class */
public final class zzbl {
    private HandlerThread zzegn = null;
    private Handler handler = null;
    private int zzego = 0;
    private final Object lock = new Object();

    public final Handler getHandler() {
        return this.handler;
    }

    public final Looper zzzp() {
        Looper looper;
        synchronized (this.lock) {
            if (this.zzego != 0) {
                Preconditions.checkNotNull(this.zzegn, "Invalid state: mHandlerThread should already been initialized.");
            } else if (this.zzegn == null) {
                zzd.zzeb("Starting the looper thread.");
                HandlerThread handlerThread = new HandlerThread("LooperProvider");
                this.zzegn = handlerThread;
                handlerThread.start();
                this.handler = new zzdvl(this.zzegn.getLooper());
                zzd.zzeb("Looper thread started.");
            } else {
                zzd.zzeb("Resuming the looper thread");
                this.lock.notifyAll();
            }
            this.zzego++;
            looper = this.zzegn.getLooper();
        }
        return looper;
    }
}
