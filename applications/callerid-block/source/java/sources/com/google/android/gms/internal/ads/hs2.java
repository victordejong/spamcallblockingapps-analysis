package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hs2.class */
final class hs2 implements Choreographer.FrameCallback, Handler.Callback {

    /* renamed from: g */
    private static final hs2 f6772g = new hs2();

    /* renamed from: b */
    public volatile long f6773b;

    /* renamed from: c */
    private final Handler f6774c;

    /* renamed from: d */
    private final HandlerThread f6775d;

    /* renamed from: e */
    private Choreographer f6776e;

    /* renamed from: f */
    private int f6777f;

    private hs2() {
        HandlerThread handlerThread = new HandlerThread("ChoreographerOwner:Handler");
        this.f6775d = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper(), this);
        this.f6774c = handler;
        handler.sendEmptyMessage(0);
    }

    /* renamed from: a */
    public static hs2 m7233a() {
        return f6772g;
    }

    /* renamed from: b */
    public final void m7232b() {
        this.f6774c.sendEmptyMessage(1);
    }

    /* renamed from: c */
    public final void m7231c() {
        this.f6774c.sendEmptyMessage(2);
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        this.f6773b = j;
        this.f6776e.postFrameCallbackDelayed(this, 500L);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            this.f6776e = Choreographer.getInstance();
            return true;
        } else if (i == 1) {
            int i2 = this.f6777f + 1;
            this.f6777f = i2;
            if (i2 != 1) {
                return true;
            }
            this.f6776e.postFrameCallback(this);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int i3 = this.f6777f - 1;
            this.f6777f = i3;
            if (i3 != 0) {
                return true;
            }
            this.f6776e.removeFrameCallback(this);
            this.f6773b = 0L;
            return true;
        }
    }
}
