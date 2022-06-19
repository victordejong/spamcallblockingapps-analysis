package p193e.p1577m.p1578a.p1596c.p1637r1;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.WindowManager;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.r1.p */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/r1/p.class */
public final class C24829p {

    /* renamed from: a */
    public final WindowManager f69628a;

    /* renamed from: b */
    public final Choreographer$FrameCallbackC24831b f69629b;

    /* renamed from: c */
    public final C24830a f69630c;

    /* renamed from: d */
    public long f69631d;

    /* renamed from: e */
    public long f69632e;

    /* renamed from: f */
    public long f69633f;

    /* renamed from: g */
    public long f69634g;

    /* renamed from: h */
    public long f69635h;

    /* renamed from: i */
    public boolean f69636i;

    /* renamed from: j */
    public long f69637j;

    /* renamed from: k */
    public long f69638k;

    /* renamed from: l */
    public long f69639l;

    /* renamed from: e.m.a.c.r1.p$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/r1/p$a.class */
    public final class C24830a implements DisplayManager.DisplayListener {

        /* renamed from: a */
        public final DisplayManager f69640a;

        public C24830a(DisplayManager displayManager) {
            C24829p.this = r4;
            this.f69640a = displayManager;
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            if (i == 0) {
                C24829p.this.m4443b();
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
        }
    }

    /* renamed from: e.m.a.c.r1.p$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/r1/p$b.class */
    public static final class Choreographer$FrameCallbackC24831b implements Choreographer.FrameCallback, Handler.Callback {

        /* renamed from: f */
        public static final Choreographer$FrameCallbackC24831b f69642f = new Choreographer$FrameCallbackC24831b();

        /* renamed from: a */
        public volatile long f69643a = -9223372036854775807L;

        /* renamed from: b */
        public final Handler f69644b;

        /* renamed from: c */
        public final HandlerThread f69645c;

        /* renamed from: d */
        public Choreographer f69646d;

        /* renamed from: e */
        public int f69647e;

        public Choreographer$FrameCallbackC24831b() {
            HandlerThread handlerThread = new HandlerThread("ChoreographerOwner:Handler");
            this.f69645c = handlerThread;
            handlerThread.start();
            Looper looper = handlerThread.getLooper();
            int i = C24773d0.f69427a;
            Handler handler = new Handler(looper, this);
            this.f69644b = handler;
            handler.sendEmptyMessage(0);
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            this.f69643a = j;
            this.f69646d.postFrameCallbackDelayed(this, 500L);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                this.f69646d = Choreographer.getInstance();
                return true;
            } else if (i == 1) {
                int i2 = this.f69647e + 1;
                this.f69647e = i2;
                if (i2 != 1) {
                    return true;
                }
                this.f69646d.postFrameCallback(this);
                return true;
            } else if (i != 2) {
                return false;
            } else {
                int i3 = this.f69647e - 1;
                this.f69647e = i3;
                if (i3 != 0) {
                    return true;
                }
                this.f69646d.removeFrameCallback(this);
                this.f69643a = -9223372036854775807L;
                return true;
            }
        }
    }

    public C24829p(Context context) {
        Context context2;
        if (context != null) {
            context2 = context.getApplicationContext();
            this.f69628a = (WindowManager) context2.getSystemService("window");
        } else {
            this.f69628a = null;
            context2 = context;
        }
        if (this.f69628a != null) {
            C24830a c24830a = null;
            if (C24773d0.f69427a >= 17) {
                DisplayManager displayManager = (DisplayManager) context2.getSystemService("display");
                c24830a = displayManager == null ? null : new C24830a(displayManager);
            }
            this.f69630c = c24830a;
            this.f69629b = Choreographer$FrameCallbackC24831b.f69642f;
        } else {
            this.f69630c = null;
            this.f69629b = null;
        }
        this.f69631d = -9223372036854775807L;
        this.f69632e = -9223372036854775807L;
    }

    /* renamed from: a */
    public final boolean m4444a(long j, long j2) {
        return Math.abs((j2 - this.f69637j) - (j - this.f69638k)) > 20000000;
    }

    /* renamed from: b */
    public final void m4443b() {
        Display defaultDisplay = this.f69628a.getDefaultDisplay();
        if (defaultDisplay != null) {
            long refreshRate = (long) (1.0E9d / defaultDisplay.getRefreshRate());
            this.f69631d = refreshRate;
            this.f69632e = (refreshRate * 80) / 100;
        }
    }
}
