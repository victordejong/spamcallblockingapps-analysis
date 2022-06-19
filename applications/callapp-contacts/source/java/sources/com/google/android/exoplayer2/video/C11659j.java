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
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.bidmachine.BidMachineFetcher;
/* renamed from: com.google.android.exoplayer2.video.j */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/j.class */
public final class C11659j {

    /* renamed from: a */
    final C11649c f38885a = new C11649c();

    /* renamed from: b */
    final WindowManager f38886b;

    /* renamed from: c */
    final Choreographer$FrameCallbackC11661b f38887c;

    /* renamed from: d */
    final C11660a f38888d;

    /* renamed from: e */
    boolean f38889e;

    /* renamed from: f */
    Surface f38890f;

    /* renamed from: g */
    float f38891g;

    /* renamed from: h */
    float f38892h;

    /* renamed from: i */
    long f38893i;

    /* renamed from: j */
    long f38894j;

    /* renamed from: k */
    long f38895k;

    /* renamed from: l */
    long f38896l;

    /* renamed from: m */
    long f38897m;

    /* renamed from: n */
    long f38898n;

    /* renamed from: o */
    long f38899o;

    /* renamed from: p */
    private float f38900p;

    /* renamed from: q */
    private float f38901q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.video.j$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/j$a.class */
    public final class C11660a implements DisplayManager.DisplayListener {

        /* renamed from: a */
        final DisplayManager f38902a;

