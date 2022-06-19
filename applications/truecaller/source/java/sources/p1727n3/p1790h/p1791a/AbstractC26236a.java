package p1727n3.p1790h.p1791a;

import com.google.common.util.concurrent.ListenableFuture;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.StringConstant;
import java.util.Locale;
import java.util.Objects;
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
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.h.a.a */
/* loaded from: classes-dex2jar.jar:n3/h/a/a.class */
public abstract class AbstractC26236a<V> implements ListenableFuture<V> {

    /* renamed from: d */
    public static final boolean f73145d = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: e */
    public static final Logger f73146e = Logger.getLogger(AbstractC26236a.class.getName());

    /* renamed from: f */
    public static final AbstractC26238b f73147f;

    /* renamed from: g */
    public static final Object f73148g;

    /* renamed from: a */
    public volatile Object f73149a;

    /* renamed from: b */
    public volatile C26242e f73150b;

    /* renamed from: c */
    public volatile C26246i f73151c;

    /* renamed from: n3.h.a.a$b */
    /* loaded from: classes-dex2jar.jar:n3/h/a/a$b.class */
    public static abstract class AbstractC26238b {
        public AbstractC26238b(C26237a c26237a) {
        }

        /* renamed from: a */
        public abstract boolean mo2263a(AbstractC26236a<?> abstractC26236a, C26242e c26242e, C26242e c26242e2);

        /* renamed from: b */
        public abstract boolean mo2262b(AbstractC26236a<?> abstractC26236a, Object obj, Object obj2);

        /* renamed from: c */
        public abstract boolean mo2261c(AbstractC26236a<?> abstractC26236a, C26246i c26246i, C26246i c26246i2);

        /* renamed from: d */
        public abstract void mo2260d(C26246i c26246i, C26246i c26246i2);

        /* renamed from: e */
        public abstract void mo2259e(C26246i c26246i, Thread thread);
    }

    /* renamed from: n3.h.a.a$c */
    /* loaded from: classes-dex2jar.jar:n3/h/a/a$c.class */
    public static final class C26239c {

        /* renamed from: c */
        public static final C26239c f73152c;

        /* renamed from: d */
        public static final C26239c f73153d;

        /* renamed from: a */
        public final boolean f73154a;

        /* renamed from: b */
        public final Throwable f73155b;

        static {
            if (AbstractC26236a.f73145d) {
                f73153d = null;
                f73152c = null;
                return;
            }
            f73153d = new C26239c(false, null);
            f73152c = new C26239c(true, null);
        }

        public C26239c(boolean z, Throwable th) {
            this.f73154a = z;
            this.f73155b = th;
        }
    }

    /* renamed from: n3.h.a.a$d */
    /* loaded from: classes-dex2jar.jar:n3/h/a/a$d.class */
    public static final class C26240d {

        /* renamed from: a */
        public final Throwable f73156a;

        /* renamed from: n3.h.a.a$d$a */
        /* loaded from: classes-dex2jar.jar:n3/h/a/a$d$a.class */
        public static final class C26241a extends Throwable {
            public C26241a(String str) {
                super(str);
            }

            @Override // java.lang.Throwable
            public Throwable fillInStackTrace() {
                synchronized (this) {
                }
                return this;
            }
        }

        static {
            C26241a c26241a = new C26241a("Failure occurred while trying to finish a future.");
            boolean z = AbstractC26236a.f73145d;
            Objects.requireNonNull(c26241a);
        }

        public C26240d(Throwable th) {
            boolean z = AbstractC26236a.f73145d;
            Objects.requireNonNull(th);
            this.f73156a = th;
        }
    }

    /* renamed from: n3.h.a.a$e */
    /* loaded from: classes-dex2jar.jar:n3/h/a/a$e.class */
    public static final class C26242e {

        /* renamed from: d */
        public static final C26242e f73157d = new C26242e(null, null);

        /* renamed from: a */
        public final Runnable f73158a;

        /* renamed from: b */
        public final Executor f73159b;

        /* renamed from: c */
        public C26242e f73160c;

