package androidx.work.impl.utils.p057a;

import com.google.p112a.p113a.p114a.AbstractFutureC2212a;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: androidx.work.impl.utils.a.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a.class */
public abstract class AbstractC1257a<V> implements AbstractFutureC2212a<V> {

    /* renamed from: b */
    static final AbstractC1259a f4251b;

    /* renamed from: g */
    private static final Object f4253g;

    /* renamed from: c */
    volatile Object f4254c;

    /* renamed from: d */
    volatile C1263d f4255d;

    /* renamed from: e */
    volatile C1267h f4256e;

    /* renamed from: a */
    static final boolean f4250a = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: f */
    private static final Logger f4252f = Logger.getLogger(AbstractC1257a.class.getName());

    /* renamed from: androidx.work.impl.utils.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a$a.class */
    public static abstract class AbstractC1259a {
        private AbstractC1259a() {
        }

        /* renamed from: a */
        abstract void mo17597a(C1267h c1267h, C1267h c1267h2);

        /* renamed from: a */
        abstract void mo17596a(C1267h c1267h, Thread thread);

        /* renamed from: a */
        abstract boolean mo17595a(AbstractC1257a<?> abstractC1257a, C1263d c1263d, C1263d c1263d2);

        /* renamed from: a */
        abstract boolean mo17594a(AbstractC1257a<?> abstractC1257a, C1267h c1267h, C1267h c1267h2);

        /* renamed from: a */
        abstract boolean mo17593a(AbstractC1257a<?> abstractC1257a, Object obj, Object obj2);
    }

    /* renamed from: androidx.work.impl.utils.a.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a$b.class */
    public static final class C1260b {

        /* renamed from: a */
        static final C1260b f4257a;

        /* renamed from: b */
        static final C1260b f4258b;

        /* renamed from: c */
        final boolean f4259c;

        /* renamed from: d */
        final Throwable f4260d;

        static {
            if (AbstractC1257a.f4250a) {
                f4258b = null;
                f4257a = null;
                return;
            }
            f4258b = new C1260b(false, null);
            f4257a = new C1260b(true, null);
        }

        C1260b(boolean z, Throwable th) {
            this.f4259c = z;
            this.f4260d = th;
        }
    }

    /* renamed from: androidx.work.impl.utils.a.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a$c.class */
    public static final class C1261c {

        /* renamed from: a */
        static final C1261c f4261a = new C1261c(new Throwable("Failure occurred while trying to finish a future.") { // from class: androidx.work.impl.utils.a.a.c.1
            @Override // java.lang.Throwable
            public Throwable fillInStackTrace() {
                synchronized (this) {
                }
                return this;
            }
        });

        /* renamed from: b */
        final Throwable f4262b;

        C1261c(Throwable th) {
            this.f4262b = (Throwable) AbstractC1257a.m17603b(th);
        }
    }

    /* renamed from: androidx.work.impl.utils.a.a$d */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a$d.class */
    public static final class C1263d {

        /* renamed from: a */
        static final C1263d f4263a = new C1263d(null, null);

        /* renamed from: b */
        final Runnable f4264b;

        /* renamed from: c */
        final Executor f4265c;

        /* renamed from: d */
        C1263d f4266d;

        C1263d(Runnable runnable, Executor executor) {
            this.f4264b = runnable;
            this.f4265c = executor;
        }
    }

    /* renamed from: androidx.work.impl.utils.a.a$e */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a$e.class */
    private static final class C1264e extends AbstractC1259a {

        /* renamed from: a */
        final AtomicReferenceFieldUpdater<C1267h, Thread> f4267a;

        /* renamed from: b */
        final AtomicReferenceFieldUpdater<C1267h, C1267h> f4268b;

        /* renamed from: c */
        final AtomicReferenceFieldUpdater<AbstractC1257a, C1267h> f4269c;

        /* renamed from: d */
        final AtomicReferenceFieldUpdater<AbstractC1257a, C1263d> f4270d;

