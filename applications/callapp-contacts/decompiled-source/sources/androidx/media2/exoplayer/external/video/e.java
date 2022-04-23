package androidx.media2.exoplayer.external.video;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.WindowManager;
import androidx.media2.exoplayer.external.util.ac;
import io.bidmachine.BidMachineFetcher;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    final WindowManager f4222a;

    /* renamed from: b  reason: collision with root package name */
    final b f4223b;

    /* renamed from: c  reason: collision with root package name */
    final a f4224c;

    /* renamed from: d  reason: collision with root package name */
    long f4225d;
    long e;
    long f;
    long g;
    long h;
    boolean i;
    long j;
    long k;
    long l;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/e$a.class */
    final class a implements DisplayManager.DisplayListener {

        /* renamed from: a  reason: collision with root package name */
        final DisplayManager f4226a;

        public a(DisplayManager displayManager) {
            this.f4226a = displayManager;
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayChanged(int i) {
            if (i == 0) {
                e.this.a();
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayRemoved(int i) {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/e$b.class */
    static final class b implements Handler.Callback, Choreographer.FrameCallback {

        /* renamed from: c  reason: collision with root package name */
        private static final b f4228c = new b();

        /* renamed from: a  reason: collision with root package name */
        public volatile long f4229a = -9223372036854775807L;

        /* renamed from: b  reason: collision with root package name */
        final Handler f4230b;

        /* renamed from: d  reason: collision with root package name */
        private final HandlerThread f4231d;
        private Choreographer e;
        private int f;

        private b() {
            HandlerThread handlerThread = new HandlerThread("ChoreographerOwner:Handler");
            this.f4231d = handlerThread;
            handlerThread.start();
            Handler a2 = ac.a(handlerThread.getLooper(), (Handler.Callback) this);
            this.f4230b = a2;
            a2.sendEmptyMessage(0);
        }

        public static b a() {
            return f4228c;
        }

        @Override // android.view.Choreographer.FrameCallback
        public final void doFrame(long j) {
            this.f4229a = j;
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
                this.f4229a = -9223372036854775807L;
                return true;
            }
        }
    }

    public e() {
        this(null);
    }

    public e(Context context) {
        Context context2;
        if (context != null) {
            context2 = context.getApplicationContext();
            this.f4222a = (WindowManager) context2.getSystemService("window");
        } else {
            this.f4222a = null;
            context2 = context;
        }
        if (this.f4222a != null) {
            a aVar = null;
            if (ac.f4119a >= 17) {
                DisplayManager displayManager = (DisplayManager) context2.getSystemService(BidMachineFetcher.AD_TYPE_DISPLAY);
                aVar = null;
                if (displayManager != null) {
                    aVar = new a(displayManager);
                }
            }
            this.f4224c = aVar;
            this.f4223b = b.a();
        } else {
            this.f4224c = null;
            this.f4223b = null;
        }
        this.f4225d = -9223372036854775807L;
        this.e = -9223372036854775807L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        Display defaultDisplay = this.f4222a.getDefaultDisplay();
        if (defaultDisplay != null) {
            long refreshRate = (long) (1.0E9d / defaultDisplay.getRefreshRate());
            this.f4225d = refreshRate;
            this.e = (refreshRate * 80) / 100;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(long j, long j2) {
        return Math.abs((j2 - this.j) - (j - this.k)) > 20000000;
    }
}
