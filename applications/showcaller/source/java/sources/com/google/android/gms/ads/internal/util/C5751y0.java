package com.google.android.gms.ads.internal.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.internal.ads.au2;
/* renamed from: com.google.android.gms.ads.internal.util.y0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/y0.class */
public final class C5751y0 {

    /* renamed from: a */
    private HandlerThread f18596a = null;

    /* renamed from: b */
    private Handler f18597b = null;

    /* renamed from: c */
    private int f18598c = 0;

    /* renamed from: d */
    private final Object f18599d = new Object();

    /* renamed from: a */
    public final Looper m17910a() {
        Looper looper;
        synchronized (this.f18599d) {
            if (this.f18598c != 0) {
                C6155o.m17017k(this.f18596a, "Invalid state: mHandlerThread should already been initialized.");
            } else if (this.f18596a == null) {
                C5722o1.m17990k("Starting the looper thread.");
                HandlerThread handlerThread = new HandlerThread("LooperProvider");
                this.f18596a = handlerThread;
                handlerThread.start();
                this.f18597b = new au2(this.f18596a.getLooper());
                C5722o1.m17990k("Looper thread started.");
            } else {
                C5722o1.m17990k("Resuming the looper thread");
                this.f18599d.notifyAll();
            }
            this.f18598c++;
            looper = this.f18596a.getLooper();
        }
        return looper;
    }

    /* renamed from: b */
    public final Handler m17909b() {
        return this.f18597b;
    }
}
