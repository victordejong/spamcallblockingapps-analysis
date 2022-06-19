package androidx.p024c.p025a;

import com.appsflyer.share.Constants;
import com.google.api.client.googleapis.notifications.C15291b;
import com.google.common.util.concurrent.AbstractFutureC15579a;
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
/* renamed from: androidx.c.a.a */
/* loaded from: classes-dex2jar.jar:androidx/c/a/a.class */
public abstract class AbstractC0481a<V> implements AbstractFutureC15579a<V> {

    /* renamed from: b */
    static final AbstractC0483a f1839b;

    /* renamed from: g */
    private static final Object f1841g;

    /* renamed from: c */
    volatile Object f1842c;

    /* renamed from: d */
    volatile C0487d f1843d;

    /* renamed from: e */
    volatile C0491h f1844e;

    /* renamed from: a */
    static final boolean f1838a = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: f */
    private static final Logger f1840f = Logger.getLogger(AbstractC0481a.class.getName());

    /* renamed from: androidx.c.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/c/a/a$a.class */
    public static abstract class AbstractC0483a {
        private AbstractC0483a() {
        }

        /* renamed from: a */
        abstract void mo45419a(C0491h c0491h, C0491h c0491h2);

        /* renamed from: a */
        abstract void mo45418a(C0491h c0491h, Thread thread);

        /* renamed from: a */
        abstract boolean mo45417a(AbstractC0481a<?> abstractC0481a, C0487d c0487d, C0487d c0487d2);

        /* renamed from: a */
        abstract boolean mo45416a(AbstractC0481a<?> abstractC0481a, C0491h c0491h, C0491h c0491h2);

        /* renamed from: a */
        abstract boolean mo45415a(AbstractC0481a<?> abstractC0481a, Object obj, Object obj2);
    }

    /* renamed from: androidx.c.a.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/c/a/a$b.class */
    public static final class C0484b {

        /* renamed from: a */
        static final C0484b f1845a;

        /* renamed from: b */
        static final C0484b f1846b;

        /* renamed from: c */
        final boolean f1847c;

        /* renamed from: d */
        final Throwable f1848d;

        static {
            if (AbstractC0481a.f1838a) {
                f1846b = null;
                f1845a = null;
                return;
            }
            f1846b = new C0484b(false, null);
            f1845a = new C0484b(true, null);
        }

        C0484b(boolean z, Throwable th) {
            this.f1847c = z;
            this.f1848d = th;
        }
    }

    /* renamed from: androidx.c.a.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/c/a/a$c.class */
    public static final class C0485c {

        /* renamed from: a */
        static final C0485c f1849a = new C0485c(new Throwable("Failure occurred while trying to finish a future.") { // from class: androidx.c.a.a.c.1
            @Override // java.lang.Throwable
            public final Throwable fillInStackTrace() {
                synchronized (this) {
                }
                return this;
            }
        });

        /* renamed from: b */
        final Throwable f1850b;

        C0485c(Throwable th) {
            this.f1850b = (Throwable) AbstractC0481a.m45423b(th);
        }
    }

    /* renamed from: androidx.c.a.a$d */
    /* loaded from: classes-dex2jar.jar:androidx/c/a/a$d.class */
    public static final class C0487d {

        /* renamed from: a */
        static final C0487d f1851a = new C0487d(null, null);

        /* renamed from: b */
        final Runnable f1852b;

        /* renamed from: c */
        final Executor f1853c;

        /* renamed from: d */
        C0487d f1854d;

        C0487d(Runnable runnable, Executor executor) {
            this.f1852b = runnable;
            this.f1853c = executor;
        }
    }

    /* renamed from: androidx.c.a.a$e */
    /* loaded from: classes-dex2jar.jar:androidx/c/a/a$e.class */
    static final class C0488e extends AbstractC0483a {

        /* renamed from: a */
        final AtomicReferenceFieldUpdater<C0491h, Thread> f1855a;

        /* renamed from: b */
        final AtomicReferenceFieldUpdater<C0491h, C0491h> f1856b;