        public C26242e(Runnable runnable, Executor executor) {
            this.f73158a = runnable;
            this.f73159b = executor;
        }
    }

    /* renamed from: n3.h.a.a$f */
    /* loaded from: classes-dex2jar.jar:n3/h/a/a$f.class */
    public static final class C26243f extends AbstractC26238b {

        /* renamed from: a */
        public final AtomicReferenceFieldUpdater<C26246i, Thread> f73161a;

        /* renamed from: b */
        public final AtomicReferenceFieldUpdater<C26246i, C26246i> f73162b;

        /* renamed from: c */
        public final AtomicReferenceFieldUpdater<AbstractC26236a, C26246i> f73163c;

        /* renamed from: d */
        public final AtomicReferenceFieldUpdater<AbstractC26236a, C26242e> f73164d;

        /* renamed from: e */
        public final AtomicReferenceFieldUpdater<AbstractC26236a, Object> f73165e;

        public C26243f(AtomicReferenceFieldUpdater<C26246i, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<C26246i, C26246i> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<AbstractC26236a, C26246i> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<AbstractC26236a, C26242e> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<AbstractC26236a, Object> atomicReferenceFieldUpdater5) {
            super(null);
            this.f73161a = atomicReferenceFieldUpdater;
            this.f73162b = atomicReferenceFieldUpdater2;
            this.f73163c = atomicReferenceFieldUpdater3;
            this.f73164d = atomicReferenceFieldUpdater4;
            this.f73165e = atomicReferenceFieldUpdater5;
        }

        @Override // p1727n3.p1790h.p1791a.AbstractC26236a.AbstractC26238b
        /* renamed from: a */
        public boolean mo2263a(AbstractC26236a<?> abstractC26236a, C26242e c26242e, C26242e c26242e2) {
            return this.f73164d.compareAndSet(abstractC26236a, c26242e, c26242e2);
        }

        @Override // p1727n3.p1790h.p1791a.AbstractC26236a.AbstractC26238b
        /* renamed from: b */
        public boolean mo2262b(AbstractC26236a<?> abstractC26236a, Object obj, Object obj2) {
            return this.f73165e.compareAndSet(abstractC26236a, obj, obj2);
        }

        @Override // p1727n3.p1790h.p1791a.AbstractC26236a.AbstractC26238b
        /* renamed from: c */
        public boolean mo2261c(AbstractC26236a<?> abstractC26236a, C26246i c26246i, C26246i c26246i2) {
            return this.f73163c.compareAndSet(abstractC26236a, c26246i, c26246i2);
        }

        @Override // p1727n3.p1790h.p1791a.AbstractC26236a.AbstractC26238b
        /* renamed from: d */
        public void mo2260d(C26246i c26246i, C26246i c26246i2) {
            this.f73162b.lazySet(c26246i, c26246i2);
        }

        @Override // p1727n3.p1790h.p1791a.AbstractC26236a.AbstractC26238b
        /* renamed from: e */
        public void mo2259e(C26246i c26246i, Thread thread) {
            this.f73161a.lazySet(c26246i, thread);
        }
    }

