package p193e.p1451f.p1452a.p1457n.p1460o;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1789g0.C26232y;
import p1727n3.p1807k.p1820h.AbstractC26555e;
import p193e.p1451f.p1452a.p1457n.AbstractC22263f;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1460o.C22385q;
import p193e.p1451f.p1452a.p1457n.p1460o.RunnableC22354i;
import p193e.p1451f.p1452a.p1457n.p1460o.p1463d0.ExecutorServiceC22344a;
import p193e.p1451f.p1452a.p1476r.AbstractC22592i;
import p193e.p1451f.p1452a.p1476r.C22593j;
import p193e.p1451f.p1452a.p1480t.C22616e;
import p193e.p1451f.p1452a.p1480t.p1481k.AbstractC22633d;
import p193e.p1451f.p1452a.p1480t.p1481k.C22625a;
/* renamed from: e.f.a.n.o.m */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/m.class */
public class C22376m<R> implements RunnableC22354i.AbstractC22355a<R>, C22625a.AbstractC22629d {

    /* renamed from: y */
    public static final C22379c f62154y = new C22379c();

    /* renamed from: c */
    public final C22385q.AbstractC22386a f62157c;

    /* renamed from: d */
    public final AbstractC26555e<C22376m<?>> f62158d;

    /* renamed from: e */
    public final C22379c f62159e;

    /* renamed from: f */
    public final AbstractC22382n f62160f;

    /* renamed from: g */
    public final ExecutorServiceC22344a f62161g;

    /* renamed from: h */
    public final ExecutorServiceC22344a f62162h;

    /* renamed from: i */
    public final ExecutorServiceC22344a f62163i;

    /* renamed from: j */
    public final ExecutorServiceC22344a f62164j;

    /* renamed from: l */
    public AbstractC22263f f62166l;

    /* renamed from: m */
    public boolean f62167m;

    /* renamed from: n */
    public boolean f62168n;

    /* renamed from: o */
    public boolean f62169o;

    /* renamed from: p */
    public boolean f62170p;

    /* renamed from: q */
    public AbstractC22394w<?> f62171q;

    /* renamed from: r */
    public EnumC22258a f62172r;

    /* renamed from: s */
    public boolean f62173s;

    /* renamed from: t */
    public C22387r f62174t;

    /* renamed from: u */
    public boolean f62175u;

    /* renamed from: v */
    public C22385q<?> f62176v;

    /* renamed from: w */
    public RunnableC22354i<R> f62177w;

    /* renamed from: x */
    public volatile boolean f62178x;

    /* renamed from: a */
    public final C22381e f62155a = new C22381e();

    /* renamed from: b */
    public final AbstractC22633d f62156b = new AbstractC22633d.C22635b();

    /* renamed from: k */
    public final AtomicInteger f62165k = new AtomicInteger();

    /* renamed from: e.f.a.n.o.m$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/m$a.class */
    public class RunnableC22377a implements Runnable {

        /* renamed from: a */
        public final AbstractC22592i f62179a;

        public RunnableC22377a(AbstractC22592i abstractC22592i) {
            C22376m.this = r4;
            this.f62179a = abstractC22592i;
        }

        @Override // java.lang.Runnable
        public void run() {
            C22593j c22593j = (C22593j) this.f62179a;
            c22593j.f62571b.mo8010a();
            synchronized (c22593j.f62572c) {
                synchronized (C22376m.this) {
                    if (C22376m.this.f62155a.f62185a.contains(new C22380d(this.f62179a, C22616e.f62637b))) {
                        C22376m c22376m = C22376m.this;
                        AbstractC22592i abstractC22592i = this.f62179a;
                        Objects.requireNonNull(c22376m);
                        ((C22593j) abstractC22592i).m8063k(c22376m.f62174t, 5);
                    }
                    C22376m.this.m8265c();
                }
            }
        }
    }

