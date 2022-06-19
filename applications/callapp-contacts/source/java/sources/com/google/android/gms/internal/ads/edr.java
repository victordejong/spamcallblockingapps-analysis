package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/edr.class */
final class edr implements Handler.Callback, Choreographer.FrameCallback {

    /* renamed from: c */
    private static final edr f48800c = new edr();

    /* renamed from: a */
    public volatile long f48801a;

    /* renamed from: b */
    final Handler f48802b;

    /* renamed from: d */
    private final HandlerThread f48803d;

    /* renamed from: e */
    private Choreographer f48804e;

    /* renamed from: f */
    private int f48805f;

    private edr() {
        HandlerThread handlerThread = new HandlerThread("ChoreographerOwner:Handler");
        this.f48803d = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper(), this);
        this.f48802b = handler;
        handler.sendEmptyMessage(0);
    }

    /* renamed from: a */
    public static edr m15143a() {
        return f48800c;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        this.f48801a = j;
        this.f48804e.postFrameCallbackDelayed(this, 500L);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            this.f48804e = Choreographer.getInstance();
            return true;
        } else if (i == 1) {
            int i2 = this.f48805f + 1;
            this.f48805f = i2;
            if (i2 != 1) {
                return true;
            }
            this.f48804e.postFrameCallback(this);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int i3 = this.f48805f - 1;
            this.f48805f = i3;
            if (i3 != 0) {
                return true;
            }
            this.f48804e.removeFrameCallback(this);
            this.f48801a = 0L;
            return true;
        }
    }
}