        public C11660a(DisplayManager displayManager) {
            C11659j.this = r4;
            this.f38902a = displayManager;
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayChanged(int i) {
            if (i == 0) {
                C11659j.this.m19671d();
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayRemoved(int i) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.video.j$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/j$b.class */
    public static final class Choreographer$FrameCallbackC11661b implements Handler.Callback, Choreographer.FrameCallback {

        /* renamed from: c */
        private static final Choreographer$FrameCallbackC11661b f38904c = new Choreographer$FrameCallbackC11661b();

        /* renamed from: a */
        public volatile long f38905a = -9223372036854775807L;

        /* renamed from: b */
        final Handler f38906b;

        /* renamed from: d */
        private final HandlerThread f38907d;

        /* renamed from: e */
        private Choreographer f38908e;

        /* renamed from: f */
        private int f38909f;

        private Choreographer$FrameCallbackC11661b() {
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
            this.f38907d = handlerThread;
            handlerThread.start();
            Handler m19983a = C11599af.m19983a(handlerThread.getLooper(), (Handler.Callback) this);
            this.f38906b = m19983a;
            m19983a.sendEmptyMessage(0);
        }

        /* renamed from: a */
        public static Choreographer$FrameCallbackC11661b m19670a() {
            return f38904c;
        }

        @Override // android.view.Choreographer.FrameCallback
        public final void doFrame(long j) {
            this.f38905a = j;
            ((Choreographer) C11593a.m20020b(this.f38908e)).postFrameCallbackDelayed(this, 500L);
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                this.f38908e = Choreographer.getInstance();
                return true;
            } else if (i == 1) {
                int i2 = this.f38909f + 1;
                this.f38909f = i2;
                if (i2 != 1) {
                    return true;
                }
                ((Choreographer) C11593a.m20020b(this.f38908e)).postFrameCallback(this);
                return true;
            } else if (i != 2) {
                return false;
            } else {
                int i3 = this.f38909f - 1;
                this.f38909f = i3;
                if (i3 != 0) {
                    return true;
                }
                ((Choreographer) C11593a.m20020b(this.f38908e)).removeFrameCallback(this);
                this.f38905a = -9223372036854775807L;
                return true;
            }
        }
    }

    public C11659j(Context context) {
        Context context2;
        if (context != null) {
            context2 = context.getApplicationContext();
            this.f38886b = (WindowManager) context2.getSystemService("window");
        } else {
            this.f38886b = null;
            context2 = context;
        }
        if (this.f38886b != null) {
            C11660a c11660a = null;
            if (C11599af.f38648a >= 17) {
                DisplayManager displayManager = (DisplayManager) ((Context) C11593a.m20020b(context2)).getSystemService(BidMachineFetcher.AD_TYPE_DISPLAY);
                c11660a = null;
                if (displayManager != null) {
                    c11660a = new C11660a(displayManager);
                }
            }
            this.f38888d = c11660a;
            this.f38887c = Choreographer$FrameCallbackC11661b.m19670a();
        } else {
            this.f38888d = null;
            this.f38887c = null;
        }
        this.f38893i = -9223372036854775807L;
        this.f38894j = -9223372036854775807L;
        this.f38891g = -1.0f;
        this.f38892h = 1.0f;
    }

    /* renamed from: a */
    private static void m19675a(Surface surface, float f) {
        try {
            surface.setFrameRate(f, f == BitmapDescriptorFactory.HUE_RED ? 0 : 1);
        } catch (IllegalStateException e) {
            C11617n.m19857b("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e);
        }
    }

    /* renamed from: a */
    public final void m19676a() {
        this.f38895k = 0L;
        this.f38898n = -1L;
        this.f38896l = -1L;
    }

    /* renamed from: a */
    public final void m19674a(boolean z) {
        Surface surface;
        if (C11599af.f38648a < 30 || (surface = this.f38890f) == null) {
            return;
        }
        float f = 0.0f;
        if (this.f38889e) {
            float f2 = this.f38900p;
            f = 0.0f;
            if (f2 != -1.0f) {
                f = this.f38892h * f2;
            }
        }
        if (!z && this.f38901q == f) {
            return;
        }
        this.f38901q = f;
        m19675a(surface, f);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m19673b() {
        /*
            r5 = this;
            int r0 = com.google.android.exoplayer2.util.C11599af.f38648a
            r1 = 30
            if (r0 < r1) goto Lc3
            r0 = r5
            android.view.Surface r0 = r0.f38890f
            if (r0 != 0) goto L12
            goto Lc3
        L12:
            r0 = r5
            com.google.android.exoplayer2.video.c r0 = r0.f38885a
            com.google.android.exoplayer2.video.c$a r0 = r0.f38801a
            boolean r0 = r0.m19734b()
            if (r0 == 0) goto L2a
            r0 = r5
            com.google.android.exoplayer2.video.c r0 = r0.f38885a
            float r0 = r0.m19737b()
            r6 = r0
            goto L2f
        L2a:
            r0 = r5
            float r0 = r0.f38891g
            r6 = r0
        L2f:
            r0 = r5
            float r0 = r0.f38900p
            r7 = r0
            r0 = r6
            r1 = r7
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L3b
            return
        L3b:
            r0 = 1
            r8 = r0
            r0 = r6
            r1 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L9a
            r0 = r7
            r1 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L9a
            r0 = r5
            com.google.android.exoplayer2.video.c r0 = r0.f38885a
            com.google.android.exoplayer2.video.c$a r0 = r0.f38801a
            boolean r0 = r0.m19734b()
            if (r0 == 0) goto L70
            r0 = r5
            com.google.android.exoplayer2.video.c r0 = r0.f38885a
            long r0 = r0.m19738a()
            r1 = 5000000000(0x12a05f200, double:2.470328229E-314)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L70
            r0 = 1
            r9 = r0
            goto L73
        L70:
            r0 = 0
            r9 = r0
        L73:
            r0 = r9
            if (r0 == 0) goto L7e
            r0 = 1017370378(0x3ca3d70a, float:0.02)
            r7 = r0
            goto L80
        L7e:
            r0 = 1065353216(0x3f800000, float:1.0)
            r7 = r0
        L80:
            r0 = r6
            r1 = r5
            float r1 = r1.f38900p
            float r0 = r0 - r1
            float r0 = java.lang.Math.abs(r0)
            r1 = r7
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L94
            r0 = r8
            r9 = r0
            goto Lb4
        L94:
            r0 = 0
            r9 = r0
            goto Lb4
        L9a:
            r0 = r9
            if (r0 == 0) goto La5
            r0 = r8
            r9 = r0
            goto Lb4
        La5:
            r0 = r5
            com.google.android.exoplayer2.video.c r0 = r0.f38885a
            int r0 = r0.f38806f
            r1 = 30
            if (r0 < r1) goto L94
            r0 = r8
            r9 = r0
        Lb4:
            r0 = r9
            if (r0 == 0) goto Lc3
            r0 = r5
            r1 = r6
            r0.f38900p = r1
            r0 = r5
            r1 = 0
            r0.m19674a(r1)
        Lc3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.C11659j.m19673b():void");
    }

    /* renamed from: c */
    public final void m19672c() {
        Surface surface;
        if (C11599af.f38648a < 30 || (surface = this.f38890f) == null || this.f38901q == BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        this.f38901q = BitmapDescriptorFactory.HUE_RED;
        m19675a(surface, BitmapDescriptorFactory.HUE_RED);
    }

    /* renamed from: d */
    public final void m19671d() {
        Display defaultDisplay = ((WindowManager) C11593a.m20020b(this.f38886b)).getDefaultDisplay();
        if (defaultDisplay != null) {
            long refreshRate = (long) (1.0E9d / defaultDisplay.getRefreshRate());
            this.f38893i = refreshRate;
            this.f38894j = (refreshRate * 80) / 100;
            return;
        }
        C11617n.m19863a("VideoFrameReleaseHelper", "Unable to query display refresh rate");
        this.f38893i = -9223372036854775807L;
        this.f38894j = -9223372036854775807L;
    }
}
