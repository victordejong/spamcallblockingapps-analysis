package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
/* renamed from: com.google.android.gms.internal.ads.aj */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/aj.class */
final class Choreographer$FrameCallbackC6294aj implements Choreographer.FrameCallback, Handler.Callback {

    /* renamed from: d */
    private static final Choreographer$FrameCallbackC6294aj f19964d = new Choreographer$FrameCallbackC6294aj();

    /* renamed from: e */
    public volatile long f19965e;

    /* renamed from: f */
    private final Handler f19966f;

    /* renamed from: g */
    private final HandlerThread f19967g;

    /* renamed from: h */
    private Choreographer f19968h;

    /* renamed from: i */
    private int f19969i;

    private Choreographer$FrameCallbackC6294aj() {
        HandlerThread handlerThread = new HandlerThread("ChoreographerOwner:Handler");
        this.f19967g = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper(), this);
        this.f19966f = handler;
        handler.sendEmptyMessage(0);
    }

    /* renamed from: a */
    public static Choreographer$FrameCallbackC6294aj m16587a() {
        return f19964d;
    }

    /* renamed from: b */
    public final void m16586b() {
        this.f19966f.sendEmptyMessage(1);
    }

    /* renamed from: c */
    public final void m16585c() {
        this.f19966f.sendEmptyMessage(2);
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        this.f19965e = j;
        this.f19968h.postFrameCallbackDelayed(this, 500L);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            this.f19968h = Choreographer.getInstance();
            return true;
        } else if (i == 1) {
            int i2 = this.f19969i + 1;
            this.f19969i = i2;
            if (i2 != 1) {
                return true;
            }
            this.f19968h.postFrameCallback(this);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int i3 = this.f19969i - 1;
            this.f19969i = i3;
            if (i3 != 0) {
                return true;
            }
            this.f19968h.removeFrameCallback(this);
            this.f19965e = 0L;
            return true;
        }
    }
}
