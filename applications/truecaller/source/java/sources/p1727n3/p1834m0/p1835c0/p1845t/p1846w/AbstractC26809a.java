package p1727n3.p1834m0.p1835c0.p1845t.p1846w;

import com.google.common.util.concurrent.ListenableFuture;
import com.huawei.hms.opendevice.AbstractC2405c;
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
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.m0.c0.t.w.a */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/t/w/a.class */
public abstract class AbstractC26809a<V> implements ListenableFuture<V> {

    /* renamed from: d */
    public static final boolean f75022d = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: e */
    public static final Logger f75023e = Logger.getLogger(AbstractC26809a.class.getName());

    /* renamed from: f */
    public static final AbstractC26811b f75024f;

    /* renamed from: g */
    public static final Object f75025g;

    /* renamed from: a */
    public volatile Object f75026a;

    /* renamed from: b */
    public volatile C26815e f75027b;

    /* renamed from: c */
    public volatile C26819i f75028c;

    /* renamed from: n3.m0.c0.t.w.a$b */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/t/w/a$b.class */
    public static abstract class AbstractC26811b {
        public AbstractC26811b(C26810a c26810a) {
        }

        /* renamed from: a */
        public abstract boolean mo1313a(AbstractC26809a<?> abstractC26809a, C26815e c26815e, C26815e c26815e2);

        /* renamed from: b */
        public abstract boolean mo1312b(AbstractC26809a<?> abstractC26809a, Object obj, Object obj2);

        /* renamed from: c */
        public abstract boolean mo1311c(AbstractC26809a<?> abstractC26809a, C26819i c26819i, C26819i c26819i2);

        /* renamed from: d */
        public abstract void mo1310d(C26819i c26819i, C26819i c26819i2);

        /* renamed from: e */
        public abstract void mo1309e(C26819i c26819i, Thread thread);
    }

    /* renamed from: n3.m0.c0.t.w.a$c */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/t/w/a$c.class */
    public static final class C26812c {

        /* renamed from: c */
        public static final C26812c f75029c;

        /* renamed from: d */
        public static final C26812c f75030d;

        /* renamed from: a */
        public final boolean f75031a;

        /* renamed from: b */
        public final Throwable f75032b;

        static {
            if (AbstractC26809a.f75022d) {
                f75030d = null;
                f75029c = null;
                return;
            }
            f75030d = new C26812c(false, null);
            f75029c = new C26812c(true, null);
        }

        public C26812c(boolean z, Throwable th) {
            this.f75031a = z;
            this.f75032b = th;
        }
    }

    /* renamed from: n3.m0.c0.t.w.a$d */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/t/w/a$d.class */
    public static final class C26813d {

        /* renamed from: b */
        public static final C26813d f75033b = new C26813d(new C26814a("Failure occurred while trying to finish a future."));

        /* renamed from: a */
        public final Throwable f75034a;

        /* renamed from: n3.m0.c0.t.w.a$d$a */
        /* loaded from: classes-dex2jar.jar:n3/m0/c0/t/w/a$d$a.class */
        public class C26814a extends Throwable {
            public C26814a(String str) {
                super(str);
            }

            @Override // java.lang.Throwable
            public Throwable fillInStackTrace() {
                synchronized (this) {
                }
                return this;
            }
        }

        public C26813d(Throwable th) {
            boolean z = AbstractC26809a.f75022d;
            Objects.requireNonNull(th);
            this.f75034a = th;
        }
    }

    /* renamed from: n3.m0.c0.t.w.a$e */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/t/w/a$e.class */
    public static final class C26815e {

        /* renamed from: d */
        public static final C26815e f75035d = new C26815e(null, null);

        /* renamed from: a */
        public final Runnable f75036a;

        /* renamed from: b */
        public final Executor f75037b;

        /* renamed from: c */
        public C26815e f75038c;

        public C26815e(Runnable runnable, Executor executor) {
            this.f75036a = runnable;
            this.f75037b = executor;
        }
    }

    /* renamed from: n3.m0.c0.t.w.a$f */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/t/w/a$f.class */
    public static final class C26816f extends AbstractC26811b {