    /* renamed from: n3.h.a.a$g */
    /* loaded from: classes-dex2jar.jar:n3/h/a/a$g.class */
    public static final class RunnableC26244g<V> implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            throw null;
        }
    }

    /* renamed from: n3.h.a.a$h */
    /* loaded from: classes-dex2jar.jar:n3/h/a/a$h.class */
    public static final class C26245h extends AbstractC26238b {
        public C26245h() {
            super(null);
        }

        @Override // p1727n3.p1790h.p1791a.AbstractC26236a.AbstractC26238b
        /* renamed from: a */
        public boolean mo2263a(AbstractC26236a<?> abstractC26236a, C26242e c26242e, C26242e c26242e2) {
            synchronized (abstractC26236a) {
                if (abstractC26236a.f73150b == c26242e) {
                    abstractC26236a.f73150b = c26242e2;
                    return true;
                }
                return false;
            }
        }

        @Override // p1727n3.p1790h.p1791a.AbstractC26236a.AbstractC26238b
        /* renamed from: b */
        public boolean mo2262b(AbstractC26236a<?> abstractC26236a, Object obj, Object obj2) {
            synchronized (abstractC26236a) {
                if (abstractC26236a.f73149a == obj) {
                    abstractC26236a.f73149a = obj2;
                    return true;
                }
                return false;
            }
        }

        @Override // p1727n3.p1790h.p1791a.AbstractC26236a.AbstractC26238b
        /* renamed from: c */
        public boolean mo2261c(AbstractC26236a<?> abstractC26236a, C26246i c26246i, C26246i c26246i2) {
            synchronized (abstractC26236a) {
                if (abstractC26236a.f73151c == c26246i) {
                    abstractC26236a.f73151c = c26246i2;
                    return true;
                }
                return false;
            }
        }

        @Override // p1727n3.p1790h.p1791a.AbstractC26236a.AbstractC26238b
        /* renamed from: d */
        public void mo2260d(C26246i c26246i, C26246i c26246i2) {
            c26246i.f73168b = c26246i2;
        }

        @Override // p1727n3.p1790h.p1791a.AbstractC26236a.AbstractC26238b
        /* renamed from: e */
        public void mo2259e(C26246i c26246i, Thread thread) {
            c26246i.f73167a = thread;
        }
    }

    /* renamed from: n3.h.a.a$i */
    /* loaded from: classes-dex2jar.jar:n3/h/a/a$i.class */
    public static final class C26246i {

        /* renamed from: c */
        public static final C26246i f73166c = new C26246i(false);

        /* renamed from: a */
        public volatile Thread f73167a;

        /* renamed from: b */
        public volatile C26246i f73168b;

        public C26246i() {
            AbstractC26236a.f73147f.mo2259e(this, Thread.currentThread());
        }

        public C26246i(boolean z) {
        }
    }

    static {
        Throwable th;
        AbstractC26238b abstractC26238b;
        try {
            abstractC26238b = new C26243f(AtomicReferenceFieldUpdater.newUpdater(C26246i.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(C26246i.class, C26246i.class, C22021b.f61237c), AtomicReferenceFieldUpdater.newUpdater(AbstractC26236a.class, C26246i.class, AbstractC2405c.f7629a), AtomicReferenceFieldUpdater.newUpdater(AbstractC26236a.class, C26242e.class, C22021b.f61237c), AtomicReferenceFieldUpdater.newUpdater(AbstractC26236a.class, Object.class, "a"));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            abstractC26238b = new C26245h();
        }
        f73147f = abstractC26238b;
        if (th != null) {
            f73146e.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f73148g = new Object();
    }

    /* renamed from: b */
    public static void m2271b(AbstractC26236a<?> abstractC26236a) {
        C26246i c26246i;
        C26242e c26242e;
        C26242e c26242e2;
        do {
            c26246i = abstractC26236a.f73151c;
        } while (!f73147f.mo2261c(abstractC26236a, c26246i, C26246i.f73166c));
        while (c26246i != null) {
            Thread thread = c26246i.f73167a;
            if (thread != null) {
                c26246i.f73167a = null;
                LockSupport.unpark(thread);
            }
            c26246i = c26246i.f73168b;
        }
        do {
            c26242e = abstractC26236a.f73150b;
        } while (!f73147f.mo2263a(abstractC26236a, c26242e, C26242e.f73157d));
        C26242e c26242e3 = null;
        while (true) {
            C26242e c26242e4 = c26242e3;
            C26242e c26242e5 = c26242e;
            c26242e2 = c26242e4;
            if (c26242e5 != null) {
                c26242e = c26242e5.f73160c;
                c26242e5.f73160c = c26242e4;
                c26242e3 = c26242e5;
            }
        }
        while (c26242e2 != null) {
            C26242e c26242e6 = c26242e2.f73160c;
            Runnable runnable = c26242e2.f73158a;
            if (runnable instanceof RunnableC26244g) {
                Objects.requireNonNull((RunnableC26244g) runnable);
                throw null;
            } else {
                m2270c(runnable, c26242e2.f73159b);
                c26242e2 = c26242e6;
            }
        }
    }

    /* renamed from: c */
    public static void m2270c(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = f73146e;
            Level level = Level.SEVERE;
            logger.log(level, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    /* renamed from: e */
    public static <V> V m2268e(Future<V> future) throws ExecutionException {
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
    public final void m2272a(StringBuilder sb) {
        try {
            Object m2268e = m2268e(this);
            sb.append("SUCCESS, result=[");
            sb.append(m2268e == this ? "this future" : String.valueOf(m2268e));
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
        C26242e c26242e;
        C26242e c26242e2 = C26242e.f73157d;
        Objects.requireNonNull(runnable);
        Objects.requireNonNull(executor);
        C26242e c26242e3 = this.f73150b;
        if (c26242e3 == c26242e2) {
            m2270c(runnable, executor);
        }
        C26242e c26242e4 = new C26242e(runnable, executor);
        do {
            c26242e4.f73160c = c26242e3;
            if (f73147f.mo2263a(this, c26242e3, c26242e4)) {
                return;
            }
            c26242e = this.f73150b;
            c26242e3 = c26242e;
        } while (c26242e != c26242e2);
        m2270c(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean z2;
        Object obj = this.f73149a;
        if (!(obj == null) && !(obj instanceof RunnableC26244g)) {
            z2 = false;
            break;
        }
        C26239c c26239c = f73145d ? new C26239c(z, new CancellationException("Future.cancel() was called.")) : z ? C26239c.f73152c : C26239c.f73153d;
        while (!f73147f.mo2262b(this, obj, c26239c)) {
            Object obj2 = this.f73149a;
            obj = obj2;
            if (!(obj2 instanceof RunnableC26244g)) {
                z2 = false;
                break;
            }
        }
        m2271b(this);
        z2 = true;
        if (obj instanceof RunnableC26244g) {
            Objects.requireNonNull((RunnableC26244g) obj);
            throw null;
        }
        return z2;
    }

    /* renamed from: d */
    public final V m2269d(Object obj) throws ExecutionException {
        if (obj instanceof C26239c) {
            Throwable th = ((C26239c) obj).f73155b;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        } else if (obj instanceof C26240d) {
            throw new ExecutionException(((C26240d) obj).f73156a);
        } else {
            Object obj2 = obj;
            if (obj == f73148g) {
                obj2 = null;
            }
            return (V) obj2;
        }
    }

    /* renamed from: f */
    public String m2267f() {
        Object obj = this.f73149a;
        if (obj instanceof RunnableC26244g) {
            Objects.requireNonNull((RunnableC26244g) obj);
            return "setFuture=[null]";
        } else if (!(this instanceof ScheduledFuture)) {
            return null;
        } else {
            StringBuilder m8728C = C22128a.m8728C("remaining delay=[");
            m8728C.append(((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS));
            m8728C.append(" ms]");
            return m8728C.toString();
        }
    }

    /* renamed from: g */
    public final void m2266g(C26246i c26246i) {
        C26246i c26246i2;
        c26246i.f73167a = null;
        while (true) {
            C26246i c26246i3 = this.f73151c;
            if (c26246i3 == C26246i.f73166c) {
                return;
            }
            C26246i c26246i4 = null;
            while (true) {
                C26246i c26246i5 = c26246i4;
                if (c26246i3 == null) {
                    return;
                }
                C26246i c26246i6 = c26246i3.f73168b;
                if (c26246i3.f73167a != null) {
                    c26246i2 = c26246i3;
                } else if (c26246i5 != null) {
                    c26246i5.f73168b = c26246i6;
                    c26246i2 = c26246i5;
                    if (c26246i5.f73167a == null) {
                        break;
                    }
                } else {
                    c26246i2 = c26246i5;
                    if (!f73147f.mo2261c(this, c26246i3, c26246i6)) {
                        break;
                    }
                }
                c26246i3 = c26246i6;
                c26246i4 = c26246i2;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0057, code lost:
        java.util.concurrent.locks.LockSupport.park(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005e, code lost:
        if (java.lang.Thread.interrupted() != false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0061, code lost:
        r0 = r5.f73149a;
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
        if ((r8 & (!(r0 instanceof p1727n3.p1790h.p1791a.AbstractC26236a.RunnableC26244g))) == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0081, code lost:
        return m2269d(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0082, code lost:
        m2266g(r0);
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
            n3.h.a.a$i r0 = p1727n3.p1790h.p1791a.AbstractC26236a.C26246i.f73166c
            r6 = r0
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto La8
            r0 = r5
            java.lang.Object r0 = r0.f73149a
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
            boolean r1 = r1 instanceof p1727n3.p1790h.p1791a.AbstractC26236a.RunnableC26244g
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L2b
            r0 = r5
            r1 = r7
            java.lang.Object r0 = r0.m2269d(r1)
            return r0
        L2b:
            r0 = r5
            n3.h.a.a$i r0 = r0.f73151c
            r7 = r0
            r0 = r7
            r1 = r6
            if (r0 == r1) goto L9f
            n3.h.a.a$i r0 = new n3.h.a.a$i
            r1 = r0
            r1.<init>()
            r9 = r0
        L3e:
            n3.h.a.a$b r0 = p1727n3.p1790h.p1791a.AbstractC26236a.f73147f
            r10 = r0
            r0 = r10
            r1 = r9
            r2 = r7
            r0.mo2260d(r1, r2)
            r0 = r10
            r1 = r5
            r2 = r7
            r3 = r9
            boolean r0 = r0.mo2261c(r1, r2, r3)
            if (r0 == 0) goto L90
        L57:
            r0 = r5
            java.util.concurrent.locks.LockSupport.park(r0)
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto L82
            r0 = r5
            java.lang.Object r0 = r0.f73149a
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
            boolean r1 = r1 instanceof p1727n3.p1790h.p1791a.AbstractC26236a.RunnableC26244g
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L57
            r0 = r5
            r1 = r7
            java.lang.Object r0 = r0.m2269d(r1)
            return r0
        L82:
            r0 = r5
            r1 = r9
            r0.m2266g(r1)
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        L90:
            r0 = r5
            n3.h.a.a$i r0 = r0.f73151c
            r10 = r0
            r0 = r10
            r7 = r0
            r0 = r10
            r1 = r6
            if (r0 != r1) goto L3e
        L9f:
            r0 = r5
            r1 = r5
            java.lang.Object r1 = r1.f73149a
            java.lang.Object r0 = r0.m2269d(r1)
            return r0
        La8:
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1790h.p1791a.AbstractC26236a.get():java.lang.Object");
    }

    /* JADX WARN: Type inference failed for: r0v118, types: [long] */
    /* JADX WARN: Type inference failed for: r0v134, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    @Override // java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        TimeUnit timeUnit2;
        AbstractC26236a<V> abstractC26236a;
        AbstractC26236a<V> abstractC26236a2;
        C26246i c26246i;
        C26246i c26246i2 = C26246i.f73166c;
        char nanos = timeUnit.toNanos(j);
        if (!Thread.interrupted()) {
            Object obj = this.f73149a;
            if ((obj != null) && (!(obj instanceof RunnableC26244g))) {
                return m2269d(obj);
            }
            char nanoTime = nanos > 0 ? System.nanoTime() + nanos : (char) 0;
            if (nanos >= 1000) {
                C26246i c26246i3 = this.f73151c;
                if (c26246i3 == c26246i2) {
                    return m2269d(this.f73149a);
                }
                C26246i c26246i4 = new C26246i();
                do {
                    AbstractC26238b abstractC26238b = f73147f;
                    abstractC26238b.mo2260d(c26246i4, c26246i3);
                    if (abstractC26238b.mo2261c(this, c26246i3, c26246i4)) {
                        char c = nanos;
                        do {
                            LockSupport.parkNanos(this, c);
                            if (Thread.interrupted()) {
                                m2266g(c26246i4);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f73149a;
                            if ((obj2 != null) && (!(obj2 instanceof RunnableC26244g))) {
                                return m2269d(obj2);
                            }
                            nanos = nanoTime - System.nanoTime();
                            c = nanos;
                        } while (nanos >= 1000);
                        m2266g(c26246i4);
                        abstractC26236a = this;
                        abstractC26236a2 = abstractC26236a;
                        timeUnit2 = timeUnit;
                    } else {
                        c26246i = this.f73151c;
                        c26246i3 = c26246i;
                    }
                } while (c26246i != c26246i2);
                return m2269d(this.f73149a);
            }
            abstractC26236a = this;
            abstractC26236a2 = abstractC26236a;
            timeUnit2 = timeUnit;
            while (nanos > 0) {
                Object obj3 = abstractC26236a2.f73149a;
                if ((obj3 != null) && (!(obj3 instanceof RunnableC26244g))) {
                    return abstractC26236a2.m2269d(obj3);
                }
                if (Thread.interrupted()) {
                    throw new InterruptedException();
                }
                nanos = nanoTime - System.nanoTime();
            }
            String abstractC26236a3 = abstractC26236a.toString();
            String timeUnit3 = timeUnit.toString();
            Locale locale = Locale.ROOT;
            String lowerCase = timeUnit3.toLowerCase(locale);
            StringBuilder m8712G = C22128a.m8712G("Waited ", j, StringConstant.SPACE);
            m8712G.append(timeUnit.toString().toLowerCase(locale));
            String sb = m8712G.toString();
            String str = sb;
            if (nanos + 1000 < 0) {
                String m8543z2 = C22128a.m8543z2(sb, " (plus ");
                long j2 = -nanos;
                long convert = timeUnit2.convert(j2, TimeUnit.NANOSECONDS);
                long nanos2 = j2 - timeUnit2.toNanos(convert);
                int i = (convert > 0L ? 1 : (convert == 0L ? 0 : -1));
                boolean z = true;
                if (i != 0) {
                    z = nanos2 > 1000;
                }
                String str2 = m8543z2;
                if (i > 0) {
                    String str3 = m8543z2 + convert + StringConstant.SPACE + lowerCase;
                    String str4 = str3;
                    if (z) {
                        str4 = C22128a.m8543z2(str3, ",");
                    }
                    str2 = C22128a.m8543z2(str4, StringConstant.SPACE);
                }
                String str5 = str2;
                if (z) {
                    str5 = C22128a.m8575r2(str2, nanos2, " nanoseconds ");
                }
                str = C22128a.m8543z2(str5, "delay)");
            }
            if (!abstractC26236a.isDone()) {
                throw new TimeoutException(C22128a.m8725C2(str, " for ", abstractC26236a3));
            }
            throw new TimeoutException(C22128a.m8543z2(str, " but future completed as timeout expired"));
        }
        throw new InterruptedException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: h */
    public boolean m2265h(V v) {
        V v2 = v;
        if (v == null) {
            v2 = f73148g;
        }
        if (f73147f.mo2262b(this, null, v2)) {
            m2271b(this);
            return true;
        }
        return false;
    }

    /* renamed from: i */
    public boolean m2264i(Throwable th) {
        Objects.requireNonNull(th);
        if (f73147f.mo2262b(this, null, new C26240d(th))) {
            m2271b(this);
            return true;
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f73149a instanceof C26239c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.f73149a;
        return (!(obj instanceof RunnableC26244g)) & (obj != null);
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.f73149a instanceof C26239c) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            m2272a(sb);
        } else {
            try {
                str = m2267f();
            } catch (RuntimeException e) {
                StringBuilder m8728C = C22128a.m8728C("Exception thrown from implementation: ");
                m8728C.append(e.getClass());
                str = m8728C.toString();
            }
            if (str != null && !str.isEmpty()) {
                C22128a.m8669S0(sb, "PENDING, info=[", str, "]");
            } else if (isDone()) {
                m2272a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