    /* renamed from: e.f.a.n.o.m$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/m$b.class */
    public class RunnableC22378b implements Runnable {

        /* renamed from: a */
        public final AbstractC22592i f62181a;

        public RunnableC22378b(AbstractC22592i abstractC22592i) {
            C22376m.this = r4;
            this.f62181a = abstractC22592i;
        }

        @Override // java.lang.Runnable
        public void run() {
            C22593j c22593j = (C22593j) this.f62181a;
            c22593j.f62571b.mo8010a();
            synchronized (c22593j.f62572c) {
                synchronized (C22376m.this) {
                    if (C22376m.this.f62155a.f62185a.contains(new C22380d(this.f62181a, C22616e.f62637b))) {
                        C22376m.this.f62176v.m8259d();
                        C22376m c22376m = C22376m.this;
                        AbstractC22592i abstractC22592i = this.f62181a;
                        Objects.requireNonNull(c22376m);
                        ((C22593j) abstractC22592i).m8062l(c22376m.f62176v, c22376m.f62172r);
                        C22376m.this.m8261h(this.f62181a);
                    }
                    C22376m.this.m8265c();
                }
            }
        }
    }

    /* renamed from: e.f.a.n.o.m$c */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/m$c.class */
    public static class C22379c {
    }

    /* renamed from: e.f.a.n.o.m$d */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/m$d.class */
    public static final class C22380d {

        /* renamed from: a */
        public final AbstractC22592i f62183a;

        /* renamed from: b */
        public final Executor f62184b;

        public C22380d(AbstractC22592i abstractC22592i, Executor executor) {
            this.f62183a = abstractC22592i;
            this.f62184b = executor;
        }

        public boolean equals(Object obj) {
            if (obj instanceof C22380d) {
                return this.f62183a.equals(((C22380d) obj).f62183a);
            }
            return false;
        }

        public int hashCode() {
            return this.f62183a.hashCode();
        }
    }

    /* renamed from: e.f.a.n.o.m$e */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/m$e.class */
    public static final class C22381e implements Iterable<C22380d> {

        /* renamed from: a */
        public final List<C22380d> f62185a = new ArrayList(2);

        public boolean isEmpty() {
            return this.f62185a.isEmpty();
        }

        @Override // java.lang.Iterable
        public Iterator<C22380d> iterator() {
            return this.f62185a.iterator();
        }
    }

    public C22376m(ExecutorServiceC22344a executorServiceC22344a, ExecutorServiceC22344a executorServiceC22344a2, ExecutorServiceC22344a executorServiceC22344a3, ExecutorServiceC22344a executorServiceC22344a4, AbstractC22382n abstractC22382n, C22385q.AbstractC22386a abstractC22386a, AbstractC26555e<C22376m<?>> abstractC26555e) {
        C22379c c22379c = f62154y;
        this.f62161g = executorServiceC22344a;
        this.f62162h = executorServiceC22344a2;
        this.f62163i = executorServiceC22344a3;
        this.f62164j = executorServiceC22344a4;
        this.f62160f = abstractC22382n;
        this.f62157c = abstractC22386a;
        this.f62158d = abstractC26555e;
        this.f62159e = c22379c;
    }

    /* renamed from: a */
    public void m8267a(AbstractC22592i abstractC22592i, Executor executor) {
        synchronized (this) {
            this.f62156b.mo8010a();
            this.f62155a.f62185a.add(new C22380d(abstractC22592i, executor));
            boolean z = true;
            if (this.f62173s) {
                m8264e(1);
                executor.execute(new RunnableC22378b(abstractC22592i));
            } else if (this.f62175u) {
                m8264e(1);
                executor.execute(new RunnableC22377a(abstractC22592i));
            } else {
                if (this.f62178x) {
                    z = false;
                }
                C26232y.m2302t(z, "Cannot add callbacks to a cancelled EngineJob");
            }
        }
    }