        /* renamed from: c */
        final AtomicReferenceFieldUpdater<AbstractC0481a, C0491h> f1857c;

        /* renamed from: d */
        final AtomicReferenceFieldUpdater<AbstractC0481a, C0487d> f1858d;

        /* renamed from: e */
        final AtomicReferenceFieldUpdater<AbstractC0481a, Object> f1859e;

        C0488e(AtomicReferenceFieldUpdater<C0491h, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<C0491h, C0491h> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<AbstractC0481a, C0491h> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<AbstractC0481a, C0487d> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<AbstractC0481a, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f1855a = atomicReferenceFieldUpdater;
            this.f1856b = atomicReferenceFieldUpdater2;
            this.f1857c = atomicReferenceFieldUpdater3;
            this.f1858d = atomicReferenceFieldUpdater4;
            this.f1859e = atomicReferenceFieldUpdater5;
        }

        @Override // androidx.p024c.p025a.AbstractC0481a.AbstractC0483a
        /* renamed from: a */
        final void mo45419a(C0491h c0491h, C0491h c0491h2) {
            this.f1856b.lazySet(c0491h, c0491h2);
        }

        @Override // androidx.p024c.p025a.AbstractC0481a.AbstractC0483a
        /* renamed from: a */
        final void mo45418a(C0491h c0491h, Thread thread) {
            this.f1855a.lazySet(c0491h, thread);
        }

        @Override // androidx.p024c.p025a.AbstractC0481a.AbstractC0483a
        /* renamed from: a */
        final boolean mo45417a(AbstractC0481a<?> abstractC0481a, C0487d c0487d, C0487d c0487d2) {
            return this.f1858d.compareAndSet(abstractC0481a, c0487d, c0487d2);
        }

        @Override // androidx.p024c.p025a.AbstractC0481a.AbstractC0483a
        /* renamed from: a */
        final boolean mo45416a(AbstractC0481a<?> abstractC0481a, C0491h c0491h, C0491h c0491h2) {
            return this.f1857c.compareAndSet(abstractC0481a, c0491h, c0491h2);
        }

        @Override // androidx.p024c.p025a.AbstractC0481a.AbstractC0483a
        /* renamed from: a */
        final boolean mo45415a(AbstractC0481a<?> abstractC0481a, Object obj, Object obj2) {
            return this.f1859e.compareAndSet(abstractC0481a, obj, obj2);
        }
    }

    /* renamed from: androidx.c.a.a$f */
    /* loaded from: classes-dex2jar.jar:androidx/c/a/a$f.class */
    public static final class RunnableC0489f<V> implements Runnable {

        /* renamed from: a */
        final AbstractC0481a<V> f1860a;

        /* renamed from: b */
        final AbstractFutureC15579a<? extends V> f1861b;

