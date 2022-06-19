package com.google.android.gms.ads.internal.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.internal.ads.tv1;
/* renamed from: com.google.android.gms.ads.internal.util.i0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/i0.class */
public final class C1424i0 {

    /* renamed from: a */
    private HandlerThread f5575a = null;

    /* renamed from: b */
    private Handler f5576b = null;

    /* renamed from: c */
    private int f5577c = 0;

    /* renamed from: d */
    private final Object f5578d = new Object();

    /* renamed from: a */
    public final Looper m8824a() {
        Looper looper;
        synchronized (this.f5578d) {
            if (this.f5577c != 0) {
                C1581h.m8346i(this.f5575a, "Invalid state: mHandlerThread should already been initialized.");
            } else if (this.f5575a == null) {
                y0.k("Starting the looper thread.");
                HandlerThread handlerThread = new HandlerThread("LooperProvider");
                this.f5575a = handlerThread;
                handlerThread.start();
                this.f5576b = new tv1(this.f5575a.getLooper());
                y0.k("Looper thread started.");
            } else {
                y0.k("Resuming the looper thread");
                this.f5578d.notifyAll();
            }
            this.f5577c++;
            looper = this.f5575a.getLooper();
        }
        return looper;
    }

    /* renamed from: b */
    public final Handler m8823b() {
        return this.f5576b;
    }
}
