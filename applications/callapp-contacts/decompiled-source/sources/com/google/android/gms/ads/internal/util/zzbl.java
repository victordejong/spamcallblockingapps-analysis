package com.google.android.gms.ads.internal.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.ads.cxg;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbl.class */
public final class zzbl {
    private HandlerThread zzeiq = null;
    private Handler handler = null;
    private int zzeir = 0;
    private final Object lock = new Object();

    public final Handler getHandler() {
        return this.handler;
    }

    public final Looper zzaai() {
        Looper looper;
        synchronized (this.lock) {
            if (this.zzeir != 0) {
                o.a(this.zzeiq, "Invalid state: mHandlerThread should already been initialized.");
            } else if (this.zzeiq == null) {
                zzd.zzed("Starting the looper thread.");
                HandlerThread handlerThread = new HandlerThread("LooperProvider");
                this.zzeiq = handlerThread;
                handlerThread.start();
                this.handler = new cxg(this.zzeiq.getLooper());
                zzd.zzed("Looper thread started.");
            } else {
                zzd.zzed("Resuming the looper thread");
                this.lock.notifyAll();
            }
            this.zzeir++;
            looper = this.zzeiq.getLooper();
        }
        return looper;
    }
}
