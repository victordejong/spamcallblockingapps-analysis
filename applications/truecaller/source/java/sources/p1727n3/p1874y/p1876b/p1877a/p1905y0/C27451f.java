package p1727n3.p1874y.p1876b.p1877a.p1905y0;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.WindowManager;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.y0.f */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/y0/f.class */
public final class C27451f {

    /* renamed from: a */
    public final WindowManager f77251a;

    /* renamed from: b */
    public final Choreographer$FrameCallbackC27453b f77252b;

    /* renamed from: c */
    public final C27452a f77253c;

    /* renamed from: d */
    public long f77254d;

    /* renamed from: e */
    public long f77255e;

    /* renamed from: f */
    public long f77256f;

    /* renamed from: g */
    public long f77257g;

    /* renamed from: h */
    public long f77258h;

    /* renamed from: i */
    public boolean f77259i;

    /* renamed from: j */
    public long f77260j;

    /* renamed from: k */
    public long f77261k;

    /* renamed from: l */
    public long f77262l;

    /* renamed from: n3.y.b.a.y0.f$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/y0/f$a.class */
    public final class C27452a implements DisplayManager.DisplayListener {

        /* renamed from: a */
        public final DisplayManager f77263a;

        public C27452a(DisplayManager displayManager) {
            C27451f.this = r4;
            this.f77263a = displayManager;
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            if (i == 0) {
                C27451f.this.m255b();
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
        }
    }

    /* renamed from: n3.y.b.a.y0.f$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/y0/f$b.class */
    public static final class Choreographer$FrameCallbackC27453b implements Choreographer.FrameCallback, Handler.Callback {

        /* renamed from: f */
        public static final Choreographer$FrameCallbackC27453b f77265f = new Choreographer$FrameCallbackC27453b();

        /* renamed from: a */
        public volatile long f77266a = -9223372036854775807L;

        /* renamed from: b */
        public final Handler f77267b;

        /* renamed from: c */
        public final HandlerThread f77268c;

        /* renamed from: d */
        public Choreographer f77269d;

        /* renamed from: e */
        public int f77270e;

        public Choreographer$FrameCallbackC27453b() {
            HandlerThread handlerThread = new HandlerThread("ChoreographerOwner:Handler");
            this.f77268c = handlerThread;
            handlerThread.start();
            Looper looper = handlerThread.getLooper();
            int i = C27445x.f77229a;
            Handler handler = new Handler(looper, this);
            this.f77267b = handler;
            handler.sendEmptyMessage(0);
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            this.f77266a = j;
            this.f77269d.postFrameCallbackDelayed(this, 500L);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                this.f77269d = Choreographer.getInstance();
                return true;
            } else if (i == 1) {
                int i2 = this.f77270e + 1;
                this.f77270e = i2;
                if (i2 != 1) {
                    return true;
                }
                this.f77269d.postFrameCallback(this);
                return true;
            } else if (i != 2) {
                return false;
            } else {
                int i3 = this.f77270e - 1;
                this.f77270e = i3;
                if (i3 != 0) {
                    return true;
                }
                this.f77269d.removeFrameCallback(this);
                this.f77266a = -9223372036854775807L;
                return true;
            }
        }
    }

    public C27451f(Context context) {
        Context context2;
        if (context != null) {
            context2 = context.getApplicationContext();
            this.f77251a = (WindowManager) context2.getSystemService("window");
        } else {
            this.f77251a = null;
            context2 = context;
        }
        if (this.f77251a != null) {
            C27452a c27452a = null;
            if (C27445x.f77229a >= 17) {
                DisplayManager displayManager = (DisplayManager) context2.getSystemService("display");
                c27452a = displayManager == null ? null : new C27452a(displayManager);
            }
            this.f77253c = c27452a;
            this.f77252b = Choreographer$FrameCallbackC27453b.f77265f;
        } else {
            this.f77253c = null;
            this.f77252b = null;
        }
        this.f77254d = -9223372036854775807L;
        this.f77255e = -9223372036854775807L;
    }

    /* renamed from: a */
    public final boolean m256a(long j, long j2) {
        return Math.abs((j2 - this.f77260j) - (j - this.f77261k)) > 20000000;
    }

    /* renamed from: b */
    public final void m255b() {
        Display defaultDisplay = this.f77251a.getDefaultDisplay();
        if (defaultDisplay != null) {
            long refreshRate = (long) (1.0E9d / defaultDisplay.getRefreshRate());
            this.f77254d = refreshRate;
            this.f77255e = (refreshRate * 80) / 100;
        }
    }
}
