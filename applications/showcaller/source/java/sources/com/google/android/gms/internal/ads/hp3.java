package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hp3.class */
final class hp3 implements Choreographer.FrameCallback, Handler.Callback {

    /* renamed from: d */
    private static final hp3 f24004d = new hp3();

    /* renamed from: e */
    public volatile long f24005e = -9223372036854775807L;

    /* renamed from: f */
    private final Handler f24006f;

    /* renamed from: g */
    private final HandlerThread f24007g;

    /* renamed from: h */
    private Choreographer f24008h;

    /* renamed from: i */
    private int f24009i;

    private hp3() {
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
        this.f24007g = handlerThread;
        handlerThread.start();
        Handler m9714N = C7101wa.m9714N(handlerThread.getLooper(), this);
        this.f24006f = m9714N;
        m9714N.sendEmptyMessage(0);
    }

    /* renamed from: a */
    public static hp3 m14575a() {
        return f24004d;
    }

    /* renamed from: b */
    public final void m14574b() {
        this.f24006f.sendEmptyMessage(1);
    }

    /* renamed from: c */
    public final void m14573c() {
        this.f24006f.sendEmptyMessage(2);
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        this.f24005e = j;
        Choreographer choreographer = this.f24008h;
        Objects.requireNonNull(choreographer);
        choreographer.postFrameCallbackDelayed(this, 500L);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            this.f24008h = Choreographer.getInstance();
            return true;
        } else if (i == 1) {
            int i2 = this.f24009i + 1;
            this.f24009i = i2;
            if (i2 != 1) {
                return true;
            }
            Choreographer choreographer = this.f24008h;
            Objects.requireNonNull(choreographer);
            choreographer.postFrameCallback(this);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int i3 = this.f24009i - 1;
            this.f24009i = i3;
            if (i3 != 0) {
                return true;
            }
            Choreographer choreographer2 = this.f24008h;
            Objects.requireNonNull(choreographer2);
            choreographer2.removeFrameCallback(this);
            this.f24005e = -9223372036854775807L;
            return true;
        }
    }
}
