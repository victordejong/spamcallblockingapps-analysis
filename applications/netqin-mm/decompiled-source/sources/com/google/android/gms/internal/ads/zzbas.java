package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbas.class */
public final class zzbas {

    /* renamed from: a */
    public HandlerThread f24713a = null;

    /* renamed from: b */
    public Handler f24714b = null;

    /* renamed from: c */
    public int f24715c = 0;

    /* renamed from: d */
    public final Object f24716d = new Object();

    /* renamed from: a */
    public final Handler m15948a() {
        return this.f24714b;
    }

    /* renamed from: b */
    public final Looper m15947b() {
        Looper looper;
        synchronized (this.f24716d) {
            if (this.f24715c != 0) {
                Preconditions.m17287a(this.f24713a, "Invalid state: mHandlerThread should already been initialized.");
            } else if (this.f24713a == null) {
                zzayp.m16153g("Starting the looper thread.");
                HandlerThread handlerThread = new HandlerThread("LooperProvider");
                this.f24713a = handlerThread;
                handlerThread.start();
                this.f24714b = new zzdvo(this.f24713a.getLooper());
                zzayp.m16153g("Looper thread started.");
            } else {
                zzayp.m16153g("Resuming the looper thread");
                this.f24716d.notifyAll();
            }
            this.f24715c++;
            looper = this.f24713a.getLooper();
        }
        return looper;
    }
}
