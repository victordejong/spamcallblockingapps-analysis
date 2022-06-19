package p302z1;

import android.support.p012v4.media.C0082b;
import com.google.common.util.concurrent.ListenableFuture;
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
/* renamed from: z1.a */
/* loaded from: classes-dex2jar.jar:z1/a.class */
public abstract class AbstractC5023a<V> implements ListenableFuture<V> {

    /* renamed from: d */
    public static final boolean f15279d = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: e */
    public static final Logger f15280e = Logger.getLogger(AbstractC5023a.class.getName());

    /* renamed from: f */
    public static final AbstractC5025b f15281f;

    /* renamed from: g */
    public static final Object f15282g;

    /* renamed from: a */
    public volatile Object f15283a;

    /* renamed from: b */
    public volatile C5029e f15284b;

    /* renamed from: c */
    public volatile C5033i f15285c;

    /* renamed from: z1.a$b */
    /* loaded from: classes-dex2jar.jar:z1/a$b.class */
    public static abstract class AbstractC5025b {
        public AbstractC5025b(C5024a c5024a) {
        }

        /* renamed from: a */
        public abstract boolean mo123a(AbstractC5023a<?> abstractC5023a, C5029e c5029e, C5029e c5029e2);

        /* renamed from: b */
        public abstract boolean mo122b(AbstractC5023a<?> abstractC5023a, Object obj, Object obj2);

        /* renamed from: c */
        public abstract boolean mo121c(AbstractC5023a<?> abstractC5023a, C5033i c5033i, C5033i c5033i2);

        /* renamed from: d */
        public abstract void mo120d(C5033i c5033i, C5033i c5033i2);

        /* renamed from: e */
        public abstract void mo119e(C5033i c5033i, Thread thread);
    }

    /* renamed from: z1.a$c */
    /* loaded from: classes-dex2jar.jar:z1/a$c.class */
    public static final class C5026c {

        /* renamed from: c */
        public static final C5026c f15286c;

        /* renamed from: a */
        public final boolean f15287a;

        /* renamed from: b */
        public final Throwable f15288b;

        static {
            if (AbstractC5023a.f15279d) {
                f15286c = null;
            } else {
                f15286c = new C5026c(false, null);
            }
        }

        public C5026c(boolean z, Throwable th) {
            this.f15287a = z;
            this.f15288b = th;
        }
    }

    /* renamed from: z1.a$d */
    /* loaded from: classes-dex2jar.jar:z1/a$d.class */
    public static final class C5027d {

        /* renamed from: b */
        public static final C5027d f15289b = new C5027d(new C5028a("Failure occurred while trying to finish a future."));

        /* renamed from: a */
        public final Throwable f15290a;

        /* renamed from: z1.a$d$a */
        /* loaded from: classes-dex2jar.jar:z1/a$d$a.class */
        public class C5028a extends Throwable {
            public C5028a(String str) {
                super(str);
            }

            @Override // java.lang.Throwable
            public Throwable fillInStackTrace() {
                synchronized (this) {
                }
                return this;
            }
        }

        public C5027d(Throwable th) {
            boolean z = AbstractC5023a.f15279d;
            Objects.requireNonNull(th);
            this.f15290a = th;
        }
    }

    /* renamed from: z1.a$e */
    /* loaded from: classes-dex2jar.jar:z1/a$e.class */
    public static final class C5029e {

        /* renamed from: d */
        public static final C5029e f15291d = new C5029e(null, null);

        /* renamed from: a */
        public final Runnable f15292a;

        /* renamed from: b */
        public final Executor f15293b;

        /* renamed from: c */
        public C5029e f15294c;

        public C5029e(Runnable runnable, Executor executor) {
            this.f15292a = runnable;
            this.f15293b = executor;
        }
    }

    /* renamed from: z1.a$f */
    /* loaded from: classes-dex2jar.jar:z1/a$f.class */
    public static final class C5030f extends AbstractC5025b {

        /* renamed from: a */
        public final AtomicReferenceFieldUpdater<C5033i, Thread> f15295a;

        /* renamed from: b */
        public final AtomicReferenceFieldUpdater<C5033i, C5033i> f15296b;

