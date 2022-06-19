package p193e.p194a.p1187r2;

import java.util.concurrent.Executor;
/* renamed from: e.a.r2.q */
/* loaded from: classes5-dex2jar.jar:e/a/r2/q.class */
public class C19880q implements AbstractC19868j {

    /* renamed from: a */
    public final Executor f56298a;

    /* renamed from: b */
    public final AbstractC19845a0 f56299b;

    /* renamed from: c */
    public final C19872n f56300c;

    /* renamed from: e.a.r2.q$b */
    /* loaded from: classes5-dex2jar.jar:e/a/r2/q$b.class */
    public static class RunnableC19882b implements Runnable {

        /* renamed from: e */
        public static RunnableC19882b f56301e;

        /* renamed from: f */
        public static int f56302f;

        /* renamed from: a */
        public volatile Object f56303a;

        /* renamed from: b */
        public volatile AbstractC19888u f56304b;

        /* renamed from: c */
        public volatile C19872n f56305c;

        /* renamed from: d */
        public RunnableC19882b f56306d;

        /* renamed from: a */
        public void m11839a() {
            this.f56304b = null;
            this.f56303a = null;
            this.f56305c = null;
            synchronized (RunnableC19882b.class) {
                try {
                    int i = f56302f;
                    if (i < 5) {
                        this.f56306d = f56301e;
                        f56301e = this;
                        f56302f = i + 1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f56304b.mo10183d(this.f56303a);
            } catch (Throwable th) {
                try {
                    C19850d mo11833a = this.f56304b.mo11833a();
                    mo11833a.initCause(th);
                    this.f56305c.m11841a(this.f56303a, this.f56304b, mo11833a);
                    throw null;
                } finally {
                    m11839a();
                }
            }
        }
    }

    /* renamed from: e.a.r2.q$c */
    /* loaded from: classes5-dex2jar.jar:e/a/r2/q$c.class */
    public static class C19883c<T> implements AbstractC19890w {

        /* renamed from: a */
        public final Executor f56307a;

        /* renamed from: b */
        public final C19872n f56308b;

        /* renamed from: c */
        public final T f56309c;

        /* JADX WARN: Multi-variable type inference failed */
        public C19883c(Object obj, Executor executor, C19872n c19872n, C19881a c19881a) {
            this.f56307a = executor;
            this.f56308b = c19872n;
            this.f56309c = obj;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19890w
        /* renamed from: a */
        public void mo11835a(AbstractC19888u abstractC19888u) {
            RunnableC19882b runnableC19882b;
            T t = this.f56309c;
            C19872n c19872n = this.f56308b;
            synchronized (RunnableC19882b.class) {
                try {
                    runnableC19882b = RunnableC19882b.f56301e;
                    if (runnableC19882b != null) {
                        RunnableC19882b.f56301e = runnableC19882b.f56306d;
                        runnableC19882b.f56306d = null;
                        RunnableC19882b.f56302f--;
                    } else {
                        runnableC19882b = new RunnableC19882b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            runnableC19882b.f56305c = c19872n;
            runnableC19882b.f56304b = abstractC19888u;
            runnableC19882b.f56303a = t;
            this.f56307a.execute(runnableC19882b);
        }
    }

    public C19880q(Executor executor, AbstractC19845a0 abstractC19845a0, C19872n c19872n) {
        this.f56298a = executor;
        this.f56299b = abstractC19845a0;
        this.f56300c = c19872n;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19868j
    /* renamed from: a */
    public <T> AbstractC19854f<T> mo11838a(Class<T> cls, T t) {
        return new C19857g(this.f56299b.mo10410a(cls, new C19883c(t, this.f56298a, this.f56300c, null)));
    }
}