        RunnableC0489f(AbstractC0481a<V> abstractC0481a, AbstractFutureC15579a<? extends V> abstractFutureC15579a) {
            this.f1860a = abstractC0481a;
            this.f1861b = abstractFutureC15579a;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f1860a.f1842c != this) {
                return;
            }
            if (!AbstractC0481a.f1839b.mo45415a((AbstractC0481a<?>) this.f1860a, (Object) this, AbstractC0481a.m45427a((AbstractFutureC15579a<?>) this.f1861b))) {
                return;
            }
            AbstractC0481a.m45428a((AbstractC0481a<?>) this.f1860a);
        }
    }

    /* renamed from: androidx.c.a.a$g */
    /* loaded from: classes-dex2jar.jar:androidx/c/a/a$g.class */
    static final class C0490g extends AbstractC0483a {
        C0490g() {
            super();
        }

        @Override // androidx.p024c.p025a.AbstractC0481a.AbstractC0483a
        /* renamed from: a */
        final void mo45419a(C0491h c0491h, C0491h c0491h2) {
            c0491h.f1864c = c0491h2;
        }

        @Override // androidx.p024c.p025a.AbstractC0481a.AbstractC0483a
        /* renamed from: a */
        final void mo45418a(C0491h c0491h, Thread thread) {
            c0491h.f1863b = thread;
        }

        @Override // androidx.p024c.p025a.AbstractC0481a.AbstractC0483a
        /* renamed from: a */
        final boolean mo45417a(AbstractC0481a<?> abstractC0481a, C0487d c0487d, C0487d c0487d2) {
            synchronized (abstractC0481a) {
                if (abstractC0481a.f1843d == c0487d) {
                    abstractC0481a.f1843d = c0487d2;
                    return true;
                }
                return false;
            }
        }

        @Override // androidx.p024c.p025a.AbstractC0481a.AbstractC0483a
        /* renamed from: a */
        final boolean mo45416a(AbstractC0481a<?> abstractC0481a, C0491h c0491h, C0491h c0491h2) {
            synchronized (abstractC0481a) {
                if (abstractC0481a.f1844e == c0491h) {
                    abstractC0481a.f1844e = c0491h2;
                    return true;
                }
                return false;
            }
        }

        @Override // androidx.p024c.p025a.AbstractC0481a.AbstractC0483a
        /* renamed from: a */
        final boolean mo45415a(AbstractC0481a<?> abstractC0481a, Object obj, Object obj2) {
            synchronized (abstractC0481a) {
                if (abstractC0481a.f1842c == obj) {
                    abstractC0481a.f1842c = obj2;
                    return true;
                }
                return false;
            }
        }
    }

    /* renamed from: androidx.c.a.a$h */
    /* loaded from: classes-dex2jar.jar:androidx/c/a/a$h.class */
    public static final class C0491h {

        /* renamed from: a */
        static final C0491h f1862a = new C0491h(false);

        /* renamed from: b */
        volatile Thread f1863b;

        /* renamed from: c */
        volatile C0491h f1864c;

        C0491h() {
            AbstractC0481a.f1839b.mo45418a(this, Thread.currentThread());
        }

        C0491h(boolean z) {
        }

        /* renamed from: a */
        final void m45414a() {
            Thread thread = this.f1863b;
            if (thread != null) {
                this.f1863b = null;
                LockSupport.unpark(thread);
            }
        }

        /* renamed from: a */
        final void m45413a(C0491h c0491h) {
            AbstractC0481a.f1839b.mo45419a(this, c0491h);
        }
    }

    static {
        Throwable th;
        AbstractC0483a abstractC0483a;
        try {
            abstractC0483a = new C0488e(AtomicReferenceFieldUpdater.newUpdater(C0491h.class, Thread.class, C15291b.f55271a), AtomicReferenceFieldUpdater.newUpdater(C0491h.class, C0491h.class, Constants.URL_CAMPAIGN), AtomicReferenceFieldUpdater.newUpdater(AbstractC0481a.class, C0491h.class, "e"), AtomicReferenceFieldUpdater.newUpdater(AbstractC0481a.class, C0487d.class, "d"), AtomicReferenceFieldUpdater.newUpdater(AbstractC0481a.class, Object.class, Constants.URL_CAMPAIGN));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            abstractC0483a = new C0490g();
        }
        f1839b = abstractC0483a;
        if (th != null) {
            f1840f.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f1841g = new Object();
    }

    /* renamed from: a */
    private C0487d m45430a(C0487d c0487d) {
        C0487d c0487d2;
        do {
            c0487d2 = this.f1843d;
        } while (!f1839b.mo45417a((AbstractC0481a<?>) this, c0487d2, C0487d.f1851a));
        while (true) {
            C0487d c0487d3 = c0487d;
            c0487d = c0487d2;
            if (c0487d != null) {
                c0487d2 = c0487d.f1854d;
                c0487d.f1854d = c0487d3;
            } else {
                return c0487d3;
            }
        }
    }

    /* renamed from: a */
    static Object m45427a(AbstractFutureC15579a<?> abstractFutureC15579a) {
        if (abstractFutureC15579a instanceof AbstractC0481a) {
            Object obj = ((AbstractC0481a) abstractFutureC15579a).f1842c;
            C0484b c0484b = obj;
            if (obj instanceof C0484b) {
                C0484b c0484b2 = (C0484b) obj;
                c0484b = obj;
                if (c0484b2.f1847c) {
                    c0484b = c0484b2.f1848d != null ? new C0484b(false, c0484b2.f1848d) : C0484b.f1846b;
                }
            }
            return c0484b;
        }
        boolean isCancelled = abstractFutureC15579a.isCancelled();
        if ((!f1838a) && isCancelled) {
            return C0484b.f1846b;
        }
        try {
            Object m45424a = m45424a((Future<Object>) abstractFutureC15579a);
            return m45424a == null ? f1841g : m45424a;
        } catch (CancellationException e) {
            return !isCancelled ? new C0485c(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(abstractFutureC15579a)), e)) : new C0484b(false, e);
        } catch (ExecutionException e2) {
            return new C0485c(e2.getCause());
        } catch (Throwable th) {
            return new C0485c(th);
        }
    }

    /* renamed from: a */
    private static <V> V m45424a(Future<V> future) throws ExecutionException {
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
    private static CancellationException m45426a(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    /* renamed from: a */
    private void m45431a() {
        C0491h c0491h;
        do {
            c0491h = this.f1844e;
        } while (!f1839b.mo45416a((AbstractC0481a<?>) this, c0491h, C0491h.f1862a));
        while (c0491h != null) {
            c0491h.m45414a();
            c0491h = c0491h.f1864c;
        }
    }

    /* renamed from: a */
    private void m45429a(C0491h c0491h) {
        c0491h.f1863b = null;
        while (true) {
            C0491h c0491h2 = this.f1844e;
            if (c0491h2 == C0491h.f1862a) {
                return;
            }
            C0491h c0491h3 = null;
            while (c0491h2 != null) {
                C0491h c0491h4 = c0491h2.f1864c;
                if (c0491h2.f1863b == null) {
                    if (c0491h3 != null) {
                        c0491h3.f1864c = c0491h4;
                        c0491h2 = c0491h3;
                        if (c0491h3.f1863b == null) {
                            break;
                        }
                    } else if (f1839b.mo45416a((AbstractC0481a<?>) this, c0491h2, c0491h4)) {
                        c0491h2 = c0491h3;
                    }
                }
                c0491h3 = c0491h2;
                c0491h2 = c0491h4;
            }
            return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [androidx.c.a.a, androidx.c.a.a<V>] */
    /* JADX WARN: Type inference failed for: r0v26, types: [androidx.c.a.a$a] */
    /* renamed from: a */
    static void m45428a(AbstractC0481a<?> abstractC0481a) {
        C0487d c0487d = null;
        AbstractC0481a<?> abstractC0481a2 = abstractC0481a;
        while (true) {
            abstractC0481a2.m45431a();
            C0487d m45430a = abstractC0481a2.m45430a(c0487d);
            while (true) {
                C0487d c0487d2 = m45430a;
                if (c0487d2 != null) {
                    C0487d c0487d3 = c0487d2.f1854d;
                    Runnable runnable = c0487d2.f1852b;
                    if (runnable instanceof RunnableC0489f) {
                        RunnableC0489f runnableC0489f = (RunnableC0489f) runnable;
                        AbstractC0481a<V> abstractC0481a3 = runnableC0489f.f1860a;
                        if (abstractC0481a3.f1842c == runnableC0489f) {
                            c0487d = c0487d3;
                            abstractC0481a2 = abstractC0481a3;
                            if (!f1839b.mo45415a(abstractC0481a3, runnableC0489f, m45427a((AbstractFutureC15579a<?>) runnableC0489f.f1861b))) {
                            }
                        } else {
                            continue;
                        }
                    } else {
                        m45422b(runnable, c0487d2.f1853c);
                    }
                    m45430a = c0487d3;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    private void m45425a(StringBuilder sb) {
        try {
            Object m45424a = m45424a((Future<Object>) this);
            sb.append("SUCCESS, result=[");
            sb.append(m45420d(m45424a));
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

    /* renamed from: b */
    static <T> T m45423b(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: b */
    private static void m45422b(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = f1840f;
            Level level = Level.SEVERE;
            logger.log(level, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    /* renamed from: c */
    private static V m45421c(Object obj) throws ExecutionException {
        if (!(obj instanceof C0484b)) {
            if (obj instanceof C0485c) {
                throw new ExecutionException(((C0485c) obj).f1850b);
            }
            Object obj2 = obj;
            if (obj == f1841g) {
                obj2 = null;
            }
            return (V) obj2;
        }
        throw m45426a("Task was cancelled.", ((C0484b) obj).f1848d);
    }

    /* renamed from: d */
    private String m45420d(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    @Override // com.google.common.util.concurrent.AbstractFutureC15579a
    /* renamed from: a */
    public final void mo8638a(Runnable runnable, Executor executor) {
        C0487d c0487d;
        m45423b(runnable);
        m45423b(executor);
        C0487d c0487d2 = this.f1843d;
        if (c0487d2 == C0487d.f1851a) {
            m45422b(runnable, executor);
        }
        C0487d c0487d3 = new C0487d(runnable, executor);
        do {
            c0487d3.f1854d = c0487d2;
            if (f1839b.mo45417a((AbstractC0481a<?>) this, c0487d2, c0487d3)) {
                return;
            }
            c0487d = this.f1843d;
            c0487d2 = c0487d;
        } while (c0487d != C0487d.f1851a);
        m45422b(runnable, executor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public boolean mo40774a(V v) {
        V v2 = v;
        if (v == null) {
            v2 = f1841g;
        }
        if (f1839b.mo45415a((AbstractC0481a<?>) this, (Object) null, (Object) v2)) {
            m45428a((AbstractC0481a<?>) this);
            return true;
        }
        return false;
    }

    /* renamed from: a */
    public boolean mo41314a(Throwable th) {
        if (f1839b.mo45415a((AbstractC0481a<?>) this, (Object) null, (Object) new C0485c((Throwable) m45423b(th)))) {
            m45428a((AbstractC0481a<?>) this);
            return true;
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean z2;
        Object obj = this.f1842c;
        if ((obj == null) || (obj instanceof RunnableC0489f)) {
            C0484b c0484b = f1838a ? new C0484b(z, new CancellationException("Future.cancel() was called.")) : z ? C0484b.f1845a : C0484b.f1846b;
            z2 = false;
            AbstractC0481a<V> abstractC0481a = this;
            while (true) {
                if (f1839b.mo45415a((AbstractC0481a<?>) abstractC0481a, obj, (Object) c0484b)) {
                    m45428a((AbstractC0481a<?>) abstractC0481a);
                    z2 = true;
                    if (!(obj instanceof RunnableC0489f)) {
                        break;
                    }
                    AbstractFutureC15579a<? extends V> abstractFutureC15579a = ((RunnableC0489f) obj).f1861b;
                    if (!(abstractFutureC15579a instanceof AbstractC0481a)) {
                        abstractFutureC15579a.cancel(z);
                        z2 = true;
                        break;
                    }
                    abstractC0481a = (AbstractC0481a) abstractFutureC15579a;
                    obj = abstractC0481a.f1842c;
                    z2 = true;
                    if (!(obj == null) && !(obj instanceof RunnableC0489f)) {
                        break;
                    }
                    z2 = true;
                } else {
                    Object obj2 = abstractC0481a.f1842c;
                    obj = obj2;
                    if (!(obj2 instanceof RunnableC0489f)) {
                        break;
                    }
                }
            }
        } else {
            z2 = false;
        }
        return z2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004b, code lost:
        java.util.concurrent.locks.LockSupport.park(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0052, code lost:
        if (java.lang.Thread.interrupted() != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0055, code lost:
        r0 = r5.f1842c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005b, code lost:
        if (r0 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005e, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0063, code lost:
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006d, code lost:
        if ((r7 & (!(r0 instanceof androidx.p024c.p025a.AbstractC0481a.RunnableC0489f))) == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0074, code lost:
        return (V) m45421c(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0075, code lost:
        m45429a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0081, code lost:
        throw new java.lang.InterruptedException();
     */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V get() throws java.lang.InterruptedException, java.util.concurrent.ExecutionException {
        /*
            r5 = this;
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto L9b
            r0 = r5
            java.lang.Object r0 = r0.f1842c
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
            boolean r1 = r1 instanceof androidx.p024c.p025a.AbstractC0481a.RunnableC0489f
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L26
            r0 = r6
            java.lang.Object r0 = m45421c(r0)
            return r0
        L26:
            r0 = r5
            androidx.c.a.a$h r0 = r0.f1844e
            r6 = r0
            r0 = r6
            androidx.c.a.a$h r1 = androidx.p024c.p025a.AbstractC0481a.C0491h.f1862a
            if (r0 == r1) goto L93
            androidx.c.a.a$h r0 = new androidx.c.a.a$h
            r1 = r0
            r1.<init>()
            r8 = r0
        L3a:
            r0 = r8
            r1 = r6
            r0.m45413a(r1)
            androidx.c.a.a$a r0 = androidx.p024c.p025a.AbstractC0481a.f1839b
            r1 = r5
            r2 = r6
            r3 = r8
            boolean r0 = r0.mo45416a(r1, r2, r3)
            if (r0 == 0) goto L82
        L4b:
            r0 = r5
            java.util.concurrent.locks.LockSupport.park(r0)
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto L75
            r0 = r5
            java.lang.Object r0 = r0.f1842c
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L63
            r0 = 1
            r7 = r0
            goto L65
        L63:
            r0 = 0
            r7 = r0
        L65:
            r0 = r7
            r1 = r6
            boolean r1 = r1 instanceof androidx.p024c.p025a.AbstractC0481a.RunnableC0489f
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L4b
            r0 = r6
            java.lang.Object r0 = m45421c(r0)
            return r0
        L75:
            r0 = r5
            r1 = r8
            r0.m45429a(r1)
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        L82:
            r0 = r5
            androidx.c.a.a$h r0 = r0.f1844e
            r9 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            androidx.c.a.a$h r1 = androidx.p024c.p025a.AbstractC0481a.C0491h.f1862a
            if (r0 != r1) goto L3a
        L93:
            r0 = r5
            java.lang.Object r0 = r0.f1842c
            java.lang.Object r0 = m45421c(r0)
            return r0
        L9b:
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p024c.p025a.AbstractC0481a.get():java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0082, code lost:
        java.util.concurrent.locks.LockSupport.parkNanos(r6, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008b, code lost:
        if (java.lang.Thread.interrupted() != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008e, code lost:
        r0 = r6.f1842c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0096, code lost:
        if (r0 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0099, code lost:
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009f, code lost:
        r13 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ac, code lost:
        if ((r13 & (!(r0 instanceof androidx.p024c.p025a.AbstractC0481a.RunnableC0489f))) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b4, code lost:
        return (V) m45421c(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b5, code lost:
        r16 = r14 - java.lang.System.nanoTime();
        r10 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c7, code lost:
        if (r16 >= 1000) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ca, code lost:
        m45429a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d3, code lost:
        m45429a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e0, code lost:
        throw new java.lang.InterruptedException();
     */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v127, types: [long] */
    /* JADX WARN: Type inference failed for: r0v152, types: [long] */
    /* JADX WARN: Type inference failed for: r0v165, types: [long] */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V get(long r7, java.util.concurrent.TimeUnit r9) throws java.lang.InterruptedException, java.util.concurrent.TimeoutException, java.util.concurrent.ExecutionException {
        /*
            Method dump skipped, instructions count: 781
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p024c.p025a.AbstractC0481a.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f1842c instanceof C0484b;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.f1842c;
        return (!(obj instanceof RunnableC0489f)) & (obj != null);
    }

    public String toString() {
        String str;
        Object obj;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            m45425a(sb);
        } else {
            try {
                if (this.f1842c instanceof RunnableC0489f) {
                    str = "setFuture=[" + m45420d(((RunnableC0489f) obj).f1861b) + "]";
                } else if (this instanceof ScheduledFuture) {
                    str = "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
                } else {
                    str = null;
                }
            } catch (RuntimeException e) {
                str = "Exception thrown from implementation: " + e.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                m45425a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
