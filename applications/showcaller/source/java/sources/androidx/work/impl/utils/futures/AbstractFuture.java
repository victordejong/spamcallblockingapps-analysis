package androidx.work.impl.utils.futures;

import com.google.common.util.concurrent.AbstractFutureC8832a;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/futures/AbstractFuture.class */
public abstract class AbstractFuture<V> implements AbstractFutureC8832a<V> {

    /* renamed from: d */
    static final boolean f5647d = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: e */
    private static final Logger f5648e = Logger.getLogger(AbstractFuture.class.getName());

    /* renamed from: f */
    static final AbstractC1375b f5649f;

    /* renamed from: g */
    private static final Object f5650g;

    /* renamed from: h */
    volatile Object f5651h;

    /* renamed from: i */
    volatile C1377d f5652i;

    /* renamed from: j */
    volatile C1381h f5653j;

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/futures/AbstractFuture$Failure.class */
    public static final class Failure {

        /* renamed from: a */
        static final Failure f5654a = new Failure(new Throwable("Failure occurred while trying to finish a future.") { // from class: androidx.work.impl.utils.futures.AbstractFuture.Failure.1
            @Override // java.lang.Throwable
            public Throwable fillInStackTrace() {
                synchronized (this) {
                }
                return this;
            }
        });

        /* renamed from: b */
        final Throwable f5655b;

        Failure(Throwable th) {
            this.f5655b = (Throwable) AbstractFuture.m30206f(th);
        }
    }

    /* renamed from: androidx.work.impl.utils.futures.AbstractFuture$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/futures/AbstractFuture$b.class */
    public static abstract class AbstractC1375b {
        private AbstractC1375b() {
        }

        /* renamed from: a */
        abstract boolean mo30194a(AbstractFuture<?> abstractFuture, C1377d c1377d, C1377d c1377d2);

        /* renamed from: b */
        abstract boolean mo30193b(AbstractFuture<?> abstractFuture, Object obj, Object obj2);

        /* renamed from: c */
        abstract boolean mo30192c(AbstractFuture<?> abstractFuture, C1381h c1381h, C1381h c1381h2);

        /* renamed from: d */
        abstract void mo30191d(C1381h c1381h, C1381h c1381h2);

        /* renamed from: e */
        abstract void mo30190e(C1381h c1381h, Thread thread);
    }

    /* renamed from: androidx.work.impl.utils.futures.AbstractFuture$c */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/futures/AbstractFuture$c.class */
    public static final class C1376c {

        /* renamed from: a */
        static final C1376c f5656a;

        /* renamed from: b */
        static final C1376c f5657b;

        /* renamed from: c */
        final boolean f5658c;

        /* renamed from: d */
        final Throwable f5659d;

        static {
            if (AbstractFuture.f5647d) {
                f5657b = null;
                f5656a = null;
                return;
            }
            f5657b = new C1376c(false, null);
            f5656a = new C1376c(true, null);
        }

        C1376c(boolean z, Throwable th) {
            this.f5658c = z;
            this.f5659d = th;
        }
    }

    /* renamed from: androidx.work.impl.utils.futures.AbstractFuture$d */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/futures/AbstractFuture$d.class */
    public static final class C1377d {

        /* renamed from: a */
        static final C1377d f5660a = new C1377d(null, null);

        /* renamed from: b */
        final Runnable f5661b;

        /* renamed from: c */
        final Executor f5662c;

        /* renamed from: d */
        C1377d f5663d;

        C1377d(Runnable runnable, Executor executor) {
            this.f5661b = runnable;
            this.f5662c = executor;
        }
    }

    /* renamed from: androidx.work.impl.utils.futures.AbstractFuture$e */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/futures/AbstractFuture$e.class */
    private static final class C1378e extends AbstractC1375b {

        /* renamed from: a */
        final AtomicReferenceFieldUpdater<C1381h, Thread> f5664a;

        /* renamed from: b */
        final AtomicReferenceFieldUpdater<C1381h, C1381h> f5665b;

        /* renamed from: c */
        final AtomicReferenceFieldUpdater<AbstractFuture, C1381h> f5666c;

