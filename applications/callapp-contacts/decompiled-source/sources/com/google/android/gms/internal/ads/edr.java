package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/edr.class */
final class edr implements Handler.Callback, Choreographer.FrameCallback {

    /* renamed from: c  reason: collision with root package name */
    private static final edr f27687c = new edr();

    /* renamed from: a  reason: collision with root package name */
    public volatile long f27688a;

    /* renamed from: b  reason: collision with root package name */
    final Handler f27689b;

    /* renamed from: d  reason: collision with root package name */
    private final HandlerThread f27690d;
    private Choreographer e;
    private int f;

    private edr() {
        HandlerThread handlerThread = new HandlerThread("ChoreographerOwner:Handler");
        this.f27690d = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper(), this);
        this.f27689b = handler;
        handler.sendEmptyMessage(0);
    }

    public static edr a() {
        return f27687c;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        this.f27688a = j;
        this.e.postFrameCallbackDelayed(this, 500L);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            this.e = Choreographer.getInstance();
            return true;
        } else if (i == 1) {
            int i2 = this.f + 1;
            this.f = i2;
            if (i2 != 1) {
                return true;
            }
            this.e.postFrameCallback(this);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int i3 = this.f - 1;
            this.f = i3;
            if (i3 != 0) {
                return true;
            }
            this.e.removeFrameCallback(this);
            this.f27688a = 0L;
            return true;
        }
    }
}
