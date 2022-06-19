package p020b.p029b.p030a.p031a;

import java.util.concurrent.Executor;
/* renamed from: b.b.a.a.a */
/* loaded from: classes-dex2jar.jar:b/b/a/a/a.class */
public class C1468a extends AbstractC1473c {

    /* renamed from: a */
    private static volatile C1468a f5905a;

    /* renamed from: b */
    private static final Executor f5906b = new ExecutorC1469a();

    /* renamed from: c */
    private static final Executor f5907c = new ExecutorC1470b();

    /* renamed from: d */
    private AbstractC1473c f5908d;

    /* renamed from: e */
    private AbstractC1473c f5909e;

    /* renamed from: b.b.a.a.a$a */
    /* loaded from: classes-dex2jar.jar:b/b/a/a/a$a.class */
    static final class ExecutorC1469a implements Executor {
        ExecutorC1469a() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            C1468a.m29993e().mo29989c(runnable);
        }
    }

    /* renamed from: b.b.a.a.a$b */
    /* loaded from: classes-dex2jar.jar:b/b/a/a/a$b.class */
    static final class ExecutorC1470b implements Executor {
        ExecutorC1470b() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            C1468a.m29993e().mo29991a(runnable);
        }
    }

    private C1468a() {
        C1471b c1471b = new C1471b();
        this.f5909e = c1471b;
        this.f5908d = c1471b;
    }

    /* renamed from: d */
    public static Executor m29994d() {
        return f5907c;
    }

    /* renamed from: e */
    public static C1468a m29993e() {
        if (f5905a != null) {
            return f5905a;
        }
        synchronized (C1468a.class) {
            try {
                if (f5905a == null) {
                    f5905a = new C1468a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f5905a;
    }

    @Override // p020b.p029b.p030a.p031a.AbstractC1473c
    /* renamed from: a */
    public void mo29991a(Runnable runnable) {
        this.f5908d.mo29991a(runnable);
    }

    @Override // p020b.p029b.p030a.p031a.AbstractC1473c
    /* renamed from: b */
    public boolean mo29990b() {
        return this.f5908d.mo29990b();
    }

    @Override // p020b.p029b.p030a.p031a.AbstractC1473c
    /* renamed from: c */
    public void mo29989c(Runnable runnable) {
        this.f5908d.mo29989c(runnable);
    }
}
