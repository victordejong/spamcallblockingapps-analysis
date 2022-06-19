package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.internal.C2662s;
/* renamed from: com.google.android.gms.internal.ads.xc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xc.class */
public final class C3619xc {

    /* renamed from: a */
    private HandlerThread f17580a = null;

    /* renamed from: b */
    private Handler f17581b = null;

    /* renamed from: c */
    private int f17582c = 0;

    /* renamed from: d */
    private final Object f17583d = new Object();

    /* renamed from: a */
    public final Looper m6841a() {
        Looper looper;
        synchronized (this.f17583d) {
            if (this.f17582c != 0) {
                C2662s.m13980a(this.f17580a, "Invalid state: mHandlerThread should already been initialized.");
            } else if (this.f17580a == null) {
                C3556uu.m7052a("Starting the looper thread.");
                this.f17580a = new HandlerThread("LooperProvider");
                this.f17580a.start();
                this.f17581b = new cnz(this.f17580a.getLooper());
                C3556uu.m7052a("Looper thread started.");
            } else {
                C3556uu.m7052a("Resuming the looper thread");
                this.f17583d.notifyAll();
            }
            this.f17582c++;
            looper = this.f17580a.getLooper();
        }
        return looper;
    }

    /* renamed from: b */
    public final Handler m6840b() {
        return this.f17581b;
    }
}