        /* renamed from: e */
        final AtomicReferenceFieldUpdater<AbstractC1257a, Object> f4271e;

        C1264e(AtomicReferenceFieldUpdater<C1267h, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<C1267h, C1267h> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<AbstractC1257a, C1267h> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<AbstractC1257a, C1263d> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<AbstractC1257a, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f4267a = atomicReferenceFieldUpdater;
            this.f4268b = atomicReferenceFieldUpdater2;
            this.f4269c = atomicReferenceFieldUpdater3;
            this.f4270d = atomicReferenceFieldUpdater4;
            this.f4271e = atomicReferenceFieldUpdater5;
        }

        @Override // androidx.work.impl.utils.p057a.AbstractC1257a.AbstractC1259a
        /* renamed from: a */
        void mo17597a(C1267h c1267h, C1267h c1267h2) {
            this.f4268b.lazySet(c1267h, c1267h2);
        }

        @Override // androidx.work.impl.utils.p057a.AbstractC1257a.AbstractC1259a
        /* renamed from: a */
        void mo17596a(C1267h c1267h, Thread thread) {
            this.f4267a.lazySet(c1267h, thread);
        }

        @Override // androidx.work.impl.utils.p057a.AbstractC1257a.AbstractC1259a
        /* renamed from: a */
        boolean mo17595a(AbstractC1257a<?> abstractC1257a, C1263d c1263d, C1263d c1263d2) {
            return this.f4270d.compareAndSet(abstractC1257a, c1263d, c1263d2);
        }

        @Override // androidx.work.impl.utils.p057a.AbstractC1257a.AbstractC1259a
        /* renamed from: a */
        boolean mo17594a(AbstractC1257a<?> abstractC1257a, C1267h c1267h, C1267h c1267h2) {
            return this.f4269c.compareAndSet(abstractC1257a, c1267h, c1267h2);
        }

        @Override // androidx.work.impl.utils.p057a.AbstractC1257a.AbstractC1259a
        /* renamed from: a */
        boolean mo17593a(AbstractC1257a<?> abstractC1257a, Object obj, Object obj2) {
            return this.f4271e.compareAndSet(abstractC1257a, obj, obj2);
        }
    }

    /* renamed from: androidx.work.impl.utils.a.a$f */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a$f.class */
    public static final class RunnableC1265f<V> implements Runnable {

        /* renamed from: a */
        final AbstractC1257a<V> f4272a;

        /* renamed from: b */
        final AbstractFutureC2212a<? extends V> f4273b;

