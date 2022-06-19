package p1727n3.p1746c.p1747a.p1748a;

import java.util.concurrent.Executor;
/* renamed from: n3.c.a.a.a */
/* loaded from: classes-dex2jar.jar:n3/c/a/a/a.class */
public class C25628a extends AbstractC25633c {

    /* renamed from: c */
    public static volatile C25628a f71800c;

    /* renamed from: d */
    public static final Executor f71801d = new ExecutorC25629a();

    /* renamed from: e */
    public static final Executor f71802e = new ExecutorC25630b();

    /* renamed from: a */
    public AbstractC25633c f71803a;

    /* renamed from: b */
    public AbstractC25633c f71804b;

    /* renamed from: n3.c.a.a.a$a */
    /* loaded from: classes-dex2jar.jar:n3/c/a/a/a$a.class */
    public static final class ExecutorC25629a implements Executor {
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            C25628a.m3112d().f71803a.mo3108c(runnable);
        }
    }

    /* renamed from: n3.c.a.a.a$b */
    /* loaded from: classes-dex2jar.jar:n3/c/a/a/a$b.class */
    public static final class ExecutorC25630b implements Executor {
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            C25628a.m3112d().f71803a.mo3110a(runnable);
        }
    }

    public C25628a() {
        C25631b c25631b = new C25631b();
        this.f71804b = c25631b;
        this.f71803a = c25631b;
    }

    /* renamed from: d */
    public static C25628a m3112d() {
        if (f71800c != null) {
            return f71800c;
        }
        synchronized (C25628a.class) {
            try {
                if (f71800c == null) {
                    f71800c = new C25628a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f71800c;
    }

    @Override // p1727n3.p1746c.p1747a.p1748a.AbstractC25633c
    /* renamed from: a */
    public void mo3110a(Runnable runnable) {
        this.f71803a.mo3110a(runnable);
    }

    @Override // p1727n3.p1746c.p1747a.p1748a.AbstractC25633c
    /* renamed from: b */
    public boolean mo3109b() {
        return this.f71803a.mo3109b();
    }

    @Override // p1727n3.p1746c.p1747a.p1748a.AbstractC25633c
    /* renamed from: c */
    public void mo3108c(Runnable runnable) {
        this.f71803a.mo3108c(runnable);
    }
}