        /* renamed from: c */
        public final AtomicReferenceFieldUpdater<AbstractC5023a, C5033i> f15297c;

        /* renamed from: d */
        public final AtomicReferenceFieldUpdater<AbstractC5023a, C5029e> f15298d;

        /* renamed from: e */
        public final AtomicReferenceFieldUpdater<AbstractC5023a, Object> f15299e;

        public C5030f(AtomicReferenceFieldUpdater<C5033i, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<C5033i, C5033i> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<AbstractC5023a, C5033i> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<AbstractC5023a, C5029e> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<AbstractC5023a, Object> atomicReferenceFieldUpdater5) {
            super(null);
            this.f15295a = atomicReferenceFieldUpdater;
            this.f15296b = atomicReferenceFieldUpdater2;
            this.f15297c = atomicReferenceFieldUpdater3;
            this.f15298d = atomicReferenceFieldUpdater4;
            this.f15299e = atomicReferenceFieldUpdater5;
        }

        @Override // p302z1.AbstractC5023a.AbstractC5025b
        /* renamed from: a */
        public boolean mo123a(AbstractC5023a<?> abstractC5023a, C5029e c5029e, C5029e c5029e2) {
            boolean z;
            AtomicReferenceFieldUpdater<AbstractC5023a, C5029e> atomicReferenceFieldUpdater = this.f15298d;
            while (true) {
                if (!atomicReferenceFieldUpdater.compareAndSet(abstractC5023a, c5029e, c5029e2)) {
                    if (atomicReferenceFieldUpdater.get(abstractC5023a) != c5029e) {
                        z = false;
                        break;
                    }
                } else {
                    z = true;
                    break;
                }
            }
            return z;
        }

        @Override // p302z1.AbstractC5023a.AbstractC5025b
        /* renamed from: b */
        public boolean mo122b(AbstractC5023a<?> abstractC5023a, Object obj, Object obj2) {
            boolean z;
            AtomicReferenceFieldUpdater<AbstractC5023a, Object> atomicReferenceFieldUpdater = this.f15299e;
            while (true) {
                if (!atomicReferenceFieldUpdater.compareAndSet(abstractC5023a, obj, obj2)) {
                    if (atomicReferenceFieldUpdater.get(abstractC5023a) != obj) {
                        z = false;
                        break;
                    }
                } else {
                    z = true;
                    break;
                }
            }
            return z;
        }

        @Override // p302z1.AbstractC5023a.AbstractC5025b
        /* renamed from: c */
        public boolean mo121c(AbstractC5023a<?> abstractC5023a, C5033i c5033i, C5033i c5033i2) {
            boolean z;
            AtomicReferenceFieldUpdater<AbstractC5023a, C5033i> atomicReferenceFieldUpdater = this.f15297c;
            while (true) {
                if (!atomicReferenceFieldUpdater.compareAndSet(abstractC5023a, c5033i, c5033i2)) {
                    if (atomicReferenceFieldUpdater.get(abstractC5023a) != c5033i) {
                        z = false;
                        break;
                    }
                } else {
                    z = true;
                    break;
                }
            }
            return z;
        }

        @Override // p302z1.AbstractC5023a.AbstractC5025b
        /* renamed from: d */
        public void mo120d(C5033i c5033i, C5033i c5033i2) {
            this.f15296b.lazySet(c5033i, c5033i2);
        }

        @Override // p302z1.AbstractC5023a.AbstractC5025b
        /* renamed from: e */
        public void mo119e(C5033i c5033i, Thread thread) {
            this.f15295a.lazySet(c5033i, thread);
        }
    }

    /* renamed from: z1.a$g */
    /* loaded from: classes-dex2jar.jar:z1/a$g.class */
    public static final class RunnableC5031g<V> implements Runnable {

        /* renamed from: a */
        public final AbstractC5023a<V> f15300a;

        /* renamed from: b */
        public final ListenableFuture<? extends V> f15301b;

