package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
/* renamed from: c.d.b.d.g.a.df0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/df0.class */
public final class df0 implements Handler.Callback, Choreographer.FrameCallback {

    /* renamed from: f */
    public static final df0 f12741f = new df0();

    /* renamed from: a */
    public volatile long f12742a;

    /* renamed from: b */
    public final Handler f12743b;

    /* renamed from: c */
    public final HandlerThread f12744c;

    /* renamed from: d */
    public Choreographer f12745d;

    /* renamed from: e */
    public int f12746e;

    public df0() {
        HandlerThread handlerThread = new HandlerThread("ChoreographerOwner:Handler");
        this.f12744c = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(this.f12744c.getLooper(), this);
        this.f12743b = handler;
        handler.sendEmptyMessage(0);
    }

    /* renamed from: c */
    public static df0 m27065c() {
        return f12741f;
    }

    /* renamed from: a */
    public final void m27067a() {
        this.f12743b.sendEmptyMessage(1);
    }

    /* renamed from: b */
    public final void m27066b() {
        this.f12743b.sendEmptyMessage(2);
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        this.f12742a = j;
        this.f12745d.postFrameCallbackDelayed(this, 500L);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            this.f12745d = Choreographer.getInstance();
            return true;
        } else if (i == 1) {
            int i2 = this.f12746e + 1;
            this.f12746e = i2;
            if (i2 != 1) {
                return true;
            }
            this.f12745d.postFrameCallback(this);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int i3 = this.f12746e - 1;
            this.f12746e = i3;
            if (i3 != 0) {
                return true;
            }
            this.f12745d.removeFrameCallback(this);
            this.f12742a = 0L;
            return true;
        }
    }
}