        /* renamed from: a */
        public final AtomicReferenceFieldUpdater<C26819i, Thread> f75039a;

        /* renamed from: b */
        public final AtomicReferenceFieldUpdater<C26819i, C26819i> f75040b;

        /* renamed from: c */
        public final AtomicReferenceFieldUpdater<AbstractC26809a, C26819i> f75041c;

        /* renamed from: d */
        public final AtomicReferenceFieldUpdater<AbstractC26809a, C26815e> f75042d;

        /* renamed from: e */
        public final AtomicReferenceFieldUpdater<AbstractC26809a, Object> f75043e;

        public C26816f(AtomicReferenceFieldUpdater<C26819i, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<C26819i, C26819i> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<AbstractC26809a, C26819i> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<AbstractC26809a, C26815e> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<AbstractC26809a, Object> atomicReferenceFieldUpdater5) {
            super(null);
            this.f75039a = atomicReferenceFieldUpdater;
            this.f75040b = atomicReferenceFieldUpdater2;
            this.f75041c = atomicReferenceFieldUpdater3;
            this.f75042d = atomicReferenceFieldUpdater4;
            this.f75043e = atomicReferenceFieldUpdater5;
        }

        @Override // p1727n3.p1834m0.p1835c0.p1845t.p1846w.AbstractC26809a.AbstractC26811b
        /* renamed from: a */
        public boolean mo1313a(AbstractC26809a<?> abstractC26809a, C26815e c26815e, C26815e c26815e2) {
            return this.f75042d.compareAndSet(abstractC26809a, c26815e, c26815e2);
        }

        @Override // p1727n3.p1834m0.p1835c0.p1845t.p1846w.AbstractC26809a.AbstractC26811b
        /* renamed from: b */
        public boolean mo1312b(AbstractC26809a<?> abstractC26809a, Object obj, Object obj2) {
            return this.f75043e.compareAndSet(abstractC26809a, obj, obj2);
        }

        @Override // p1727n3.p1834m0.p1835c0.p1845t.p1846w.AbstractC26809a.AbstractC26811b
        /* renamed from: c */
        public boolean mo1311c(AbstractC26809a<?> abstractC26809a, C26819i c26819i, C26819i c26819i2) {
            return this.f75041c.compareAndSet(abstractC26809a, c26819i, c26819i2);
        }

        @Override // p1727n3.p1834m0.p1835c0.p1845t.p1846w.AbstractC26809a.AbstractC26811b
        /* renamed from: d */
        public void mo1310d(C26819i c26819i, C26819i c26819i2) {
            this.f75040b.lazySet(c26819i, c26819i2);
        }

        @Override // p1727n3.p1834m0.p1835c0.p1845t.p1846w.AbstractC26809a.AbstractC26811b
        /* renamed from: e */
        public void mo1309e(C26819i c26819i, Thread thread) {
            this.f75039a.lazySet(c26819i, thread);
        }
    }

    /* renamed from: n3.m0.c0.t.w.a$g */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/t/w/a$g.class */
    public static final class RunnableC26817g<V> implements Runnable {

        /* renamed from: a */
        public final AbstractC26809a<V> f75044a;

        /* renamed from: b */
        public final ListenableFuture<? extends V> f75045b;

