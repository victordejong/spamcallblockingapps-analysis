package p131c.p135b.p136a.p148e.p153y;

import java.util.Timer;
import java.util.TimerTask;
import p131c.p135b.p136a.p148e.C2341l;
/* renamed from: c.b.a.e.y.p */
/* loaded from: classes-dex2jar.jar:c/b/a/e/y/p.class */
public class C2423p {

    /* renamed from: a */
    public final C2341l f9340a;

    /* renamed from: b */
    public Timer f9341b;

    /* renamed from: c */
    public long f9342c;

    /* renamed from: d */
    public long f9343d;

    /* renamed from: e */
    public final Runnable f9344e;

    /* renamed from: f */
    public long f9345f;

    /* renamed from: g */
    public final Object f9346g = new Object();

    /* renamed from: c.b.a.e.y.p$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/p$a.class */
    public class C2424a extends TimerTask {
        public C2424a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                C2423p.this.f9344e.run();
                synchronized (C2423p.this.f9346g) {
                    C2423p.this.f9341b = null;
                }
            } catch (Throwable th) {
                try {
                    if (C2423p.this.f9340a != null) {
                        C2423p.this.f9340a.m30262d0().m30043b("Timer", "Encountered error while executing timed task", th);
                    }
                    synchronized (C2423p.this.f9346g) {
                        C2423p.this.f9341b = null;
                    }
                } catch (Throwable th2) {
                    synchronized (C2423p.this.f9346g) {
                        C2423p.this.f9341b = null;
                        throw th2;
                    }
                }
            }
        }
    }

    public C2423p(C2341l lVar, Runnable runnable) {
        this.f9340a = lVar;
        this.f9344e = runnable;
    }

    /* renamed from: a */
    public static C2423p m29844a(long j, C2341l lVar, Runnable runnable) {
        if (j < 0) {
            throw new IllegalArgumentException("Cannot create a scheduled timer. Invalid fire time passed in: " + j + ".");
        } else if (runnable != null) {
            C2423p pVar = new C2423p(lVar, runnable);
            pVar.f9342c = System.currentTimeMillis();
            pVar.f9343d = j;
            try {
                Timer timer = new Timer();
                pVar.f9341b = timer;
                timer.schedule(pVar.m29836e(), j);
            } catch (OutOfMemoryError e) {
                lVar.m30262d0().m30043b("Timer", "Failed to create timer due to OOM error", e);
            }
            return pVar;
        } else {
            throw new IllegalArgumentException("Cannot create a scheduled timer. Runnable is null.");
        }
    }

    /* renamed from: a */
    public long m29845a() {
        if (this.f9341b == null) {
            return this.f9343d - this.f9345f;
        }
        return this.f9343d - (System.currentTimeMillis() - this.f9342c);
    }

    /* renamed from: b */
    public void m29841b() {
        synchronized (this.f9346g) {
            try {
                if (this.f9341b != null) {
                    this.f9341b.cancel();
                    this.f9345f = System.currentTimeMillis() - this.f9342c;
                    this.f9341b = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    public void m29839c() {
        synchronized (this.f9346g) {
            try {
                if (this.f9345f > 0) {
                    long j = this.f9343d - this.f9345f;
                    this.f9343d = j;
                    if (j < 0) {
                        this.f9343d = 0L;
                    }
                    Timer timer = new Timer();
                    this.f9341b = timer;
                    timer.schedule(m29836e(), this.f9343d);
                    this.f9342c = System.currentTimeMillis();
                    this.f9345f = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: d */
    public void m29837d() {
        synchronized (this.f9346g) {
            try {
                if (this.f9341b != null) {
                    this.f9341b.cancel();
                    this.f9341b = null;
                    this.f9345f = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: e */
    public final TimerTask m29836e() {
        return new C2424a();
    }
}