    /* renamed from: b */
    public void m8266b() {
        if (m8263f()) {
            return;
        }
        this.f62178x = true;
        RunnableC22354i<R> runnableC22354i = this.f62177w;
        runnableC22354i.f62073E = true;
        AbstractC22351g abstractC22351g = runnableC22354i.f62071C;
        if (abstractC22351g != null) {
            abstractC22351g.cancel();
        }
        AbstractC22382n abstractC22382n = this.f62160f;
        AbstractC22263f abstractC22263f = this.f62166l;
        C22369l c22369l = (C22369l) abstractC22382n;
        synchronized (c22369l) {
            C22390t c22390t = c22369l.f62129a;
            Objects.requireNonNull(c22390t);
            Map<AbstractC22263f, C22376m<?>> m8251a = c22390t.m8251a(this.f62170p);
            if (equals(m8251a.get(abstractC22263f))) {
                m8251a.remove(abstractC22263f);
            }
        }
    }

    /* renamed from: c */
    public void m8265c() {
        C22385q<?> c22385q;
        synchronized (this) {
            this.f62156b.mo8010a();
            C26232y.m2302t(m8263f(), "Not yet complete!");
            int decrementAndGet = this.f62165k.decrementAndGet();
            C26232y.m2302t(decrementAndGet >= 0, "Can't decrement below 0");
            if (decrementAndGet == 0) {
                c22385q = this.f62176v;
                m8262g();
            } else {
                c22385q = null;
            }
        }
        if (c22385q != null) {
            c22385q.m8258e();
        }
    }

    @Override // p193e.p1451f.p1452a.p1480t.p1481k.C22625a.AbstractC22629d
    /* renamed from: d */
    public AbstractC22633d mo8012d() {
        return this.f62156b;
    }

    /* renamed from: e */
    public void m8264e(int i) {
        C22385q<?> c22385q;
        synchronized (this) {
            C26232y.m2302t(m8263f(), "Not yet complete!");
            if (this.f62165k.getAndAdd(i) == 0 && (c22385q = this.f62176v) != null) {
                c22385q.m8259d();
            }
        }
    }

    /* renamed from: f */
    public final boolean m8263f() {
        return this.f62175u || this.f62173s || this.f62178x;
    }

    /* renamed from: g */
    public final void m8262g() {
        boolean m8281a;
        synchronized (this) {
            if (this.f62166l == null) {
                throw new IllegalArgumentException();
            }
            this.f62155a.f62185a.clear();
            this.f62166l = null;
            this.f62176v = null;
            this.f62171q = null;
            this.f62175u = false;
            this.f62178x = false;
            this.f62173s = false;
            RunnableC22354i<R> runnableC22354i = this.f62177w;
            RunnableC22354i.C22359e c22359e = runnableC22354i.f62080g;
            synchronized (c22359e) {
                c22359e.f62105a = true;
                m8281a = c22359e.m8281a(false);
            }
            if (m8281a) {
                runnableC22354i.m8285o();
            }
            this.f62177w = null;
            this.f62174t = null;
            this.f62172r = null;
            this.f62158d.mo1688b(this);
        }
    }

    /* renamed from: h */
    public void m8261h(AbstractC22592i abstractC22592i) {
        boolean z;
        synchronized (this) {
            this.f62156b.mo8010a();
            this.f62155a.f62185a.remove(new C22380d(abstractC22592i, C22616e.f62637b));
            if (this.f62155a.isEmpty()) {
                m8266b();
                if (!this.f62173s && !this.f62175u) {
                    z = false;
                    if (z && this.f62165k.get() == 0) {
                        m8262g();
                    }
                }
                z = true;
                if (z) {
                    m8262g();
                }
            }
        }
    }

    /* renamed from: i */
    public void m8260i(RunnableC22354i<?> runnableC22354i) {
        (this.f62168n ? this.f62163i : this.f62169o ? this.f62164j : this.f62162h).f62038a.execute(runnableC22354i);
    }
}
