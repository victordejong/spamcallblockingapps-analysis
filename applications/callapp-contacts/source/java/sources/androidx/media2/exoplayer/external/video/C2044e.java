package androidx.media2.exoplayer.external.video;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.WindowManager;
import androidx.media2.exoplayer.external.util.C1996ac;
import io.bidmachine.BidMachineFetcher;
/* renamed from: androidx.media2.exoplayer.external.video.e */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/e.class */
public final class C2044e {

    /* renamed from: a */
    final WindowManager f8236a;

    /* renamed from: b */
    final Choreographer$FrameCallbackC2046b f8237b;

    /* renamed from: c */
    final C2045a f8238c;

    /* renamed from: d */
    long f8239d;

    /* renamed from: e */
    long f8240e;

    /* renamed from: f */
    long f8241f;

    /* renamed from: g */
    long f8242g;

    /* renamed from: h */
    long f8243h;

    /* renamed from: i */
    boolean f8244i;

    /* renamed from: j */
    long f8245j;

    /* renamed from: k */
    long f8246k;

    /* renamed from: l */
    long f8247l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.video.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/e$a.class */
    public final class C2045a implements DisplayManager.DisplayListener {

        /* renamed from: a */
        final DisplayManager f8248a;

        public C2045a(DisplayManager displayManager) {
            C2044e.this = r4;
            this.f8248a = displayManager;
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayChanged(int i) {
            if (i == 0) {
                C2044e.this.m41427a();
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayRemoved(int i) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.video.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/e$b.class */
    public static final class Choreographer$FrameCallbackC2046b implements Handler.Callback, Choreographer.FrameCallback {

        /* renamed from: c */
        private static final Choreographer$FrameCallbackC2046b f8250c = new Choreographer$FrameCallbackC2046b();

        /* renamed from: a */
        public volatile long f8251a = -9223372036854775807L;

        /* renamed from: b */
        final Handler f8252b;

        /* renamed from: d */
        private final HandlerThread f8253d;

        /* renamed from: e */
        private Choreographer f8254e;

        /* renamed from: f */
        private int f8255f;

        private Choreographer$FrameCallbackC2046b() {
            HandlerThread handlerThread = new HandlerThread("ChoreographerOwner:Handler");
            this.f8253d = handlerThread;
            handlerThread.start();
            Handler m41665a = C1996ac.m41665a(handlerThread.getLooper(), (Handler.Callback) this);
            this.f8252b = m41665a;
            m41665a.sendEmptyMessage(0);
        }

        /* renamed from: a */
        public static Choreographer$FrameCallbackC2046b m41425a() {
            return f8250c;
        }

        @Override // android.view.Choreographer.FrameCallback
        public final void doFrame(long j) {
            this.f8251a = j;
            this.f8254e.postFrameCallbackDelayed(this, 500L);
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                this.f8254e = Choreographer.getInstance();
                return true;
            } else if (i == 1) {
                int i2 = this.f8255f + 1;
                this.f8255f = i2;
                if (i2 != 1) {
                    return true;
                }
                this.f8254e.postFrameCallback(this);
                return true;
            } else if (i != 2) {
                return false;
            } else {
                int i3 = this.f8255f - 1;
                this.f8255f = i3;
                if (i3 != 0) {
                    return true;
                }
                this.f8254e.removeFrameCallback(this);
                this.f8251a = -9223372036854775807L;
                return true;
            }
        }
    }

    public C2044e() {
        this(null);
    }

    public C2044e(Context context) {
        Context context2;
        if (context != null) {
            context2 = context.getApplicationContext();
            this.f8236a = (WindowManager) context2.getSystemService("window");
        } else {
            this.f8236a = null;
            context2 = context;
        }
        if (this.f8236a != null) {
            C2045a c2045a = null;
            if (C1996ac.f8062a >= 17) {
                DisplayManager displayManager = (DisplayManager) context2.getSystemService(BidMachineFetcher.AD_TYPE_DISPLAY);
                c2045a = null;
                if (displayManager != null) {
                    c2045a = new C2045a(displayManager);
                }
            }
            this.f8238c = c2045a;
            this.f8237b = Choreographer$FrameCallbackC2046b.m41425a();
        } else {
            this.f8238c = null;
            this.f8237b = null;
        }
        this.f8239d = -9223372036854775807L;
        this.f8240e = -9223372036854775807L;
    }

    /* renamed from: a */
    public final void m41427a() {
        Display defaultDisplay = this.f8236a.getDefaultDisplay();
        if (defaultDisplay != null) {
            long refreshRate = (long) (1.0E9d / defaultDisplay.getRefreshRate());
            this.f8239d = refreshRate;
            this.f8240e = (refreshRate * 80) / 100;
        }
    }

    /* renamed from: a */
    public final boolean m41426a(long j, long j2) {
        return Math.abs((j2 - this.f8245j) - (j - this.f8246k)) > 20000000;
    }
}