        /* renamed from: d */
        final AtomicReferenceFieldUpdater<AbstractFuture, C1377d> f5667d;

        /* renamed from: e */
        final AtomicReferenceFieldUpdater<AbstractFuture, Object> f5668e;

        C1378e(AtomicReferenceFieldUpdater<C1381h, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<C1381h, C1381h> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<AbstractFuture, C1381h> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<AbstractFuture, C1377d> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<AbstractFuture, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f5664a = atomicReferenceFieldUpdater;
            this.f5665b = atomicReferenceFieldUpdater2;
            this.f5666c = atomicReferenceFieldUpdater3;
            this.f5667d = atomicReferenceFieldUpdater4;
            this.f5668e = atomicReferenceFieldUpdater5;
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AbstractC1375b
        /* renamed from: a */
        boolean mo30194a(AbstractFuture<?> abstractFuture, C1377d c1377d, C1377d c1377d2) {
            return this.f5667d.compareAndSet(abstractFuture, c1377d, c1377d2);
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AbstractC1375b
        /* renamed from: b */
        boolean mo30193b(AbstractFuture<?> abstractFuture, Object obj, Object obj2) {
            return this.f5668e.compareAndSet(abstractFuture, obj, obj2);
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AbstractC1375b
        /* renamed from: c */
        boolean mo30192c(AbstractFuture<?> abstractFuture, C1381h c1381h, C1381h c1381h2) {
            return this.f5666c.compareAndSet(abstractFuture, c1381h, c1381h2);
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AbstractC1375b
        /* renamed from: d */
        void mo30191d(C1381h c1381h, C1381h c1381h2) {
            this.f5665b.lazySet(c1381h, c1381h2);
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AbstractC1375b
        /* renamed from: e */
        void mo30190e(C1381h c1381h, Thread thread) {
            this.f5664a.lazySet(c1381h, thread);
        }
    }

    /* renamed from: androidx.work.impl.utils.futures.AbstractFuture$f */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/futures/AbstractFuture$f.class */
    public static final class RunnableC1379f<V> implements Runnable {

        /* renamed from: d */
        final AbstractFuture<V> f5669d;

        /* renamed from: e */
        final AbstractFutureC8832a<? extends V> f5670e;

        RunnableC1379f(AbstractFuture<V> abstractFuture, AbstractFutureC8832a<? extends V> abstractFutureC8832a) {
            this.f5669d = abstractFuture;
            this.f5670e = abstractFutureC8832a;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f5669d.f5651h != this) {
                return;
            }
            if (!AbstractFuture.f5649f.mo30193b(this.f5669d, this, AbstractFuture.m30201k(this.f5670e))) {
                return;
            }
            AbstractFuture.m30204h(this.f5669d);
        }
    }

    /* renamed from: androidx.work.impl.utils.futures.AbstractFuture$g */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/futures/AbstractFuture$g.class */
    private static final class C1380g extends AbstractC1375b {
        C1380g() {
            super();
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AbstractC1375b
        /* renamed from: a */
        boolean mo30194a(AbstractFuture<?> abstractFuture, C1377d c1377d, C1377d c1377d2) {
            synchronized (abstractFuture) {
                if (abstractFuture.f5652i == c1377d) {
                    abstractFuture.f5652i = c1377d2;
                    return true;
                }
                return false;
            }
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AbstractC1375b
        /* renamed from: b */
        boolean mo30193b(AbstractFuture<?> abstractFuture, Object obj, Object obj2) {
            synchronized (abstractFuture) {
                if (abstractFuture.f5651h == obj) {
                    abstractFuture.f5651h = obj2;
                    return true;
                }
                return false;
            }
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AbstractC1375b
        /* renamed from: c */
        boolean mo30192c(AbstractFuture<?> abstractFuture, C1381h c1381h, C1381h c1381h2) {
            synchronized (abstractFuture) {
                if (abstractFuture.f5653j == c1381h) {
                    abstractFuture.f5653j = c1381h2;
                    return true;
                }
                return false;
            }
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AbstractC1375b
        /* renamed from: d */
        void mo30191d(C1381h c1381h, C1381h c1381h2) {
            c1381h.f5673c = c1381h2;
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AbstractC1375b
        /* renamed from: e */
        void mo30190e(C1381h c1381h, Thread thread) {
            c1381h.f5672b = thread;
        }
    }

    /* renamed from: androidx.work.impl.utils.futures.AbstractFuture$h */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/futures/AbstractFuture$h.class */
    public static final class C1381h {

        /* renamed from: a */
        static final C1381h f5671a = new C1381h(false);

        /* renamed from: b */
        volatile Thread f5672b;

        /* renamed from: c */
        volatile C1381h f5673c;

        C1381h() {
            AbstractFuture.f5649f.mo30190e(this, Thread.currentThread());
        }

        C1381h(boolean z) {
        }

        /* renamed from: a */
        void m30189a(C1381h c1381h) {
            AbstractFuture.f5649f.mo30191d(this, c1381h);
        }

        /* renamed from: b */
        void m30188b() {
            Thread thread = this.f5672b;
            if (thread != null) {
                this.f5672b = null;
                LockSupport.unpark(thread);
            }
        }
    }

    static {
        Throwable th;
        AbstractC1375b abstractC1375b;
        try {
            abstractC1375b = new C1378e(AtomicReferenceFieldUpdater.newUpdater(C1381h.class, Thread.class, "b"), AtomicReferenceFieldUpdater.newUpdater(C1381h.class, C1381h.class, "c"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, C1381h.class, "j"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, C1377d.class, "i"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Object.class, "h"));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            abstractC1375b = new C1380g();
        }
        f5649f = abstractC1375b;
        if (th != null) {
            f5648e.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f5650g = new Object();
    }

    /* renamed from: a */
    private void m30209a(StringBuilder sb) {
        try {
            Object m30200l = m30200l(this);
            sb.append("SUCCESS, result=[");
            sb.append(m30195t(m30200l));
            sb.append("]");
        } catch (CancellationException e) {
            sb.append("CANCELLED");
        } catch (RuntimeException e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e3) {
            sb.append("FAILURE, cause=[");
            sb.append(e3.getCause());
            sb.append("]");
        }
    }

    /* renamed from: c */
    private static CancellationException m30207c(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    /* renamed from: f */
    static <T> T m30206f(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: g */
    private C1377d m30205g(C1377d c1377d) {
        C1377d c1377d2;
        do {
            c1377d2 = this.f5652i;
        } while (!f5649f.mo30194a(this, c1377d2, C1377d.f5660a));
        while (true) {
            C1377d c1377d3 = c1377d;
            c1377d = c1377d2;
            if (c1377d != null) {
                c1377d2 = c1377d.f5663d;
                c1377d.f5663d = c1377d3;
            } else {
                return c1377d3;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [androidx.work.impl.utils.futures.AbstractFuture, androidx.work.impl.utils.futures.AbstractFuture<V>] */
    /* JADX WARN: Type inference failed for: r0v24, types: [androidx.work.impl.utils.futures.AbstractFuture$b] */
    /* renamed from: h */
    static void m30204h(AbstractFuture<?> abstractFuture) {
        C1377d c1377d;
        AbstractFuture<V> abstractFuture2;
        C1377d c1377d2 = null;
        while (true) {
            abstractFuture.m30197o();
            abstractFuture.m30208b();
            C1377d m30205g = abstractFuture.m30205g(c1377d2);
            while (true) {
                C1377d c1377d3 = m30205g;
                if (c1377d3 == null) {
                    return;
                }
                c1377d = c1377d3.f5663d;
                Runnable runnable = c1377d3.f5661b;
                if (runnable instanceof RunnableC1379f) {
                    RunnableC1379f runnableC1379f = (RunnableC1379f) runnable;
                    abstractFuture2 = runnableC1379f.f5669d;
                    if (abstractFuture2.f5651h == runnableC1379f) {
                        if (f5649f.mo30193b(abstractFuture2, runnableC1379f, m30201k(runnableC1379f.f5670e))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    m30203i(runnable, c1377d3.f5662c);
                }
                m30205g = c1377d;
            }
            c1377d2 = c1377d;
            abstractFuture = abstractFuture2;
        }
    }

    /* renamed from: i */
    private static void m30203i(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = f5648e;
            Level level = Level.SEVERE;
            logger.log(level, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    /* renamed from: j */
    private V m30202j(Object obj) {
        if (!(obj instanceof C1376c)) {
            if (obj instanceof Failure) {
                throw new ExecutionException(((Failure) obj).f5655b);
            }
            Object obj2 = obj;
            if (obj == f5650g) {
                obj2 = null;
            }
            return (V) obj2;
        }
        throw m30207c("Task was cancelled.", ((C1376c) obj).f5659d);
    }

    /* renamed from: k */
    static Object m30201k(AbstractFutureC8832a<?> abstractFutureC8832a) {
        if (abstractFutureC8832a instanceof AbstractFuture) {
            Object obj = ((AbstractFuture) abstractFutureC8832a).f5651h;
            C1376c c1376c = obj;
            if (obj instanceof C1376c) {
                C1376c c1376c2 = (C1376c) obj;
                c1376c = obj;
                if (c1376c2.f5658c) {
                    c1376c = c1376c2.f5659d != null ? new C1376c(false, c1376c2.f5659d) : C1376c.f5657b;
                }
            }
            return c1376c;
        }
        boolean isCancelled = abstractFutureC8832a.isCancelled();
        if ((!f5647d) && isCancelled) {
            return C1376c.f5657b;
        }
        try {
            Object m30200l = m30200l(abstractFutureC8832a);
            Object obj2 = m30200l;
            if (m30200l == null) {
                obj2 = f5650g;
            }
            return obj2;
        } catch (CancellationException e) {
            if (isCancelled) {
                return new C1376c(false, e);
            }
            return new Failure(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + abstractFutureC8832a, e));
        } catch (ExecutionException e2) {
            return new Failure(e2.getCause());
        } catch (Throwable th) {
            return new Failure(th);
        }
    }

    /* renamed from: l */
    private static <V> V m30200l(Future<V> future) {
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

    /* renamed from: o */
    private void m30197o() {
        C1381h c1381h;
        do {
            c1381h = this.f5653j;
        } while (!f5649f.mo30192c(this, c1381h, C1381h.f5671a));
        while (c1381h != null) {
            c1381h.m30188b();
            c1381h = c1381h.f5673c;
        }
    }

    /* renamed from: p */
    private void m30196p(C1381h c1381h) {
        C1381h c1381h2;
        c1381h.f5672b = null;
        while (true) {
            C1381h c1381h3 = this.f5653j;
            if (c1381h3 == C1381h.f5671a) {
                return;
            }
            C1381h c1381h4 = null;
            while (true) {
                C1381h c1381h5 = c1381h4;
                if (c1381h3 == null) {
                    return;
                }
                C1381h c1381h6 = c1381h3.f5673c;
                if (c1381h3.f5672b != null) {
                    c1381h2 = c1381h3;
                } else if (c1381h5 != null) {
                    c1381h5.f5673c = c1381h6;
                    c1381h2 = c1381h5;
                    if (c1381h5.f5672b == null) {
                        break;
                    }
                } else {
                    c1381h2 = c1381h5;
                    if (!f5649f.mo30192c(this, c1381h3, c1381h6)) {
                        break;
                    }
                }
                c1381h3 = c1381h6;
                c1381h4 = c1381h2;
            }
        }
    }

    /* renamed from: t */
    private String m30195t(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    /* renamed from: b */
    protected void m30208b() {
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean z2;
        Object obj = this.f5651h;
        if ((obj == null) || (obj instanceof RunnableC1379f)) {
            C1376c c1376c = f5647d ? new C1376c(z, new CancellationException("Future.cancel() was called.")) : z ? C1376c.f5656a : C1376c.f5657b;
            z2 = false;
            AbstractFuture<V> abstractFuture = this;
            while (true) {
                if (f5649f.mo30193b(abstractFuture, obj, c1376c)) {
                    if (z) {
                        abstractFuture.m30199m();
                    }
                    m30204h(abstractFuture);
                    z2 = true;
                    if (!(obj instanceof RunnableC1379f)) {
                        break;
                    }
                    AbstractFutureC8832a<? extends V> abstractFutureC8832a = ((RunnableC1379f) obj).f5670e;
                    if (!(abstractFutureC8832a instanceof AbstractFuture)) {
                        abstractFutureC8832a.cancel(z);
                        z2 = true;
                        break;
                    }
                    abstractFuture = (AbstractFuture) abstractFutureC8832a;
                    obj = abstractFuture.f5651h;
                    z2 = true;
                    if (!(obj == null) && !(obj instanceof RunnableC1379f)) {
                        break;
                    }
                    z2 = true;
                } else {
                    Object obj2 = abstractFuture.f5651h;
                    obj = obj2;
                    if (!(obj2 instanceof RunnableC1379f)) {
                        break;
                    }
                }
            }
        } else {
            z2 = false;
        }
        return z2;
    }

    @Override // com.google.common.util.concurrent.AbstractFutureC8832a
    /* renamed from: e */
    public final void mo2574e(Runnable runnable, Executor executor) {
        C1377d c1377d;
        m30206f(runnable);
        m30206f(executor);
        C1377d c1377d2 = this.f5652i;
        if (c1377d2 == C1377d.f5660a) {
            m30203i(runnable, executor);
        }
        C1377d c1377d3 = new C1377d(runnable, executor);
        do {
            c1377d3.f5663d = c1377d2;
            if (f5649f.mo30194a(this, c1377d2, c1377d3)) {
                return;
            }
            c1377d = this.f5652i;
            c1377d2 = c1377d;
        } while (c1377d != C1377d.f5660a);
        m30203i(runnable, executor);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
        java.util.concurrent.locks.LockSupport.park(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0053, code lost:
        if (java.lang.Thread.interrupted() != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0056, code lost:
        r0 = r5.f5651h;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005c, code lost:
        if (r0 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005f, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0064, code lost:
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006e, code lost:
        if ((r7 & (!(r0 instanceof androidx.work.impl.utils.futures.AbstractFuture.RunnableC1379f))) == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0076, code lost:
        return m30202j(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0077, code lost:
        m30196p(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0083, code lost:
        throw new java.lang.InterruptedException();
     */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V get() {
        /*
            r5 = this;
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto L9e
            r0 = r5
            java.lang.Object r0 = r0.f5651h
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L14
            r0 = 1
            r7 = r0
            goto L16
        L14:
            r0 = 0
            r7 = r0
        L16:
            r0 = r7
            r1 = r6
            boolean r1 = r1 instanceof androidx.work.impl.utils.futures.AbstractFuture.RunnableC1379f
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L27
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m30202j(r1)
            return r0
        L27:
            r0 = r5
            androidx.work.impl.utils.futures.AbstractFuture$h r0 = r0.f5653j
            r6 = r0
            r0 = r6
            androidx.work.impl.utils.futures.AbstractFuture$h r1 = androidx.work.impl.utils.futures.AbstractFuture.C1381h.f5671a
            if (r0 == r1) goto L95
            androidx.work.impl.utils.futures.AbstractFuture$h r0 = new androidx.work.impl.utils.futures.AbstractFuture$h
            r1 = r0
            r1.<init>()
            r8 = r0
        L3b:
            r0 = r8
            r1 = r6
            r0.m30189a(r1)
            androidx.work.impl.utils.futures.AbstractFuture$b r0 = androidx.work.impl.utils.futures.AbstractFuture.f5649f
            r1 = r5
            r2 = r6
            r3 = r8
            boolean r0 = r0.mo30192c(r1, r2, r3)
            if (r0 == 0) goto L84
        L4c:
            r0 = r5
            java.util.concurrent.locks.LockSupport.park(r0)
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto L77
            r0 = r5
            java.lang.Object r0 = r0.f5651h
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L64
            r0 = 1
            r7 = r0
            goto L66
        L64:
            r0 = 0
            r7 = r0
        L66:
            r0 = r7
            r1 = r6
            boolean r1 = r1 instanceof androidx.work.impl.utils.futures.AbstractFuture.RunnableC1379f
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L4c
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m30202j(r1)
            return r0
        L77:
            r0 = r5
            r1 = r8
            r0.m30196p(r1)
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        L84:
            r0 = r5
            androidx.work.impl.utils.futures.AbstractFuture$h r0 = r0.f5653j
            r9 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            androidx.work.impl.utils.futures.AbstractFuture$h r1 = androidx.work.impl.utils.futures.AbstractFuture.C1381h.f5671a
            if (r0 != r1) goto L3b
        L95:
            r0 = r5
            r1 = r5
            java.lang.Object r1 = r1.f5651h
            java.lang.Object r0 = r0.m30202j(r1)
            return r0
        L9e:
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.futures.AbstractFuture.get():java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0083, code lost:
        java.util.concurrent.locks.LockSupport.parkNanos(r6, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008c, code lost:
        if (java.lang.Thread.interrupted() != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008f, code lost:
        r0 = r6.f5651h;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0097, code lost:
        if (r0 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009a, code lost:
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a0, code lost:
        r13 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ad, code lost:
        if ((r13 & (!(r0 instanceof androidx.work.impl.utils.futures.AbstractFuture.RunnableC1379f))) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b6, code lost:
        return m30202j(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b7, code lost:
        r16 = r14 - java.lang.System.nanoTime();
        r10 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c9, code lost:
        if (r16 >= 1000) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00cc, code lost:
        m30196p(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d5, code lost:
        m30196p(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e2, code lost:
        throw new java.lang.InterruptedException();
     */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v131, types: [long] */
    /* JADX WARN: Type inference failed for: r0v155, types: [long] */
    /* JADX WARN: Type inference failed for: r0v168, types: [long] */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V get(long r7, java.util.concurrent.TimeUnit r9) {
        /*
            Method dump skipped, instructions count: 798
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.futures.AbstractFuture.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f5651h instanceof C1376c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.f5651h;
        return (!(obj instanceof RunnableC1379f)) & (obj != null);
    }

    /* renamed from: m */
    protected void m30199m() {
    }

    /* renamed from: n */
    protected String m30198n() {
        Object obj = this.f5651h;
        if (obj instanceof RunnableC1379f) {
            return "setFuture=[" + m30195t(((RunnableC1379f) obj).f5670e) + "]";
        } else if (!(this instanceof ScheduledFuture)) {
            return null;
        } else {
            return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: q */
    public boolean mo30187q(V v) {
        V v2 = v;
        if (v == null) {
            v2 = f5650g;
        }
        if (f5649f.mo30193b(this, null, v2)) {
            m30204h(this);
            return true;
        }
        return false;
    }

    /* renamed from: r */
    public boolean mo30186r(Throwable th) {
        if (f5649f.mo30193b(this, null, new Failure((Throwable) m30206f(th)))) {
            m30204h(this);
            return true;
        }
        return false;
    }

    /* renamed from: s */
    public boolean mo30185s(AbstractFutureC8832a<? extends V> abstractFutureC8832a) {
        Failure failure;
        m30206f(abstractFutureC8832a);
        Object obj = this.f5651h;
        Object obj2 = obj;
        if (obj == null) {
            if (abstractFutureC8832a.isDone()) {
                if (!f5649f.mo30193b(this, null, m30201k(abstractFutureC8832a))) {
                    return false;
                }
                m30204h(this);
                return true;
            }
            RunnableC1379f runnableC1379f = new RunnableC1379f(this, abstractFutureC8832a);
            if (f5649f.mo30193b(this, null, runnableC1379f)) {
                try {
                    abstractFutureC8832a.mo2574e(runnableC1379f, DirectExecutor.INSTANCE);
                    return true;
                } catch (Throwable th) {
                    try {
                        failure = new Failure(th);
                    } catch (Throwable th2) {
                        failure = Failure.f5654a;
                    }
                    f5649f.mo30193b(this, runnableC1379f, failure);
                    return true;
                }
            }
            obj2 = this.f5651h;
        }
        if (obj2 instanceof C1376c) {
            abstractFutureC8832a.cancel(((C1376c) obj2).f5658c);
            return false;
        }
        return false;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            m30209a(sb);
        } else {
            try {
                str = m30198n();
            } catch (RuntimeException e) {
                str = "Exception thrown from implementation: " + e.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                m30209a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
