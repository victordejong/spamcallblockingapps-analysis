package p131c.p161d.p170b.p188c.p204h1;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.WindowManager;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* renamed from: c.d.b.c.h1.o */
/* loaded from: classes-dex2jar.jar:c/d/b/c/h1/o.class */
public final class C2926o {

    /* renamed from: a */
    public final WindowManager f10593a;

    /* renamed from: b */
    public final Choreographer$FrameCallbackC2928b f10594b;

    /* renamed from: c */
    public final C2927a f10595c;

    /* renamed from: d */
    public long f10596d;

    /* renamed from: e */
    public long f10597e;

    /* renamed from: f */
    public long f10598f;

    /* renamed from: g */
    public long f10599g;

    /* renamed from: h */
    public long f10600h;

    /* renamed from: i */
    public boolean f10601i;

    /* renamed from: j */
    public long f10602j;

    /* renamed from: k */
    public long f10603k;

    /* renamed from: l */
    public long f10604l;

    /* renamed from: c.d.b.c.h1.o$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/h1/o$a.class */
    public final class C2927a implements DisplayManager.DisplayListener {

        /* renamed from: a */
        public final DisplayManager f10605a;

        public C2927a(DisplayManager displayManager) {
            this.f10605a = displayManager;
        }

        /* renamed from: a */
        public void m28482a() {
            this.f10605a.registerDisplayListener(this, null);
        }

        /* renamed from: b */
        public void m28481b() {
            this.f10605a.unregisterDisplayListener(this);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            if (i == 0) {
                C2926o.this.m28483c();
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
        }
    }

    /* renamed from: c.d.b.c.h1.o$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/h1/o$b.class */
    public static final class Choreographer$FrameCallbackC2928b implements Choreographer.FrameCallback, Handler.Callback {

        /* renamed from: f */
        public static final Choreographer$FrameCallbackC2928b f10607f = new Choreographer$FrameCallbackC2928b();

        /* renamed from: a */
        public volatile long f10608a = -9223372036854775807L;

        /* renamed from: b */
        public final Handler f10609b;

        /* renamed from: c */
        public final HandlerThread f10610c;

        /* renamed from: d */
        public Choreographer f10611d;

        /* renamed from: e */
        public int f10612e;

        public Choreographer$FrameCallbackC2928b() {
            HandlerThread handlerThread = new HandlerThread("ChoreographerOwner:Handler");
            this.f10610c = handlerThread;
            handlerThread.start();
            Handler a = C2885h0.m28676a(this.f10610c.getLooper(), (Handler.Callback) this);
            this.f10609b = a;
            a.sendEmptyMessage(0);
        }

        /* renamed from: f */
        public static Choreographer$FrameCallbackC2928b m28475f() {
            return f10607f;
        }

        /* renamed from: a */
        public void m28480a() {
            this.f10609b.sendEmptyMessage(1);
        }

        /* renamed from: b */
        public final void m28479b() {
            int i = this.f10612e + 1;
            this.f10612e = i;
            if (i == 1) {
                this.f10611d.postFrameCallback(this);
            }
        }

        /* renamed from: c */
        public final void m28478c() {
            this.f10611d = Choreographer.getInstance();
        }

        /* renamed from: d */
        public void m28477d() {
            this.f10609b.sendEmptyMessage(2);
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            this.f10608a = j;
            this.f10611d.postFrameCallbackDelayed(this, 500L);
        }

        /* renamed from: e */
        public final void m28476e() {
            int i = this.f10612e - 1;
            this.f10612e = i;
            if (i == 0) {
                this.f10611d.removeFrameCallback(this);
                this.f10608a = -9223372036854775807L;
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                m28478c();
                return true;
            } else if (i == 1) {
                m28479b();
                return true;
            } else if (i != 2) {
                return false;
            } else {
                m28476e();
                return true;
            }
        }
    }

    public C2926o(Context context) {
        C2927a aVar = null;
        if (context != null) {
            context = context.getApplicationContext();
            this.f10593a = (WindowManager) context.getSystemService("window");
        } else {
            this.f10593a = null;
        }
        if (this.f10593a != null) {
            this.f10595c = C2885h0.f10477a >= 17 ? m28487a(context) : aVar;
            this.f10594b = Choreographer$FrameCallbackC2928b.m28475f();
        } else {
            this.f10595c = null;
            this.f10594b = null;
        }
        this.f10596d = -9223372036854775807L;
        this.f10597e = -9223372036854775807L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m28488a(long r7, long r9, long r11) {
        /*
            r0 = r9
            r1 = r7
            r2 = r9
            long r1 = r1 - r2
            r2 = r11
            long r1 = r1 / r2
            r2 = r11
            long r1 = r1 * r2
            long r0 = r0 + r1
            r9 = r0
            r0 = r7
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x001b
            r0 = r9
            r1 = r11
            long r0 = r0 - r1
            r11 = r0
            goto L_0x0027
        L_0x001b:
            r0 = r11
            r1 = r9
            long r0 = r0 + r1
            r13 = r0
            r0 = r9
            r11 = r0
            r0 = r13
            r9 = r0
        L_0x0027:
            r0 = r9
            r1 = r7
            long r0 = r0 - r1
            r1 = r7
            r2 = r11
            long r1 = r1 - r2
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0035
            goto L_0x0038
        L_0x0035:
            r0 = r11
            r9 = r0
        L_0x0038:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p204h1.C2926o.m28488a(long, long, long):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008d  */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0, types: [long] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r16v0, types: [long] */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r7v0, types: [c.d.b.c.h1.o] */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m28489a(long r8, long r10) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p204h1.C2926o.m28489a(long, long):long");
    }

    /* renamed from: a */
    public final C2927a m28487a(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        return displayManager == null ? null : new C2927a(displayManager);
    }

    /* renamed from: a */
    public void m28490a() {
        if (this.f10593a != null) {
            C2927a aVar = this.f10595c;
            if (aVar != null) {
                aVar.m28481b();
            }
            this.f10594b.m28477d();
        }
    }

    /* renamed from: b */
    public void m28485b() {
        this.f10601i = false;
        if (this.f10593a != null) {
            this.f10594b.m28480a();
            C2927a aVar = this.f10595c;
            if (aVar != null) {
                aVar.m28482a();
            }
            m28483c();
        }
    }

    /* renamed from: b */
    public final boolean m28484b(long j, long j2) {
        return Math.abs((j2 - this.f10602j) - (j - this.f10603k)) > 20000000;
    }

    /* renamed from: c */
    public final void m28483c() {
        Display defaultDisplay = this.f10593a.getDefaultDisplay();
        if (defaultDisplay != null) {
            double refreshRate = defaultDisplay.getRefreshRate();
            Double.isNaN(refreshRate);
            long j = (long) (1.0E9d / refreshRate);
            this.f10596d = j;
            this.f10597e = (j * 80) / 100;
        }
    }
}
