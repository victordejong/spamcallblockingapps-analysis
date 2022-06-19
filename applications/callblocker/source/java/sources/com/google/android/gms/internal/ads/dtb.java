package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dtb.class */
final class dtb implements Handler.Callback, Choreographer.FrameCallback {

    /* renamed from: b */
    private static final dtb f15646b = new dtb();

    /* renamed from: a */
    public volatile long f15647a;

    /* renamed from: e */
    private Choreographer f15650e;

    /* renamed from: f */
    private int f15651f;

    /* renamed from: d */
    private final HandlerThread f15649d = new HandlerThread("ChoreographerOwner:Handler");

    /* renamed from: c */
    private final cnz f15648c = new cnz(this.f15649d.getLooper(), this);

    private dtb() {
        this.f15649d.start();
        this.f15648c.sendEmptyMessage(0);
    }

    /* renamed from: a */
    public static dtb m8649a() {
        return f15646b;
    }

    /* renamed from: b */
    public final void m8648b() {
        this.f15648c.sendEmptyMessage(1);
    }

    /* renamed from: c */
    public final void m8647c() {
        this.f15648c.sendEmptyMessage(2);
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        this.f15647a = j;
        this.f15650e.postFrameCallbackDelayed(this, 500L);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        boolean z;
        switch (message.what) {
            case 0:
                this.f15650e = Choreographer.getInstance();
                z = true;
                break;
            case 1:
                this.f15651f++;
                z = true;
                if (this.f15651f == 1) {
                    this.f15650e.postFrameCallback(this);
                    z = true;
                    break;
                }
                break;
            case 2:
                this.f15651f--;
                z = true;
                if (this.f15651f == 0) {
                    this.f15650e.removeFrameCallback(this);
                    this.f15647a = 0L;
                    z = true;
                    break;
                }
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