        RunnableC1265f(AbstractC1257a<V> abstractC1257a, AbstractFutureC2212a<? extends V> abstractFutureC2212a) {
            this.f4272a = abstractC1257a;
            this.f4273b = abstractFutureC2212a;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f4272a.f4254c != this) {
                return;
            }
            if (!AbstractC1257a.f4251b.mo17593a((AbstractC1257a<?>) this.f4272a, (Object) this, AbstractC1257a.m17604b((AbstractFutureC2212a<?>) this.f4273b))) {
                return;
            }
            AbstractC1257a.m17609a((AbstractC1257a<?>) this.f4272a);
        }
    }

    /* renamed from: androidx.work.impl.utils.a.a$g */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a$g.class */
    private static final class C1266g extends AbstractC1259a {
        C1266g() {
            super();
        }

        @Override // androidx.work.impl.utils.p057a.AbstractC1257a.AbstractC1259a
        /* renamed from: a */
        void mo17597a(C1267h c1267h, C1267h c1267h2) {
            c1267h.f4276c = c1267h2;
        }

        @Override // androidx.work.impl.utils.p057a.AbstractC1257a.AbstractC1259a
        /* renamed from: a */
        void mo17596a(C1267h c1267h, Thread thread) {
            c1267h.f4275b = thread;
        }

        @Override // androidx.work.impl.utils.p057a.AbstractC1257a.AbstractC1259a
        /* renamed from: a */
        boolean mo17595a(AbstractC1257a<?> abstractC1257a, C1263d c1263d, C1263d c1263d2) {
            boolean z;
            synchronized (abstractC1257a) {
                if (abstractC1257a.f4255d == c1263d) {
                    abstractC1257a.f4255d = c1263d2;
                    z = true;
                } else {
                    z = false;
                }
            }
            return z;
        }

        @Override // androidx.work.impl.utils.p057a.AbstractC1257a.AbstractC1259a
        /* renamed from: a */
        boolean mo17594a(AbstractC1257a<?> abstractC1257a, C1267h c1267h, C1267h c1267h2) {
            boolean z;
            synchronized (abstractC1257a) {
                if (abstractC1257a.f4256e == c1267h) {
                    abstractC1257a.f4256e = c1267h2;
                    z = true;
                } else {
                    z = false;
                }
            }
            return z;
        }

        @Override // androidx.work.impl.utils.p057a.AbstractC1257a.AbstractC1259a
        /* renamed from: a */
        boolean mo17593a(AbstractC1257a<?> abstractC1257a, Object obj, Object obj2) {
            boolean z;
            synchronized (abstractC1257a) {
                if (abstractC1257a.f4254c == obj) {
                    abstractC1257a.f4254c = obj2;
                    z = true;
                } else {
                    z = false;
                }
            }
            return z;
        }
    }

    /* renamed from: androidx.work.impl.utils.a.a$h */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a$h.class */
    public static final class C1267h {

        /* renamed from: a */
        static final C1267h f4274a = new C1267h(false);

        /* renamed from: b */
        volatile Thread f4275b;

        /* renamed from: c */
        volatile C1267h f4276c;

        C1267h() {
            AbstractC1257a.f4251b.mo17596a(this, Thread.currentThread());
        }

        C1267h(boolean z) {
        }

        /* renamed from: a */
        void m17592a() {
            Thread thread = this.f4275b;
            if (thread != null) {
                this.f4275b = null;
                LockSupport.unpark(thread);
            }
        }

        /* renamed from: a */
        void m17591a(C1267h c1267h) {
            AbstractC1257a.f4251b.mo17597a(this, c1267h);
        }
    }

    static {
        AbstractC1259a c1266g;
        try {
            c1266g = new C1264e(AtomicReferenceFieldUpdater.newUpdater(C1267h.class, Thread.class, "b"), AtomicReferenceFieldUpdater.newUpdater(C1267h.class, C1267h.class, "c"), AtomicReferenceFieldUpdater.newUpdater(AbstractC1257a.class, C1267h.class, "e"), AtomicReferenceFieldUpdater.newUpdater(AbstractC1257a.class, C1263d.class, "d"), AtomicReferenceFieldUpdater.newUpdater(AbstractC1257a.class, Object.class, "c"));
            th = null;
        } catch (Throwable th) {
            th = th;
            c1266g = new C1266g();
        }
        f4251b = c1266g;
        if (th != null) {
            f4252f.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f4253g = new Object();
    }

    /* renamed from: a */
    private C1263d m17611a(C1263d c1263d) {
        C1263d c1263d2;
        do {
            c1263d2 = this.f4255d;
        } while (!f4251b.mo17595a((AbstractC1257a<?>) this, c1263d2, C1263d.f4263a));
        while (true) {
            C1263d c1263d3 = c1263d;
            c1263d = c1263d2;
            if (c1263d != null) {
                c1263d2 = c1263d.f4266d;
                c1263d.f4266d = c1263d3;
            } else {
                return c1263d3;
            }
        }
    }

    /* renamed from: a */
    private static <V> V m17606a(Future<V> future) {
        boolean z;
        V v;
        boolean z2 = false;
        while (true) {
            try {
                z = z2;
                v = future.get();
                break;
            } catch (InterruptedException e) {
                z2 = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }

    /* renamed from: a */
    private static CancellationException m17608a(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    /* renamed from: a */
    private void m17610a(C1267h c1267h) {
        C1267h c1267h2;
        c1267h.f4275b = null;
        while (true) {
            C1267h c1267h3 = this.f4256e;
            if (c1267h3 == C1267h.f4274a) {
                return;
            }
            C1267h c1267h4 = null;
            while (true) {
                C1267h c1267h5 = c1267h4;
                if (c1267h3 == null) {
                    return;
                }
                C1267h c1267h6 = c1267h3.f4276c;
                if (c1267h3.f4275b != null) {
                    c1267h2 = c1267h3;
                } else if (c1267h5 != null) {
                    c1267h5.f4276c = c1267h6;
                    c1267h2 = c1267h5;
                    if (c1267h5.f4275b == null) {
                        break;
                    }
                } else {
                    c1267h2 = c1267h5;
                    if (!f4251b.mo17594a((AbstractC1257a<?>) this, c1267h3, c1267h6)) {
                        break;
                    }
                }
                c1267h3 = c1267h6;
                c1267h4 = c1267h2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [androidx.work.impl.utils.a.a, androidx.work.impl.utils.a.a<V>] */
    /* JADX WARN: Type inference failed for: r0v24, types: [androidx.work.impl.utils.a.a$a] */
    /* renamed from: a */
    static void m17609a(AbstractC1257a<?> abstractC1257a) {
        C1263d c1263d;
        AbstractC1257a<V> abstractC1257a2;
        C1263d c1263d2 = null;
        while (true) {
            abstractC1257a.m17599d();
            abstractC1257a.m17605b();
            C1263d m17611a = abstractC1257a.m17611a(c1263d2);
            while (true) {
                C1263d c1263d3 = m17611a;
                if (c1263d3 == null) {
                    return;
                }
                c1263d = c1263d3.f4266d;
                Runnable runnable = c1263d3.f4264b;
                if (runnable instanceof RunnableC1265f) {
                    RunnableC1265f runnableC1265f = (RunnableC1265f) runnable;
                    abstractC1257a2 = runnableC1265f.f4272a;
                    if (abstractC1257a2.f4254c == runnableC1265f) {
                        if (f4251b.mo17593a(abstractC1257a2, runnableC1265f, m17604b((AbstractFutureC2212a<?>) runnableC1265f.f4273b))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    m17602b(runnable, c1263d3.f4265c);
                }
                m17611a = c1263d;
            }
            c1263d2 = c1263d;
            abstractC1257a = abstractC1257a2;
        }
    }

    /* renamed from: a */
    private void m17607a(StringBuilder sb) {
        try {
            sb.append("SUCCESS, result=[").append(m17598d(m17606a((Future<Object>) this))).append("]");
        } catch (CancellationException e) {
            sb.append("CANCELLED");
        } catch (RuntimeException e2) {
            sb.append("UNKNOWN, cause=[").append(e2.getClass()).append(" thrown from get()]");
        } catch (ExecutionException e3) {
            sb.append("FAILURE, cause=[").append(e3.getCause()).append("]");
        }
    }

    /* renamed from: b */
    static Object m17604b(AbstractFutureC2212a<?> abstractFutureC2212a) {
        Object c1261c;
        if (abstractFutureC2212a instanceof AbstractC1257a) {
            Object obj = ((AbstractC1257a) abstractFutureC2212a).f4254c;
            c1261c = obj;
            if (obj instanceof C1260b) {
                C1260b c1260b = (C1260b) obj;
                c1261c = obj;
                if (c1260b.f4259c) {
                    c1261c = c1260b.f4260d != null ? new C1260b(false, c1260b.f4260d) : C1260b.f4258b;
                }
            }
        } else {
            boolean isCancelled = abstractFutureC2212a.isCancelled();
            if ((!f4250a) && isCancelled) {
                c1261c = C1260b.f4258b;
            } else {
                try {
                    Object m17606a = m17606a((Future<Object>) abstractFutureC2212a);
                    Object obj2 = m17606a;
                    if (m17606a == null) {
                        obj2 = f4253g;
                    }
                    c1261c = obj2;
                } catch (CancellationException e) {
                    c1261c = !isCancelled ? new C1261c(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + abstractFutureC2212a, e)) : new C1260b(false, e);
                } catch (ExecutionException e2) {
                    c1261c = new C1261c(e2.getCause());
                } catch (Throwable th) {
                    c1261c = new C1261c(th);
                }
            }
        }
        return c1261c;
    }

    /* renamed from: b */
    static <T> T m17603b(T t) {
        if (t == null) {
            throw new NullPointerException();
        }
        return t;
    }

    /* renamed from: b */
    private static void m17602b(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            f4252f.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    /* renamed from: c */
    private V m17600c(Object obj) {
        if (obj instanceof C1260b) {
            throw m17608a("Task was cancelled.", ((C1260b) obj).f4260d);
        }
        if (obj instanceof C1261c) {
            throw new ExecutionException(((C1261c) obj).f4262b);
        }
        Object obj2 = obj;
        if (obj == f4253g) {
            obj2 = null;
        }
        return (V) obj2;
    }

    /* renamed from: d */
    private String m17598d(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    /* renamed from: d */
    private void m17599d() {
        C1267h c1267h;
        do {
            c1267h = this.f4256e;
        } while (!f4251b.mo17594a((AbstractC1257a<?>) this, c1267h, C1267h.f4274a));
        while (c1267h != null) {
            c1267h.m17592a();
            c1267h = c1267h.f4276c;
        }
    }

    /* renamed from: a */
    protected void m17612a() {
    }

    @Override // com.google.p112a.p113a.p114a.AbstractFutureC2212a
    /* renamed from: a */
    public final void mo14921a(Runnable runnable, Executor executor) {
        C1263d c1263d;
        m17603b(runnable);
        m17603b(executor);
        C1263d c1263d2 = this.f4255d;
        if (c1263d2 == C1263d.f4263a) {
            m17602b(runnable, executor);
        }
        C1263d c1263d3 = new C1263d(runnable, executor);
        do {
            c1263d3.f4266d = c1263d2;
            if (f4251b.mo17595a((AbstractC1257a<?>) this, c1263d2, c1263d3)) {
                return;
            }
            c1263d = this.f4255d;
            c1263d2 = c1263d;
        } while (c1263d != C1263d.f4263a);
        m17602b(runnable, executor);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0078 -> B:19:0x006a). Please submit an issue!!! */
    /* renamed from: a */
    public boolean mo17590a(AbstractFutureC2212a<? extends V> abstractFutureC2212a) {
        boolean z;
        C1261c c1261c;
        m17603b(abstractFutureC2212a);
        Object obj = this.f4254c;
        Object obj2 = obj;
        if (obj == null) {
            if (abstractFutureC2212a.isDone()) {
                if (f4251b.mo17593a((AbstractC1257a<?>) this, (Object) null, m17604b((AbstractFutureC2212a<?>) abstractFutureC2212a))) {
                    m17609a((AbstractC1257a<?>) this);
                    z = true;
                } else {
                    z = false;
                }
            } else {
                RunnableC1265f runnableC1265f = new RunnableC1265f(this, abstractFutureC2212a);
                if (f4251b.mo17593a((AbstractC1257a<?>) this, (Object) null, (Object) runnableC1265f)) {
                    try {
                        abstractFutureC2212a.mo14921a(runnableC1265f, EnumC1268b.INSTANCE);
                    } catch (Throwable th) {
                        try {
                            c1261c = new C1261c(th);
                        } catch (Throwable th2) {
                            c1261c = C1261c.f4261a;
                        }
                        f4251b.mo17593a((AbstractC1257a<?>) this, (Object) runnableC1265f, (Object) c1261c);
                    }
                    z = true;
                } else {
                    obj2 = this.f4254c;
                }
            }
            return z;
        }
        if (obj2 instanceof C1260b) {
            abstractFutureC2212a.cancel(((C1260b) obj2).f4259c);
        }
        z = false;
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public boolean mo17589a(V v) {
        boolean z;
        V v2 = v;
        if (v == null) {
            v2 = f4253g;
        }
        if (f4251b.mo17593a((AbstractC1257a<?>) this, (Object) null, (Object) v2)) {
            m17609a((AbstractC1257a<?>) this);
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public boolean mo17588a(Throwable th) {
        boolean z;
        if (f4251b.mo17593a((AbstractC1257a<?>) this, (Object) null, (Object) new C1261c((Throwable) m17603b(th)))) {
            m17609a((AbstractC1257a<?>) this);
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    protected void m17605b() {
    }

    /* renamed from: c */
    protected String m17601c() {
        Object obj = this.f4254c;
        return obj instanceof RunnableC1265f ? "setFuture=[" + m17598d(((RunnableC1265f) obj).f4273b) + "]" : this instanceof ScheduledFuture ? "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]" : null;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean z2;
        Object obj = this.f4254c;
        if ((obj == null) || (obj instanceof RunnableC1265f)) {
            C1260b c1260b = f4250a ? new C1260b(z, new CancellationException("Future.cancel() was called.")) : z ? C1260b.f4257a : C1260b.f4258b;
            z2 = false;
            AbstractC1257a<V> abstractC1257a = this;
            while (true) {
                if (f4251b.mo17593a((AbstractC1257a<?>) abstractC1257a, obj, (Object) c1260b)) {
                    if (z) {
                        abstractC1257a.m17612a();
                    }
                    m17609a((AbstractC1257a<?>) abstractC1257a);
                    z2 = true;
                    if (!(obj instanceof RunnableC1265f)) {
                        break;
                    }
                    AbstractFutureC2212a<? extends V> abstractFutureC2212a = ((RunnableC1265f) obj).f4273b;
                    if (!(abstractFutureC2212a instanceof AbstractC1257a)) {
                        abstractFutureC2212a.cancel(z);
                        z2 = true;
                        break;
                    }
                    abstractC1257a = (AbstractC1257a) abstractFutureC2212a;
                    obj = abstractC1257a.f4254c;
                    z2 = true;
                    if (!(obj == null) && !(obj instanceof RunnableC1265f)) {
                        break;
                    }
                    z2 = true;
                } else {
                    Object obj2 = abstractC1257a.f4254c;
                    obj = obj2;
                    if (!(obj2 instanceof RunnableC1265f)) {
                        break;
                    }
                }
            }
        } else {
            z2 = false;
        }
        return z2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0062, code lost:
        java.util.concurrent.locks.LockSupport.park(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0069, code lost:
        if (java.lang.Thread.interrupted() == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006c, code lost:
        m17610a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0079, code lost:
        throw new java.lang.InterruptedException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x007a, code lost:
        r0 = r5.f4254c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0080, code lost:
        if (r0 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0083, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0089, code lost:
        if ((r0 instanceof androidx.work.impl.utils.p057a.AbstractC1257a.RunnableC1265f) != false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x008c, code lost:
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0091, code lost:
        if ((r7 & r8) == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0094, code lost:
        r6 = m17600c(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x009d, code lost:
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00a2, code lost:
        r8 = false;
     */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V get() {
        /*
            Method dump skipped, instructions count: 196
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.p057a.AbstractC1257a.get():java.lang.Object");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v128, types: [long] */
    /* JADX WARN: Type inference failed for: r0v141, types: [long] */
    /* JADX WARN: Type inference failed for: r0v99, types: [long] */
    @Override // java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) {
        V m17600c;
        ?? nanoTime;
        C1267h c1267h;
        ?? nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f4254c;
        if (!(obj != null) || !(!(obj instanceof RunnableC1265f))) {
            char nanoTime2 = nanos > 0 ? System.nanoTime() + nanos : (char) 0;
            char c = nanos;
            if (nanos >= 1000) {
                C1267h c1267h2 = this.f4256e;
                if (c1267h2 != C1267h.f4274a) {
                    C1267h c1267h3 = new C1267h();
                    do {
                        c1267h3.m17591a(c1267h2);
                        if (f4251b.mo17594a((AbstractC1257a<?>) this, c1267h2, c1267h3)) {
                            char c2 = nanos;
                            do {
                                LockSupport.parkNanos(this, c2);
                                if (Thread.interrupted()) {
                                    m17610a(c1267h3);
                                    throw new InterruptedException();
                                }
                                Object obj2 = this.f4254c;
                                if ((obj2 != null) && (!(obj2 instanceof RunnableC1265f))) {
                                    m17600c = m17600c(obj2);
                                    break;
                                }
                                nanoTime = nanoTime2 - System.nanoTime();
                                c2 = nanoTime;
                            } while (nanoTime >= 1000);
                            m17610a(c1267h3);
                            c = nanoTime;
                        } else {
                            c1267h = this.f4256e;
                            c1267h2 = c1267h;
                        }
                    } while (c1267h != C1267h.f4274a);
                    m17600c = m17600c(this.f4254c);
                } else {
                    m17600c = m17600c(this.f4254c);
                }
            }
            while (c > 0) {
                Object obj3 = this.f4254c;
                if ((obj3 != null) && (!(obj3 instanceof RunnableC1265f))) {
                    m17600c = m17600c(obj3);
                } else if (Thread.interrupted()) {
                    throw new InterruptedException();
                } else {
                    c = nanoTime2 - System.nanoTime();
                }
            }
            String abstractC1257a = toString();
            String lowerCase = timeUnit.toString().toLowerCase(Locale.ROOT);
            String str = "Waited " + j + " " + timeUnit.toString().toLowerCase(Locale.ROOT);
            String str2 = str;
            if (1000 + c < 0) {
                String str3 = str + " (plus ";
                long j2 = -c;
                long convert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
                long nanos2 = j2 - timeUnit.toNanos(convert);
                boolean z = convert == 0 || nanos2 > 1000;
                String str4 = str3;
                if (convert > 0) {
                    String str5 = str3 + convert + " " + lowerCase;
                    String str6 = str5;
                    if (z) {
                        str6 = str5 + ",";
                    }
                    str4 = str6 + " ";
                }
                String str7 = str4;
                if (z) {
                    str7 = str4 + nanos2 + " nanoseconds ";
                }
                str2 = str7 + "delay)";
            }
            if (!isDone()) {
                throw new TimeoutException(str2 + " for " + abstractC1257a);
            }
            throw new TimeoutException(str2 + " but future completed as timeout expired");
        }
        m17600c = m17600c(obj);
        return m17600c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f4254c instanceof C1260b;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        boolean z = true;
        Object obj = this.f4254c;
        boolean z2 = obj != null;
        if (obj instanceof RunnableC1265f) {
            z = false;
        }
        return z2 & z;
    }

    public String toString() {
        String str;
        StringBuilder append = new StringBuilder().append(super.toString()).append("[status=");
        if (isCancelled()) {
            append.append("CANCELLED");
        } else if (isDone()) {
            m17607a(append);
        } else {
            try {
                str = m17601c();
            } catch (RuntimeException e) {
                str = "Exception thrown from implementation: " + e.getClass();
            }
            if (str != null && !str.isEmpty()) {
                append.append("PENDING, info=[").append(str).append("]");
            } else if (isDone()) {
                m17607a(append);
            } else {
                append.append("PENDING");
            }
        }
        return append.append("]").toString();
    }
}