        public RunnableC26817g(AbstractC26809a<V> abstractC26809a, ListenableFuture<? extends V> listenableFuture) {
            this.f75044a = abstractC26809a;
            this.f75045b = listenableFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f75044a.f75026a != this) {
                return;
            }
            if (!AbstractC26809a.f75024f.mo1312b(this.f75044a, this, AbstractC26809a.m1317e(this.f75045b))) {
                return;
            }
            AbstractC26809a.m1320b(this.f75044a);
        }
    }

    /* renamed from: n3.m0.c0.t.w.a$h */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/t/w/a$h.class */
    public static final class C26818h extends AbstractC26811b {
        public C26818h() {
            super(null);
        }

        @Override // p1727n3.p1834m0.p1835c0.p1845t.p1846w.AbstractC26809a.AbstractC26811b
        /* renamed from: a */
        public boolean mo1313a(AbstractC26809a<?> abstractC26809a, C26815e c26815e, C26815e c26815e2) {
            synchronized (abstractC26809a) {
                if (abstractC26809a.f75027b == c26815e) {
                    abstractC26809a.f75027b = c26815e2;
                    return true;
                }
                return false;
            }
        }

        @Override // p1727n3.p1834m0.p1835c0.p1845t.p1846w.AbstractC26809a.AbstractC26811b
        /* renamed from: b */
        public boolean mo1312b(AbstractC26809a<?> abstractC26809a, Object obj, Object obj2) {
            synchronized (abstractC26809a) {
                if (abstractC26809a.f75026a == obj) {
                    abstractC26809a.f75026a = obj2;
                    return true;
                }
                return false;
            }
        }

        @Override // p1727n3.p1834m0.p1835c0.p1845t.p1846w.AbstractC26809a.AbstractC26811b
        /* renamed from: c */
        public boolean mo1311c(AbstractC26809a<?> abstractC26809a, C26819i c26819i, C26819i c26819i2) {
            synchronized (abstractC26809a) {
                if (abstractC26809a.f75028c == c26819i) {
                    abstractC26809a.f75028c = c26819i2;
                    return true;
                }
                return false;
            }
        }

        @Override // p1727n3.p1834m0.p1835c0.p1845t.p1846w.AbstractC26809a.AbstractC26811b
        /* renamed from: d */
        public void mo1310d(C26819i c26819i, C26819i c26819i2) {
            c26819i.f75048b = c26819i2;
        }

        @Override // p1727n3.p1834m0.p1835c0.p1845t.p1846w.AbstractC26809a.AbstractC26811b
        /* renamed from: e */
        public void mo1309e(C26819i c26819i, Thread thread) {
            c26819i.f75047a = thread;
        }
    }

    /* renamed from: n3.m0.c0.t.w.a$i */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/t/w/a$i.class */
    public static final class C26819i {

        /* renamed from: c */
        public static final C26819i f75046c = new C26819i(false);

        /* renamed from: a */
        public volatile Thread f75047a;

        /* renamed from: b */
        public volatile C26819i f75048b;

        public C26819i() {
            AbstractC26809a.f75024f.mo1309e(this, Thread.currentThread());
        }

        public C26819i(boolean z) {
        }
    }

    static {
        Throwable th;
        AbstractC26811b abstractC26811b;
        try {
            abstractC26811b = new C26816f(AtomicReferenceFieldUpdater.newUpdater(C26819i.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(C26819i.class, C26819i.class, C22021b.f61237c), AtomicReferenceFieldUpdater.newUpdater(AbstractC26809a.class, C26819i.class, AbstractC2405c.f7629a), AtomicReferenceFieldUpdater.newUpdater(AbstractC26809a.class, C26815e.class, C22021b.f61237c), AtomicReferenceFieldUpdater.newUpdater(AbstractC26809a.class, Object.class, "a"));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            abstractC26811b = new C26818h();
        }
        f75024f = abstractC26811b;
        if (th != null) {
            f75023e.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f75025g = new Object();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public static void m1320b(AbstractC26809a<?> abstractC26809a) {
        C26815e c26815e;
        C26815e c26815e2;
        AbstractC26809a abstractC26809a2 = abstractC26809a;
        C26815e c26815e3 = null;
        while (true) {
            C26819i c26819i = abstractC26809a2.f75028c;
            if (f75024f.mo1311c(abstractC26809a2, c26819i, C26819i.f75046c)) {
                while (c26819i != null) {
                    Thread thread = c26819i.f75047a;
                    if (thread != null) {
                        c26819i.f75047a = null;
                        LockSupport.unpark(thread);
                    }
                    c26819i = c26819i.f75048b;
                }
                do {
                    c26815e = abstractC26809a2.f75027b;
                } while (!f75024f.mo1313a(abstractC26809a2, c26815e, C26815e.f75035d));
                C26815e c26815e4 = c26815e;
                while (true) {
                    C26815e c26815e5 = c26815e4;
                    c26815e2 = c26815e3;
                    if (c26815e5 != null) {
                        c26815e4 = c26815e5.f75038c;
                        c26815e5.f75038c = c26815e3;
                        c26815e3 = c26815e5;
                    }
                }
                while (c26815e2 != null) {
                    c26815e3 = c26815e2.f75038c;
                    Runnable runnable = c26815e2.f75036a;
                    if (runnable instanceof RunnableC26817g) {
                        RunnableC26817g runnableC26817g = (RunnableC26817g) runnable;
                        abstractC26809a2 = (AbstractC26809a<V>) runnableC26817g.f75044a;
                        if (abstractC26809a2.f75026a == runnableC26817g) {
                            if (f75024f.mo1312b(abstractC26809a2, runnableC26817g, m1317e(runnableC26817g.f75045b))) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        m1319c(runnable, c26815e2.f75037b);
                    }
                    c26815e2 = c26815e3;
                }
                return;
            }
        }
    }

    /* renamed from: c */
    public static void m1319c(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = f75023e;
            Level level = Level.SEVERE;
            logger.log(level, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    /* renamed from: e */
    public static Object m1317e(ListenableFuture<?> listenableFuture) {
        if (listenableFuture instanceof AbstractC26809a) {
            Object obj = ((AbstractC26809a) listenableFuture).f75026a;
            C26812c c26812c = obj;
            if (obj instanceof C26812c) {
                C26812c c26812c2 = (C26812c) obj;
                c26812c = obj;
                if (c26812c2.f75031a) {
                    c26812c = c26812c2.f75032b != null ? new C26812c(false, c26812c2.f75032b) : C26812c.f75030d;
                }
            }
            return c26812c;
        }
        boolean isCancelled = listenableFuture.isCancelled();
        if ((!f75022d) && isCancelled) {
            return C26812c.f75030d;
        }
        try {
            Object m1316f = m1316f(listenableFuture);
            Object obj2 = m1316f;
            if (m1316f == null) {
                obj2 = f75025g;
            }
            return obj2;
        } catch (CancellationException e) {
            if (isCancelled) {
                return new C26812c(false, e);
            }
            return new C26813d(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + listenableFuture, e));
        } catch (ExecutionException e2) {
            return new C26813d(e2.getCause());
        } catch (Throwable th) {
            return new C26813d(th);
        }
    }

    /* renamed from: f */
    public static <V> V m1316f(Future<V> future) throws ExecutionException {
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
    public final void m1321a(StringBuilder sb) {
        try {
            Object m1316f = m1316f(this);
            sb.append("SUCCESS, result=[");
            sb.append(m1316f == this ? "this future" : String.valueOf(m1316f));
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

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void addListener(Runnable runnable, Executor executor) {
        C26815e c26815e;
        C26815e c26815e2 = C26815e.f75035d;
        Objects.requireNonNull(runnable);
        Objects.requireNonNull(executor);
        C26815e c26815e3 = this.f75027b;
        if (c26815e3 == c26815e2) {
            m1319c(runnable, executor);
        }
        C26815e c26815e4 = new C26815e(runnable, executor);
        do {
            c26815e4.f75038c = c26815e3;
            if (f75024f.mo1313a(this, c26815e3, c26815e4)) {
                return;
            }
            c26815e = this.f75027b;
            c26815e3 = c26815e;
        } while (c26815e != c26815e2);
        m1319c(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean z2;
        Object obj = this.f75026a;
        if ((obj == null) || (obj instanceof RunnableC26817g)) {
            C26812c c26812c = f75022d ? new C26812c(z, new CancellationException("Future.cancel() was called.")) : z ? C26812c.f75029c : C26812c.f75030d;
            AbstractC26809a<V> abstractC26809a = this;
            z2 = false;
            while (true) {
                if (f75024f.mo1312b(abstractC26809a, obj, c26812c)) {
                    m1320b(abstractC26809a);
                    z2 = true;
                    if (!(obj instanceof RunnableC26817g)) {
                        break;
                    }
                    ListenableFuture<? extends V> listenableFuture = ((RunnableC26817g) obj).f75045b;
                    if (!(listenableFuture instanceof AbstractC26809a)) {
                        listenableFuture.cancel(z);
                        z2 = true;
                        break;
                    }
                    abstractC26809a = (AbstractC26809a) listenableFuture;
                    obj = abstractC26809a.f75026a;
                    z2 = true;
                    if (!(obj == null) && !(obj instanceof RunnableC26817g)) {
                        break;
                    }
                    z2 = true;
                } else {
                    Object obj2 = abstractC26809a.f75026a;
                    obj = obj2;
                    if (!(obj2 instanceof RunnableC26817g)) {
                        break;
                    }
                }
            }
        } else {
            z2 = false;
        }
        return z2;
    }

    /* renamed from: d */
    public final V m1318d(Object obj) throws ExecutionException {
        if (obj instanceof C26812c) {
            Throwable th = ((C26812c) obj).f75032b;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        } else if (obj instanceof C26813d) {
            throw new ExecutionException(((C26813d) obj).f75034a);
        } else {
            Object obj2 = obj;
            if (obj == f75025g) {
                obj2 = null;
            }
            return (V) obj2;
        }
    }

    /* renamed from: g */
    public String m1315g() {
        Object obj = this.f75026a;
        if (obj instanceof RunnableC26817g) {
            StringBuilder m8728C = C22128a.m8728C("setFuture=[");
            ListenableFuture<? extends V> listenableFuture = ((RunnableC26817g) obj).f75045b;
            return C22128a.m8618h(m8728C, listenableFuture == this ? "this future" : String.valueOf(listenableFuture), "]");
        } else if (!(this instanceof ScheduledFuture)) {
            return null;
        } else {
            StringBuilder m8728C2 = C22128a.m8728C("remaining delay=[");
            m8728C2.append(((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS));
            m8728C2.append(" ms]");
            return m8728C2.toString();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0057, code lost:
        java.util.concurrent.locks.LockSupport.park(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005e, code lost:
        if (java.lang.Thread.interrupted() != false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0061, code lost:
        r0 = r5.f75026a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0067, code lost:
        if (r0 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006a, code lost:
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006f, code lost:
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0079, code lost:
        if ((r8 & (!(r0 instanceof p1727n3.p1834m0.p1835c0.p1845t.p1846w.AbstractC26809a.RunnableC26817g))) == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0081, code lost:
        return m1318d(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0082, code lost:
        m1314h(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008f, code lost:
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
            n3.m0.c0.t.w.a$i r0 = p1727n3.p1834m0.p1835c0.p1845t.p1846w.AbstractC26809a.C26819i.f75046c
            r6 = r0
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto La8
            r0 = r5
            java.lang.Object r0 = r0.f75026a
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L18
            r0 = 1
            r8 = r0
            goto L1a
        L18:
            r0 = 0
            r8 = r0
        L1a:
            r0 = r8
            r1 = r7
            boolean r1 = r1 instanceof p1727n3.p1834m0.p1835c0.p1845t.p1846w.AbstractC26809a.RunnableC26817g
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L2b
            r0 = r5
            r1 = r7
            java.lang.Object r0 = r0.m1318d(r1)
            return r0
        L2b:
            r0 = r5
            n3.m0.c0.t.w.a$i r0 = r0.f75028c
            r7 = r0
            r0 = r7
            r1 = r6
            if (r0 == r1) goto L9f
            n3.m0.c0.t.w.a$i r0 = new n3.m0.c0.t.w.a$i
            r1 = r0
            r1.<init>()
            r9 = r0
        L3e:
            n3.m0.c0.t.w.a$b r0 = p1727n3.p1834m0.p1835c0.p1845t.p1846w.AbstractC26809a.f75024f
            r10 = r0
            r0 = r10
            r1 = r9
            r2 = r7
            r0.mo1310d(r1, r2)
            r0 = r10
            r1 = r5
            r2 = r7
            r3 = r9
            boolean r0 = r0.mo1311c(r1, r2, r3)
            if (r0 == 0) goto L90
        L57:
            r0 = r5
            java.util.concurrent.locks.LockSupport.park(r0)
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto L82
            r0 = r5
            java.lang.Object r0 = r0.f75026a
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L6f
            r0 = 1
            r8 = r0
            goto L71
        L6f:
            r0 = 0
            r8 = r0
        L71:
            r0 = r8
            r1 = r7
            boolean r1 = r1 instanceof p1727n3.p1834m0.p1835c0.p1845t.p1846w.AbstractC26809a.RunnableC26817g
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L57
            r0 = r5
            r1 = r7
            java.lang.Object r0 = r0.m1318d(r1)
            return r0
        L82:
            r0 = r5
            r1 = r9
            r0.m1314h(r1)
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        L90:
            r0 = r5
            n3.m0.c0.t.w.a$i r0 = r0.f75028c
            r10 = r0
            r0 = r10
            r7 = r0
            r0 = r10
            r1 = r6
            if (r0 != r1) goto L3e
        L9f:
            r0 = r5
            r1 = r5
            java.lang.Object r1 = r1.f75026a
            java.lang.Object r0 = r0.m1318d(r1)
            return r0
        La8:
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1834m0.p1835c0.p1845t.p1846w.AbstractC26809a.get():java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x008c, code lost:
        java.util.concurrent.locks.LockSupport.parkNanos(r6, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0095, code lost:
        if (java.lang.Thread.interrupted() != false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0098, code lost:
        r0 = r6.f75026a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a0, code lost:
        if (r0 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a3, code lost:
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a9, code lost:
        r15 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b6, code lost:
        if ((r15 & (!(r0 instanceof p1727n3.p1834m0.p1835c0.p1845t.p1846w.AbstractC26809a.RunnableC26817g))) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00bf, code lost:
        return m1318d(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c0, code lost:
        r0 = r16 - java.lang.System.nanoTime();
        r11 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00d2, code lost:
        if (r0 >= 1000) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d5, code lost:
        m1314h(r0);
        r13 = r6;
        r10 = r9;
        r11 = r0;
        r18 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00f0, code lost:
        m1314h(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00fd, code lost:
        throw new java.lang.InterruptedException();
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x017c  */
    /* JADX WARN: Type inference failed for: r0v121, types: [long] */
    /* JADX WARN: Type inference failed for: r0v139, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x0159 -> B:56:0x0169). Please submit an issue!!! */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V get(long r7, java.util.concurrent.TimeUnit r9) throws java.lang.InterruptedException, java.util.concurrent.TimeoutException, java.util.concurrent.ExecutionException {
        /*
            Method dump skipped, instructions count: 676
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1834m0.p1835c0.p1845t.p1846w.AbstractC26809a.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    /* renamed from: h */
    public final void m1314h(C26819i c26819i) {
        C26819i c26819i2;
        c26819i.f75047a = null;
        while (true) {
            C26819i c26819i3 = this.f75028c;
            if (c26819i3 == C26819i.f75046c) {
                return;
            }
            C26819i c26819i4 = null;
            while (true) {
                C26819i c26819i5 = c26819i4;
                if (c26819i3 == null) {
                    return;
                }
                C26819i c26819i6 = c26819i3.f75048b;
                if (c26819i3.f75047a != null) {
                    c26819i2 = c26819i3;
                } else if (c26819i5 != null) {
                    c26819i5.f75048b = c26819i6;
                    c26819i2 = c26819i5;
                    if (c26819i5.f75047a == null) {
                        break;
                    }
                } else {
                    c26819i2 = c26819i5;
                    if (!f75024f.mo1311c(this, c26819i3, c26819i6)) {
                        break;
                    }
                }
                c26819i3 = c26819i6;
                c26819i4 = c26819i2;
            }
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f75026a instanceof C26812c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.f75026a;
        return (!(obj instanceof RunnableC26817g)) & (obj != null);
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.f75026a instanceof C26812c) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            m1321a(sb);
        } else {
            try {
                str = m1315g();
            } catch (RuntimeException e) {
                StringBuilder m8728C = C22128a.m8728C("Exception thrown from implementation: ");
                m8728C.append(e.getClass());
                str = m8728C.toString();
            }
            if (str != null && !str.isEmpty()) {
                C22128a.m8669S0(sb, "PENDING, info=[", str, "]");
            } else if (isDone()) {
                m1321a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