        public RunnableC5031g(AbstractC5023a<V> abstractC5023a, ListenableFuture<? extends V> listenableFuture) {
            this.f15300a = abstractC5023a;
            this.f15301b = listenableFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f15300a.f15283a != this) {
                return;
            }
            if (!AbstractC5023a.f15281f.mo122b(this.f15300a, this, AbstractC5023a.m126g(this.f15301b))) {
                return;
            }
            AbstractC5023a.m130c(this.f15300a);
        }
    }

    /* renamed from: z1.a$h */
    /* loaded from: classes-dex2jar.jar:z1/a$h.class */
    public static final class C5032h extends AbstractC5025b {
        public C5032h() {
            super(null);
        }

        @Override // p302z1.AbstractC5023a.AbstractC5025b
        /* renamed from: a */
        public boolean mo123a(AbstractC5023a<?> abstractC5023a, C5029e c5029e, C5029e c5029e2) {
            synchronized (abstractC5023a) {
                if (abstractC5023a.f15284b == c5029e) {
                    abstractC5023a.f15284b = c5029e2;
                    return true;
                }
                return false;
            }
        }

        @Override // p302z1.AbstractC5023a.AbstractC5025b
        /* renamed from: b */
        public boolean mo122b(AbstractC5023a<?> abstractC5023a, Object obj, Object obj2) {
            synchronized (abstractC5023a) {
                if (abstractC5023a.f15283a == obj) {
                    abstractC5023a.f15283a = obj2;
                    return true;
                }
                return false;
            }
        }

        @Override // p302z1.AbstractC5023a.AbstractC5025b
        /* renamed from: c */
        public boolean mo121c(AbstractC5023a<?> abstractC5023a, C5033i c5033i, C5033i c5033i2) {
            synchronized (abstractC5023a) {
                if (abstractC5023a.f15285c == c5033i) {
                    abstractC5023a.f15285c = c5033i2;
                    return true;
                }
                return false;
            }
        }

        @Override // p302z1.AbstractC5023a.AbstractC5025b
        /* renamed from: d */
        public void mo120d(C5033i c5033i, C5033i c5033i2) {
            c5033i.f15304b = c5033i2;
        }

        @Override // p302z1.AbstractC5023a.AbstractC5025b
        /* renamed from: e */
        public void mo119e(C5033i c5033i, Thread thread) {
            c5033i.f15303a = thread;
        }
    }

    /* renamed from: z1.a$i */
    /* loaded from: classes-dex2jar.jar:z1/a$i.class */
    public static final class C5033i {

        /* renamed from: c */
        public static final C5033i f15302c = new C5033i(false);

        /* renamed from: a */
        public volatile Thread f15303a;

        /* renamed from: b */
        public volatile C5033i f15304b;

        public C5033i() {
            AbstractC5023a.f15281f.mo119e(this, Thread.currentThread());
        }

        public C5033i(boolean z) {
        }
    }

    static {
        Throwable th;
        AbstractC5025b abstractC5025b;
        try {
            abstractC5025b = new C5030f(AtomicReferenceFieldUpdater.newUpdater(C5033i.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(C5033i.class, C5033i.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractC5023a.class, C5033i.class, "c"), AtomicReferenceFieldUpdater.newUpdater(AbstractC5023a.class, C5029e.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractC5023a.class, Object.class, "a"));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            abstractC5025b = new C5032h();
        }
        f15281f = abstractC5025b;
        if (th != null) {
            f15280e.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f15282g = new Object();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public static void m130c(AbstractC5023a<?> abstractC5023a) {
        C5029e c5029e;
        C5029e c5029e2;
        AbstractC5023a abstractC5023a2 = abstractC5023a;
        C5029e c5029e3 = null;
        while (true) {
            C5033i c5033i = abstractC5023a2.f15285c;
            if (f15281f.mo121c(abstractC5023a2, c5033i, C5033i.f15302c)) {
                while (c5033i != null) {
                    Thread thread = c5033i.f15303a;
                    if (thread != null) {
                        c5033i.f15303a = null;
                        LockSupport.unpark(thread);
                    }
                    c5033i = c5033i.f15304b;
                }
                do {
                    c5029e = abstractC5023a2.f15284b;
                } while (!f15281f.mo123a(abstractC5023a2, c5029e, C5029e.f15291d));
                C5029e c5029e4 = c5029e;
                while (true) {
                    C5029e c5029e5 = c5029e4;
                    c5029e2 = c5029e3;
                    if (c5029e5 != null) {
                        c5029e4 = c5029e5.f15294c;
                        c5029e5.f15294c = c5029e3;
                        c5029e3 = c5029e5;
                    }
                }
                while (c5029e2 != null) {
                    c5029e3 = c5029e2.f15294c;
                    Runnable runnable = c5029e2.f15292a;
                    if (runnable instanceof RunnableC5031g) {
                        RunnableC5031g runnableC5031g = (RunnableC5031g) runnable;
                        abstractC5023a2 = (AbstractC5023a<V>) runnableC5031g.f15300a;
                        if (abstractC5023a2.f15283a == runnableC5031g) {
                            if (f15281f.mo122b(abstractC5023a2, runnableC5031g, m126g(runnableC5031g.f15301b))) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        m129d(runnable, c5029e2.f15293b);
                    }
                    c5029e2 = c5029e3;
                }
                return;
            }
        }
    }

    /* renamed from: d */
    public static void m129d(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = f15280e;
            Level level = Level.SEVERE;
            logger.log(level, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    /* renamed from: g */
    public static Object m126g(ListenableFuture<?> listenableFuture) {
        if (listenableFuture instanceof AbstractC5023a) {
            Object obj = ((AbstractC5023a) listenableFuture).f15283a;
            C5026c c5026c = obj;
            if (obj instanceof C5026c) {
                C5026c c5026c2 = (C5026c) obj;
                c5026c = obj;
                if (c5026c2.f15287a) {
                    c5026c = c5026c2.f15288b != null ? new C5026c(false, c5026c2.f15288b) : C5026c.f15286c;
                }
            }
            return c5026c;
        }
        boolean isCancelled = listenableFuture.isCancelled();
        if ((!f15279d) && isCancelled) {
            return C5026c.f15286c;
        }
        try {
            Object m125h = m125h(listenableFuture);
            Object obj2 = m125h;
            if (m125h == null) {
                obj2 = f15282g;
            }
            return obj2;
        } catch (CancellationException e) {
            if (isCancelled) {
                return new C5026c(false, e);
            }
            return new C5027d(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + listenableFuture, e));
        } catch (ExecutionException e2) {
            return new C5027d(e2.getCause());
        } catch (Throwable th) {
            return new C5027d(th);
        }
    }

    /* renamed from: h */
    public static <V> V m125h(Future<V> future) throws ExecutionException {
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

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final void m132a(StringBuilder sb) {
        try {
            Object m125h = m125h(this);
            sb.append("SUCCESS, result=[");
            sb.append(m125h == this ? "this future" : String.valueOf(m125h));
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
    public final void m131b(Runnable runnable, Executor executor) {
        C5029e c5029e;
        Objects.requireNonNull(executor);
        C5029e c5029e2 = this.f15284b;
        if (c5029e2 == C5029e.f15291d) {
            m129d(runnable, executor);
        }
        C5029e c5029e3 = new C5029e(runnable, executor);
        do {
            c5029e3.f15294c = c5029e2;
            if (f15281f.mo123a(this, c5029e2, c5029e3)) {
                return;
            }
            c5029e = this.f15284b;
            c5029e2 = c5029e;
        } while (c5029e != C5029e.f15291d);
        m129d(runnable, executor);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
        java.util.concurrent.locks.LockSupport.park(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0059, code lost:
        if (java.lang.Thread.interrupted() == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005c, code lost:
        r0.f15303a = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0061, code lost:
        r6 = r5.f15285c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006a, code lost:
        if (r6 == p302z1.AbstractC5023a.C5033i.f15302c) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006d, code lost:
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0070, code lost:
        r9 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0071, code lost:
        if (r6 == null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0074, code lost:
        r0 = r6.f15304b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007e, code lost:
        if (r6.f15303a == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0081, code lost:
        r8 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0088, code lost:
        if (r9 == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008b, code lost:
        r9.f15304b = r0;
        r8 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x009a, code lost:
        if (r9.f15303a != null) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a0, code lost:
        r8 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ad, code lost:
        if (p302z1.AbstractC5023a.f15281f.mo121c(r5, r6, r0) != false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00b3, code lost:
        r6 = r0;
        r0 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c3, code lost:
        throw new java.lang.InterruptedException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c4, code lost:
        r0 = r5.f15283a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ca, code lost:
        if (r0 == null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00cd, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00d2, code lost:
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00dc, code lost:
        if ((r7 & (!(r0 instanceof p302z1.AbstractC5023a.RunnableC5031g))) == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e4, code lost:
        return m127f(r0);
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V m128e() throws java.lang.InterruptedException, java.util.concurrent.ExecutionException {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p302z1.AbstractC5023a.m128e():java.lang.Object");
    }

    /* renamed from: f */
    public final V m127f(Object obj) throws ExecutionException {
        if (obj instanceof C5026c) {
            Throwable th = ((C5026c) obj).f15288b;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        } else if (obj instanceof C5027d) {
            throw new ExecutionException(((C5027d) obj).f15290a);
        } else {
            Object obj2 = obj;
            if (obj == f15282g) {
                obj2 = null;
            }
            return (V) obj2;
        }
    }

    /* renamed from: i */
    public String m124i() {
        Object obj = this.f15283a;
        if (obj instanceof RunnableC5031g) {
            StringBuilder m8752j = C0082b.m8752j("setFuture=[");
            ListenableFuture<? extends V> listenableFuture = ((RunnableC5031g) obj).f15301b;
            return C0082b.m8754h(m8752j, listenableFuture == this ? "this future" : String.valueOf(listenableFuture), "]");
        } else if (!(this instanceof ScheduledFuture)) {
            return null;
        } else {
            StringBuilder m8752j2 = C0082b.m8752j("remaining delay=[");
            m8752j2.append(((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS));
            m8752j2.append(" ms]");
            return m8752j2.toString();
        }
    }

    /* renamed from: j */
    public boolean mo118j(ListenableFuture<? extends V> listenableFuture) {
        C5027d c5027d;
        Objects.requireNonNull(listenableFuture);
        Object obj = this.f15283a;
        Object obj2 = obj;
        if (obj == null) {
            if (listenableFuture.isDone()) {
                if (!f15281f.mo122b(this, null, m126g(listenableFuture))) {
                    return false;
                }
                m130c(this);
                return true;
            }
            RunnableC5031g runnableC5031g = new RunnableC5031g(this, listenableFuture);
            if (f15281f.mo122b(this, null, runnableC5031g)) {
                try {
                    listenableFuture.addListener(runnableC5031g, EnumC5034b.INSTANCE);
                    return true;
                } catch (Throwable th) {
                    try {
                        c5027d = new C5027d(th);
                    } catch (Throwable th2) {
                        c5027d = C5027d.f15289b;
                    }
                    f15281f.mo122b(this, runnableC5031g, c5027d);
                    return true;
                }
            }
            obj2 = this.f15283a;
        }
        if (obj2 instanceof C5026c) {
            listenableFuture.cancel(((C5026c) obj2).f15287a);
            return false;
        }
        return false;
    }

    public String toString() {
        Object obj;
        String str;
        Object obj2;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.f15283a instanceof C5026c) {
            sb.append("CANCELLED");
        } else {
            if ((!(obj instanceof RunnableC5031g)) && (this.f15283a != null)) {
                m132a(sb);
            } else {
                try {
                    str = m124i();
                } catch (RuntimeException e) {
                    StringBuilder m8752j = C0082b.m8752j("Exception thrown from implementation: ");
                    m8752j.append(e.getClass());
                    str = m8752j.toString();
                }
                if (str == null || str.isEmpty()) {
                    boolean z = false;
                    if (this.f15283a != null) {
                        z = true;
                    }
                    if ((!(obj2 instanceof RunnableC5031g)) && z) {
                        m132a(sb);
                    } else {
                        sb.append("PENDING");
                    }
                } else {
                    sb.append("PENDING, info=[");
                    sb.append(str);
                    sb.append("]");
                }
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
