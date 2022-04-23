package com.google.android.exoplayer2.video;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.Surface;
import android.view.WindowManager;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.bidmachine.BidMachineFetcher;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    final c f22411a = new c();

    /* renamed from: b  reason: collision with root package name */
    final WindowManager f22412b;

    /* renamed from: c  reason: collision with root package name */
    final b f22413c;

    /* renamed from: d  reason: collision with root package name */
    final a f22414d;
    boolean e;
    Surface f;
    float g;
    float h;
    long i;
    long j;
    long k;
    long l;
    long m;
    long n;
    long o;
    private float p;
    private float q;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/j$a.class */
    final class a implements DisplayManager.DisplayListener {

        /* renamed from: a  reason: collision with root package name */
        final DisplayManager f22415a;

        public a(DisplayManager displayManager) {
            this.f22415a = displayManager;
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayChanged(int i) {
            if (i == 0) {
                j.this.d();
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayRemoved(int i) {
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/j$b.class */
    static final class b implements Handler.Callback, Choreographer.FrameCallback {

        /* renamed from: c  reason: collision with root package name */
        private static final b f22417c = new b();

        /* renamed from: a  reason: collision with root package name */
        public volatile long f22418a = -9223372036854775807L;

        /* renamed from: b  reason: collision with root package name */
        final Handler f22419b;

        /* renamed from: d  reason: collision with root package name */
        private final HandlerThread f22420d;
        private Choreographer e;
        private int f;

        private b() {
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
            this.f22420d = handlerThread;
            handlerThread.start();
            Handler a2 = af.a(handlerThread.getLooper(), (Handler.Callback) this);
            this.f22419b = a2;
            a2.sendEmptyMessage(0);
        }

        public static b a() {
            return f22417c;
        }

        @Override // android.view.Choreographer.FrameCallback
        public final void doFrame(long j) {
            this.f22418a = j;
            ((Choreographer) com.google.android.exoplayer2.util.a.b(this.e)).postFrameCallbackDelayed(this, 500L);
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
                ((Choreographer) com.google.android.exoplayer2.util.a.b(this.e)).postFrameCallback(this);
                return true;
            } else if (i != 2) {
                return false;
            } else {
                int i3 = this.f - 1;
                this.f = i3;
                if (i3 != 0) {
                    return true;
                }
                ((Choreographer) com.google.android.exoplayer2.util.a.b(this.e)).removeFrameCallback(this);
                this.f22418a = -9223372036854775807L;
                return true;
            }
        }
    }

    public j(Context context) {
        Context context2;
        if (context != null) {
            context2 = context.getApplicationContext();
            this.f22412b = (WindowManager) context2.getSystemService("window");
        } else {
            this.f22412b = null;
            context2 = context;
        }
        if (this.f22412b != null) {
            a aVar = null;
            if (af.f22275a >= 17) {
                DisplayManager displayManager = (DisplayManager) ((Context) com.google.android.exoplayer2.util.a.b(context2)).getSystemService(BidMachineFetcher.AD_TYPE_DISPLAY);
                aVar = null;
                if (displayManager != null) {
                    aVar = new a(displayManager);
                }
            }
            this.f22414d = aVar;
            this.f22413c = b.a();
        } else {
            this.f22414d = null;
            this.f22413c = null;
        }
        this.i = -9223372036854775807L;
        this.j = -9223372036854775807L;
        this.g = -1.0f;
        this.h = 1.0f;
    }

    private static void a(Surface surface, float f) {
        try {
            surface.setFrameRate(f, f == BitmapDescriptorFactory.HUE_RED ? 0 : 1);
        } catch (IllegalStateException e) {
            n.b("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.k = 0L;
        this.n = -1L;
        this.l = -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z) {
        Surface surface;
        if (af.f22275a >= 30 && (surface = this.f) != null) {
            float f = 0.0f;
            if (this.e) {
                float f2 = this.p;
                f = 0.0f;
                if (f2 != -1.0f) {
                    f = this.h * f2;
                }
            }
            if (z || this.q != f) {
                this.q = f;
                a(surface, f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b() {
        /*
            r5 = this;
            int r0 = com.google.android.exoplayer2.util.af.f22275a
            r1 = 30
            if (r0 < r1) goto L_0x00c3
            r0 = r5
            android.view.Surface r0 = r0.f
            if (r0 != 0) goto L_0x0012
            goto L_0x00c3
        L_0x0012:
            r0 = r5
            com.google.android.exoplayer2.video.c r0 = r0.f22411a
            com.google.android.exoplayer2.video.c$a r0 = r0.f22389a
            boolean r0 = r0.b()
            if (r0 == 0) goto L_0x002a
            r0 = r5
            com.google.android.exoplayer2.video.c r0 = r0.f22411a
            float r0 = r0.b()
            r6 = r0
            goto L_0x002f
        L_0x002a:
            r0 = r5
            float r0 = r0.g
            r6 = r0
        L_0x002f:
            r0 = r5
            float r0 = r0.p
            r7 = r0
            r0 = r6
            r1 = r7
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x003b
            return
        L_0x003b:
            r0 = 1
            r8 = r0
            r0 = r6
            r1 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x009a
            r0 = r7
            r1 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x009a
            r0 = r5
            com.google.android.exoplayer2.video.c r0 = r0.f22411a
            com.google.android.exoplayer2.video.c$a r0 = r0.f22389a
            boolean r0 = r0.b()
            if (r0 == 0) goto L_0x0070
            r0 = r5
            com.google.android.exoplayer2.video.c r0 = r0.f22411a
            long r0 = r0.a()
            r1 = 5000000000(0x12a05f200, double:2.470328229E-314)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0070
            r0 = 1
            r9 = r0
            goto L_0x0073
        L_0x0070:
            r0 = 0
            r9 = r0
        L_0x0073:
            r0 = r9
            if (r0 == 0) goto L_0x007e
            r0 = 1017370378(0x3ca3d70a, float:0.02)
            r7 = r0
            goto L_0x0080
        L_0x007e:
            r0 = 1065353216(0x3f800000, float:1.0)
            r7 = r0
        L_0x0080:
            r0 = r6
            r1 = r5
            float r1 = r1.p
            float r0 = r0 - r1
            float r0 = java.lang.Math.abs(r0)
            r1 = r7
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0094
            r0 = r8
            r9 = r0
            goto L_0x00b4
        L_0x0094:
            r0 = 0
            r9 = r0
            goto L_0x00b4
        L_0x009a:
            r0 = r9
            if (r0 == 0) goto L_0x00a5
            r0 = r8
            r9 = r0
            goto L_0x00b4
        L_0x00a5:
            r0 = r5
            com.google.android.exoplayer2.video.c r0 = r0.f22411a
            int r0 = r0.f
            r1 = 30
            if (r0 < r1) goto L_0x0094
            r0 = r8
            r9 = r0
        L_0x00b4:
            r0 = r9
            if (r0 == 0) goto L_0x00c3
            r0 = r5
            r1 = r6
            r0.p = r1
            r0 = r5
            r1 = 0
            r0.a(r1)
        L_0x00c3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.j.b():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        Surface surface;
        if (af.f22275a >= 30 && (surface = this.f) != null && this.q != BitmapDescriptorFactory.HUE_RED) {
            this.q = BitmapDescriptorFactory.HUE_RED;
            a(surface, BitmapDescriptorFactory.HUE_RED);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        Display defaultDisplay = ((WindowManager) com.google.android.exoplayer2.util.a.b(this.f22412b)).getDefaultDisplay();
        if (defaultDisplay != null) {
            long refreshRate = (long) (1.0E9d / defaultDisplay.getRefreshRate());
            this.i = refreshRate;
            this.j = (refreshRate * 80) / 100;
            return;
        }
        n.a("VideoFrameReleaseHelper", "Unable to query display refresh rate");
        this.i = -9223372036854775807L;
        this.j = -9223372036854775807L;
    }
}
