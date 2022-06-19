package com.google.android.exoplayer2.video;

import android.annotation.TargetApi;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.exoplayer2.util.C5515h0;
/* renamed from: com.google.android.exoplayer2.video.n */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/n.class */
public final class C5564n {

    /* renamed from: a */
    private final WindowManager f18074a;

    /* renamed from: b */
    private final Choreographer$FrameCallbackC5566b f18075b;

    /* renamed from: c */
    private final C5565a f18076c;

    /* renamed from: d */
    private long f18077d;

    /* renamed from: e */
    private long f18078e;

    /* renamed from: f */
    private long f18079f;

    /* renamed from: g */
    private long f18080g;

    /* renamed from: h */
    private long f18081h;

    /* renamed from: i */
    private boolean f18082i;

    /* renamed from: j */
    private long f18083j;

    /* renamed from: k */
    private long f18084k;

    /* renamed from: l */
    private long f18085l;

    @TargetApi(17)
    /* renamed from: com.google.android.exoplayer2.video.n$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/n$a.class */
    public final class C5565a implements DisplayManager.DisplayListener {

        /* renamed from: a */
        private final DisplayManager f18086a;

        public C5565a(DisplayManager displayManager) {
            C5564n.this = r4;
            this.f18086a = displayManager;
        }

        /* renamed from: a */
        public void m18544a() {
            this.f18086a.registerDisplayListener(this, null);
        }

        /* renamed from: b */
        public void m18543b() {
            this.f18086a.unregisterDisplayListener(this);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            if (i == 0) {
                C5564n.this.m18545h();
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.exoplayer2.video.n$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/n$b.class */
    public static final class Choreographer$FrameCallbackC5566b implements Choreographer.FrameCallback, Handler.Callback {

        /* renamed from: d */
        private static final Choreographer$FrameCallbackC5566b f18088d = new Choreographer$FrameCallbackC5566b();

        /* renamed from: e */
        public volatile long f18089e = -9223372036854775807L;

        /* renamed from: f */
        private final Handler f18090f;

        /* renamed from: g */
        private final HandlerThread f18091g;

        /* renamed from: h */
        private Choreographer f18092h;

        /* renamed from: i */
        private int f18093i;

        private Choreographer$FrameCallbackC5566b() {
            HandlerThread handlerThread = new HandlerThread("ChoreographerOwner:Handler");
            this.f18091g = handlerThread;
            handlerThread.start();
            Handler m18809s = C5515h0.m18809s(handlerThread.getLooper(), this);
            this.f18090f = m18809s;
            m18809s.sendEmptyMessage(0);
        }

        /* renamed from: b */
        private void m18541b() {
            int i = this.f18093i + 1;
            this.f18093i = i;
            if (i == 1) {
                this.f18092h.postFrameCallback(this);
            }
        }

        /* renamed from: c */
        private void m18540c() {
            this.f18092h = Choreographer.getInstance();
        }

        /* renamed from: d */
        public static Choreographer$FrameCallbackC5566b m18539d() {
            return f18088d;
        }

        /* renamed from: f */
        private void m18537f() {
            int i = this.f18093i - 1;
            this.f18093i = i;
            if (i == 0) {
                this.f18092h.removeFrameCallback(this);
                this.f18089e = -9223372036854775807L;
            }
        }

        /* renamed from: a */
        public void m18542a() {
            this.f18090f.sendEmptyMessage(1);
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            this.f18089e = j;
            this.f18092h.postFrameCallbackDelayed(this, 500L);
        }

        /* renamed from: e */
        public void m18538e() {
            this.f18090f.sendEmptyMessage(2);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                m18540c();
                return true;
            } else if (i == 1) {
                m18541b();
                return true;
            } else if (i != 2) {
                return false;
            } else {
                m18537f();
                return true;
            }
        }
    }

    public C5564n(Context context) {
        C5565a c5565a = null;
        if (context != null) {
            context = context.getApplicationContext();
            this.f18074a = (WindowManager) context.getSystemService("window");
        } else {
            this.f18074a = null;
        }
        if (this.f18074a != null) {
            this.f18076c = C5515h0.f17876a >= 17 ? m18546g(context) : c5565a;
            this.f18075b = Choreographer$FrameCallbackC5566b.m18539d();
        } else {
            this.f18076c = null;
            this.f18075b = null;
        }
        this.f18077d = -9223372036854775807L;
        this.f18078e = -9223372036854775807L;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* renamed from: c */
    private static long m18550c(long j, long j2, long j3) {
        char c;
        char c2 = j2 + (((j - j2) / j3) * j3);
        if (j <= c2) {
            c = c2 - j3;
        } else {
            ?? r0 = j3 + c2;
            c = c2;
            c2 = r0;
        }
        if (c2 - j >= j - c) {
            c2 = c;
        }
        return c2;
    }

    /* renamed from: f */
    private boolean m18547f(long j, long j2) {
        return Math.abs((j2 - this.f18083j) - (j - this.f18084k)) > 20000000;
    }

    @TargetApi(17)
    /* renamed from: g */
    private C5565a m18546g(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        return displayManager == null ? null : new C5565a(displayManager);
    }

    /* renamed from: h */
    public void m18545h() {
        Display defaultDisplay = this.f18074a.getDefaultDisplay();
        if (defaultDisplay != null) {
            long refreshRate = (long) (1.0E9d / defaultDisplay.getRefreshRate());
            this.f18077d = refreshRate;
            this.f18078e = (refreshRate * 80) / 100;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008d  */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m18551b(long r8, long r10) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.C5564n.m18551b(long, long):long");
    }

    /* renamed from: d */
    public void m18549d() {
        if (this.f18074a != null) {
            C5565a c5565a = this.f18076c;
            if (c5565a != null) {
                c5565a.m18543b();
            }
            this.f18075b.m18538e();
        }
    }

    /* renamed from: e */
    public void m18548e() {
        this.f18082i = false;
        if (this.f18074a != null) {
            this.f18075b.m18542a();
            C5565a c5565a = this.f18076c;
            if (c5565a != null) {
                c5565a.m18544a();
            }
            m18545h();
        }
    }
}
