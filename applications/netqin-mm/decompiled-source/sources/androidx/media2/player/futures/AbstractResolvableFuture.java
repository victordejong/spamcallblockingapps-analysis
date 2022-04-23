package androidx.media2.player.futures;

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
import p131c.p161d.p266c.p275i.p276a.AbstractFutureC5108l;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/futures/AbstractResolvableFuture.class */
public abstract class AbstractResolvableFuture<V> implements AbstractFutureC5108l<V> {

    /* renamed from: d */
    public static final boolean f2155d = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: e */
    public static final Logger f2156e = Logger.getLogger(AbstractResolvableFuture.class.getName());

    /* renamed from: f */
    public static final AbstractC0414b f2157f;

    /* renamed from: g */
    public static final Object f2158g;

    /* renamed from: a */
    public volatile Object f2159a;

    /* renamed from: b */
    public volatile C0416d f2160b;

    /* renamed from: c */
    public volatile C0420h f2161c;

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/futures/AbstractResolvableFuture$Failure.class */
    public static final class Failure {

        /* renamed from: a */
        public final Throwable f2162a;

        static {
            new Failure(new Throwable("Failure occurred while trying to finish a future.") { // from class: androidx.media2.player.futures.AbstractResolvableFuture.Failure.1
                @Override // java.lang.Throwable
                public Throwable fillInStackTrace() {
                    synchronized (this) {
                    }
                    return this;
                }
            });
        }

        public Failure(Throwable th) {
            AbstractResolvableFuture.m37784d(th);
            this.f2162a = th;
        }
    }

    /* renamed from: androidx.media2.player.futures.AbstractResolvableFuture$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/futures/AbstractResolvableFuture$b.class */
    public static abstract class AbstractC0414b {
        public AbstractC0414b() {
        }

        /* renamed from: a */
        public abstract void mo37783a(C0420h hVar, C0420h hVar2);

        /* renamed from: a */
        public abstract void mo37782a(C0420h hVar, Thread thread);

        /* renamed from: a */
        public abstract boolean mo37781a(AbstractResolvableFuture<?> abstractResolvableFuture, C0416d dVar, C0416d dVar2);

        /* renamed from: a */
        public abstract boolean mo37780a(AbstractResolvableFuture<?> abstractResolvableFuture, C0420h hVar, C0420h hVar2);

        /* renamed from: a */
        public abstract boolean mo37779a(AbstractResolvableFuture<?> abstractResolvableFuture, Object obj, Object obj2);
    }

    /* renamed from: androidx.media2.player.futures.AbstractResolvableFuture$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/futures/AbstractResolvableFuture$c.class */
    public static final class C0415c {

        /* renamed from: c */
        public static final C0415c f2163c;

        /* renamed from: d */
        public static final C0415c f2164d;

        /* renamed from: a */
        public final boolean f2165a;

        /* renamed from: b */
        public final Throwable f2166b;

        static {
            if (AbstractResolvableFuture.f2155d) {
                f2164d = null;
                f2163c = null;
                return;
            }
            f2164d = new C0415c(false, null);
            f2163c = new C0415c(true, null);
        }

        public C0415c(boolean z, Throwable th) {
            this.f2165a = z;
            this.f2166b = th;
        }
    }

    /* renamed from: androidx.media2.player.futures.AbstractResolvableFuture$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/futures/AbstractResolvableFuture$d.class */
    public static final class C0416d {

        /* renamed from: d */
        public static final C0416d f2167d = new C0416d(null, null);

        /* renamed from: a */
        public final Runnable f2168a;

        /* renamed from: b */
        public final Executor f2169b;

        /* renamed from: c */
        public C0416d f2170c;

        public C0416d(Runnable runnable, Executor executor) {
            this.f2168a = runnable;
            this.f2169b = executor;
        }
    }

    /* renamed from: androidx.media2.player.futures.AbstractResolvableFuture$e */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/futures/AbstractResolvableFuture$e.class */
    public static final class C0417e extends AbstractC0414b {

        /* renamed from: a */
        public final AtomicReferenceFieldUpdater<C0420h, Thread> f2171a;

        /* renamed from: b */
        public final AtomicReferenceFieldUpdater<C0420h, C0420h> f2172b;

        /* renamed from: c */
        public final AtomicReferenceFieldUpdater<AbstractResolvableFuture, C0420h> f2173c;

        /* renamed from: d */
        public final AtomicReferenceFieldUpdater<AbstractResolvableFuture, C0416d> f2174d;

        /* renamed from: e */
        public final AtomicReferenceFieldUpdater<AbstractResolvableFuture, Object> f2175e;

        public C0417e(AtomicReferenceFieldUpdater<C0420h, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<C0420h, C0420h> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<AbstractResolvableFuture, C0420h> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<AbstractResolvableFuture, C0416d> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<AbstractResolvableFuture, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f2171a = atomicReferenceFieldUpdater;
            this.f2172b = atomicReferenceFieldUpdater2;
            this.f2173c = atomicReferenceFieldUpdater3;
            this.f2174d = atomicReferenceFieldUpdater4;
            this.f2175e = atomicReferenceFieldUpdater5;
        }

        @Override // androidx.media2.player.futures.AbstractResolvableFuture.AbstractC0414b
        /* renamed from: a */
        public void mo37783a(C0420h hVar, C0420h hVar2) {
            this.f2172b.lazySet(hVar, hVar2);
        }

        @Override // androidx.media2.player.futures.AbstractResolvableFuture.AbstractC0414b
        /* renamed from: a */
        public void mo37782a(C0420h hVar, Thread thread) {
            this.f2171a.lazySet(hVar, thread);
        }

        @Override // androidx.media2.player.futures.AbstractResolvableFuture.AbstractC0414b
        /* renamed from: a */
        public boolean mo37781a(AbstractResolvableFuture<?> abstractResolvableFuture, C0416d dVar, C0416d dVar2) {
            return this.f2174d.compareAndSet(abstractResolvableFuture, dVar, dVar2);
        }

        @Override // androidx.media2.player.futures.AbstractResolvableFuture.AbstractC0414b
        /* renamed from: a */
        public boolean mo37780a(AbstractResolvableFuture<?> abstractResolvableFuture, C0420h hVar, C0420h hVar2) {
            return this.f2173c.compareAndSet(abstractResolvableFuture, hVar, hVar2);
        }

        @Override // androidx.media2.player.futures.AbstractResolvableFuture.AbstractC0414b
        /* renamed from: a */
        public boolean mo37779a(AbstractResolvableFuture<?> abstractResolvableFuture, Object obj, Object obj2) {
            return this.f2175e.compareAndSet(abstractResolvableFuture, obj, obj2);
        }
    }

    /* renamed from: androidx.media2.player.futures.AbstractResolvableFuture$f */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/futures/AbstractResolvableFuture$f.class */
    public static final class RunnableC0418f<V> implements Runnable {

        /* renamed from: a */
        public final AbstractResolvableFuture<V> f2176a;

        /* renamed from: b */
        public final AbstractFutureC5108l<? extends V> f2177b;

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2176a.f2159a == this) {
                if (AbstractResolvableFuture.f2157f.mo37779a((AbstractResolvableFuture<?>) this.f2176a, (Object) this, AbstractResolvableFuture.m37794a((AbstractFutureC5108l<?>) this.f2177b))) {
                    AbstractResolvableFuture.m37795a((AbstractResolvableFuture<?>) this.f2176a);
                }
            }
        }
    }

    /* renamed from: androidx.media2.player.futures.AbstractResolvableFuture$g */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/futures/AbstractResolvableFuture$g.class */
    public static final class C0419g extends AbstractC0414b {
        public C0419g() {
            super();
        }

        @Override // androidx.media2.player.futures.AbstractResolvableFuture.AbstractC0414b
        /* renamed from: a */
        public void mo37783a(C0420h hVar, C0420h hVar2) {
            hVar.f2180b = hVar2;
        }

        @Override // androidx.media2.player.futures.AbstractResolvableFuture.AbstractC0414b
        /* renamed from: a */
        public void mo37782a(C0420h hVar, Thread thread) {
            hVar.f2179a = thread;
        }

        @Override // androidx.media2.player.futures.AbstractResolvableFuture.AbstractC0414b
        /* renamed from: a */
        public boolean mo37781a(AbstractResolvableFuture<?> abstractResolvableFuture, C0416d dVar, C0416d dVar2) {
            synchronized (abstractResolvableFuture) {
                if (abstractResolvableFuture.f2160b != dVar) {
                    return false;
                }
                abstractResolvableFuture.f2160b = dVar2;
                return true;
            }
        }

        @Override // androidx.media2.player.futures.AbstractResolvableFuture.AbstractC0414b
        /* renamed from: a */
        public boolean mo37780a(AbstractResolvableFuture<?> abstractResolvableFuture, C0420h hVar, C0420h hVar2) {
            synchronized (abstractResolvableFuture) {
                if (abstractResolvableFuture.f2161c != hVar) {
                    return false;
                }
                abstractResolvableFuture.f2161c = hVar2;
                return true;
            }
        }

        @Override // androidx.media2.player.futures.AbstractResolvableFuture.AbstractC0414b
        /* renamed from: a */
        public boolean mo37779a(AbstractResolvableFuture<?> abstractResolvableFuture, Object obj, Object obj2) {
            synchronized (abstractResolvableFuture) {
                if (abstractResolvableFuture.f2159a != obj) {
                    return false;
                }
                abstractResolvableFuture.f2159a = obj2;
                return true;
            }
        }
    }

    /* renamed from: androidx.media2.player.futures.AbstractResolvableFuture$h */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/futures/AbstractResolvableFuture$h.class */
    public static final class C0420h {

        /* renamed from: c */
        public static final C0420h f2178c = new C0420h(false);

        /* renamed from: a */
        public volatile Thread f2179a;

        /* renamed from: b */
        public volatile C0420h f2180b;

        public C0420h() {
            AbstractResolvableFuture.f2157f.mo37782a(this, Thread.currentThread());
        }

        public C0420h(boolean z) {
        }

        /* renamed from: a */
        public void m37778a() {
            Thread thread = this.f2179a;
            if (thread != null) {
                this.f2179a = null;
                LockSupport.unpark(thread);
            }
        }

        /* renamed from: a */
        public void m37777a(C0420h hVar) {
            AbstractResolvableFuture.f2157f.mo37783a(this, hVar);
        }
    }

    static {
        Throwable th;
        AbstractC0414b bVar;
        try {
            bVar = new C0417e(AtomicReferenceFieldUpdater.newUpdater(C0420h.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(C0420h.class, C0420h.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, C0420h.class, "c"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, C0416d.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, Object.class, "a"));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            bVar = new C0419g();
        }
        f2157f = bVar;
        if (th != null) {
            f2156e.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f2158g = new Object();
    }

    /* renamed from: a */
    public static Object m37794a(AbstractFutureC5108l<?> lVar) {
        if (lVar instanceof AbstractResolvableFuture) {
            Object obj = ((AbstractResolvableFuture) lVar).f2159a;
            Object obj2 = obj;
            if (obj instanceof C0415c) {
                C0415c cVar = (C0415c) obj;
                obj2 = obj;
                if (cVar.f2165a) {
                    obj2 = cVar.f2166b != null ? new C0415c(false, cVar.f2166b) : C0415c.f2164d;
                }
            }
            return obj2;
        }
        boolean isCancelled = lVar.isCancelled();
        if ((!f2155d) && isCancelled) {
            return C0415c.f2164d;
        }
        try {
            Object a = m37790a((Future<Object>) lVar);
            Object obj3 = a;
            if (a == null) {
                obj3 = f2158g;
            }
            return obj3;
        } catch (CancellationException e) {
            if (isCancelled) {
                return new C0415c(false, e);
            }
            return new Failure(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + lVar, e));
        } catch (ExecutionException e2) {
            return new Failure(e2.getCause());
        } catch (Throwable th) {
            return new Failure(th);
        }
    }

    /* renamed from: a */
    public static <V> V m37790a(Future<V> future) throws ExecutionException {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = future.get();
                break;
            } catch (InterruptedException e) {
                z = true;
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
    public static CancellationException m37792a(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [androidx.media2.player.futures.AbstractResolvableFuture<V>, androidx.media2.player.futures.AbstractResolvableFuture] */
    /* JADX WARN: Type inference failed for: r0v24, types: [androidx.media2.player.futures.AbstractResolvableFuture$b] */
    /* renamed from: a */
    public static void m37795a(AbstractResolvableFuture<?> abstractResolvableFuture) {
        C0416d dVar;
        AbstractResolvableFuture<V> abstractResolvableFuture2;
        C0416d dVar2 = null;
        while (true) {
            abstractResolvableFuture.m37785d();
            abstractResolvableFuture.m37798a();
            C0416d a = abstractResolvableFuture.m37797a(dVar2);
            while (a != null) {
                dVar = a.f2170c;
                Runnable runnable = a.f2168a;
                if (runnable instanceof RunnableC0418f) {
                    RunnableC0418f fVar = (RunnableC0418f) runnable;
                    abstractResolvableFuture2 = fVar.f2176a;
                    if (abstractResolvableFuture2.f2159a == fVar) {
                        if (f2157f.mo37779a(abstractResolvableFuture2, fVar, m37794a((AbstractFutureC5108l<?>) fVar.f2177b))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    m37788b(runnable, a.f2169b);
                }
                a = dVar;
            }
            return;
            dVar2 = dVar;
            abstractResolvableFuture = abstractResolvableFuture2;
        }
    }

    /* renamed from: b */
    public static void m37788b(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = f2156e;
            Level level = Level.SEVERE;
            logger.log(level, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    /* renamed from: d */
    public static <T> T m37784d(T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    /* renamed from: a */
    public final C0416d m37797a(C0416d dVar) {
        do {
            dVar = this.f2160b;
        } while (!f2157f.mo37781a((AbstractResolvableFuture<?>) this, dVar, C0416d.f2167d));
        while (dVar != null) {
            dVar = dVar.f2170c;
            dVar.f2170c = dVar;
        }
        return dVar;
    }

    /* renamed from: a */
    public final V m37793a(Object obj) throws ExecutionException {
        if (obj instanceof C0415c) {
            throw m37792a("Task was cancelled.", ((C0415c) obj).f2166b);
        } else if (!(obj instanceof Failure)) {
            V v = (V) obj;
            if (obj == f2158g) {
                v = null;
            }
            return v;
        } else {
            throw new ExecutionException(((Failure) obj).f2162a);
        }
    }

    /* renamed from: a */
    public void m37798a() {
    }

    /* renamed from: a */
    public final void m37796a(C0420h hVar) {
        hVar.f2179a = null;
        while (true) {
            C0420h hVar2 = this.f2161c;
            if (hVar2 != C0420h.f2178c) {
                C0420h hVar3 = null;
                while (hVar2 != null) {
                    C0420h hVar4 = hVar2.f2180b;
                    if (hVar2.f2179a != null) {
                        hVar3 = hVar2;
                    } else if (hVar3 != null) {
                        hVar3.f2180b = hVar4;
                        hVar3 = hVar3;
                        if (hVar3.f2179a == null) {
                            break;
                        }
                    } else {
                        hVar3 = hVar3;
                        if (!f2157f.mo37780a((AbstractResolvableFuture<?>) this, hVar2, hVar4)) {
                            break;
                        }
                    }
                    hVar2 = hVar4;
                }
                return;
            }
            return;
        }
    }

    @Override // p131c.p161d.p266c.p275i.p276a.AbstractFutureC5108l
    /* renamed from: a */
    public final void mo7696a(Runnable runnable, Executor executor) {
        C0416d dVar;
        m37784d(runnable);
        m37784d(executor);
        C0416d dVar2 = this.f2160b;
        if (dVar2 != C0416d.f2167d) {
            C0416d dVar3 = new C0416d(runnable, executor);
            do {
                dVar3.f2170c = dVar2;
                if (!f2157f.mo37781a((AbstractResolvableFuture<?>) this, dVar2, dVar3)) {
                    dVar = this.f2160b;
                    dVar2 = dVar;
                } else {
                    return;
                }
            } while (dVar != C0416d.f2167d);
            m37788b(runnable, executor);
        }
        m37788b(runnable, executor);
    }

    /* renamed from: a */
    public final void m37791a(StringBuilder sb) {
        try {
            Object a = m37790a((Future<Object>) this);
            sb.append("SUCCESS, result=[");
            sb.append(m37786c(a));
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

    /* renamed from: a */
    public boolean mo32104a(Throwable th) {
        m37784d(th);
        if (!f2157f.mo37779a((AbstractResolvableFuture<?>) this, (Object) null, (Object) new Failure(th))) {
            return false;
        }
        m37795a((AbstractResolvableFuture<?>) this);
        return true;
    }

    /* renamed from: b */
    public void m37789b() {
    }

    /* renamed from: b */
    public boolean mo32103b(V v) {
        Object obj = v;
        if (v == null) {
            obj = f2158g;
        }
        if (!f2157f.mo37779a((AbstractResolvableFuture<?>) this, (Object) null, obj)) {
            return false;
        }
        m37795a((AbstractResolvableFuture<?>) this);
        return true;
    }

    /* renamed from: c */
    public String m37787c() {
        Object obj = this.f2159a;
        if (obj instanceof RunnableC0418f) {
            return "setFuture=[" + m37786c(((RunnableC0418f) obj).f2177b) + "]";
        } else if (!(this instanceof ScheduledFuture)) {
            return null;
        } else {
            return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
        }
    }

    /* renamed from: c */
    public final String m37786c(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean z2;
        Object obj = this.f2159a;
        if ((obj == null) || (obj instanceof RunnableC0418f)) {
            C0415c cVar = f2155d ? new C0415c(z, new CancellationException("Future.cancel() was called.")) : z ? C0415c.f2163c : C0415c.f2164d;
            z2 = false;
            AbstractResolvableFuture<V> abstractResolvableFuture = this;
            while (true) {
                if (f2157f.mo37779a((AbstractResolvableFuture<?>) abstractResolvableFuture, obj, (Object) cVar)) {
                    if (z) {
                        abstractResolvableFuture.m37789b();
                    }
                    m37795a((AbstractResolvableFuture<?>) abstractResolvableFuture);
                    z2 = true;
                    if (!(obj instanceof RunnableC0418f)) {
                        break;
                    }
                    AbstractFutureC5108l<? extends V> lVar = ((RunnableC0418f) obj).f2177b;
                    if (!(lVar instanceof AbstractResolvableFuture)) {
                        lVar.cancel(z);
                        z2 = true;
                        break;
                    }
                    abstractResolvableFuture = (AbstractResolvableFuture) lVar;
                    obj = abstractResolvableFuture.f2159a;
                    z2 = true;
                    if (!(obj == null) && !(obj instanceof RunnableC0418f)) {
                        break;
                    }
                    z2 = true;
                } else {
                    Object obj2 = abstractResolvableFuture.f2159a;
                    obj = obj2;
                    if (!(obj2 instanceof RunnableC0418f)) {
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
    public final void m37785d() {
        C0420h hVar;
        do {
            hVar = this.f2161c;
        } while (!f2157f.mo37780a((AbstractResolvableFuture<?>) this, hVar, C0420h.f2178c));
        while (hVar != null) {
            hVar.m37778a();
            hVar = hVar.f2180b;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
        java.util.concurrent.locks.LockSupport.park(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0053, code lost:
        if (java.lang.Thread.interrupted() != false) goto L_0x0077;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0056, code lost:
        r0 = r5.f2159a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005c, code lost:
        if (r0 == null) goto L_0x0064;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005f, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0064, code lost:
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006e, code lost:
        if ((r7 & (!(r0 instanceof androidx.media2.player.futures.AbstractResolvableFuture.RunnableC0418f))) == false) goto L_0x004c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0076, code lost:
        return m37793a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0077, code lost:
        m37796a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0083, code lost:
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
            if (r0 != 0) goto L_0x009e
            r0 = r5
            java.lang.Object r0 = r0.f2159a
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0014
            r0 = 1
            r7 = r0
            goto L_0x0016
        L_0x0014:
            r0 = 0
            r7 = r0
        L_0x0016:
            r0 = r7
            r1 = r6
            boolean r1 = r1 instanceof androidx.media2.player.futures.AbstractResolvableFuture.RunnableC0418f
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0027
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m37793a(r1)
            return r0
        L_0x0027:
            r0 = r5
            androidx.media2.player.futures.AbstractResolvableFuture$h r0 = r0.f2161c
            r6 = r0
            r0 = r6
            androidx.media2.player.futures.AbstractResolvableFuture$h r1 = androidx.media2.player.futures.AbstractResolvableFuture.C0420h.f2178c
            if (r0 == r1) goto L_0x0095
            androidx.media2.player.futures.AbstractResolvableFuture$h r0 = new androidx.media2.player.futures.AbstractResolvableFuture$h
            r1 = r0
            r1.<init>()
            r8 = r0
        L_0x003b:
            r0 = r8
            r1 = r6
            r0.m37777a(r1)
            androidx.media2.player.futures.AbstractResolvableFuture$b r0 = androidx.media2.player.futures.AbstractResolvableFuture.f2157f
            r1 = r5
            r2 = r6
            r3 = r8
            boolean r0 = r0.mo37780a(r1, r2, r3)
            if (r0 == 0) goto L_0x0084
        L_0x004c:
            r0 = r5
            java.util.concurrent.locks.LockSupport.park(r0)
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto L_0x0077
            r0 = r5
            java.lang.Object r0 = r0.f2159a
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0064
            r0 = 1
            r7 = r0
            goto L_0x0066
        L_0x0064:
            r0 = 0
            r7 = r0
        L_0x0066:
            r0 = r7
            r1 = r6
            boolean r1 = r1 instanceof androidx.media2.player.futures.AbstractResolvableFuture.RunnableC0418f
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x004c
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m37793a(r1)
            return r0
        L_0x0077:
            r0 = r5
            r1 = r8
            r0.m37796a(r1)
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        L_0x0084:
            r0 = r5
            androidx.media2.player.futures.AbstractResolvableFuture$h r0 = r0.f2161c
            r9 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            androidx.media2.player.futures.AbstractResolvableFuture$h r1 = androidx.media2.player.futures.AbstractResolvableFuture.C0420h.f2178c
            if (r0 != r1) goto L_0x003b
        L_0x0095:
            r0 = r5
            r1 = r5
            java.lang.Object r1 = r1.f2159a
            java.lang.Object r0 = r0.m37793a(r1)
            return r0
        L_0x009e:
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            r6 = r0
            goto L_0x00ab
        L_0x00a9:
            r0 = r6
            throw r0
        L_0x00ab:
            goto L_0x00a9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.player.futures.AbstractResolvableFuture.get():java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0083, code lost:
        java.util.concurrent.locks.LockSupport.parkNanos(r6, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008c, code lost:
        if (java.lang.Thread.interrupted() != false) goto L_0x00d5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008f, code lost:
        r0 = r6.f2159a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0097, code lost:
        if (r0 == null) goto L_0x00a0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009a, code lost:
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a0, code lost:
        r13 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ad, code lost:
        if ((r13 & (!(r0 instanceof androidx.media2.player.futures.AbstractResolvableFuture.RunnableC0418f))) == false) goto L_0x00b7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b6, code lost:
        return m37793a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b7, code lost:
        r16 = r14 - java.lang.System.nanoTime();
        r10 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c9, code lost:
        if (r16 >= 1000) goto L_0x0083;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00cc, code lost:
        m37796a(r0);
        r16 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d5, code lost:
        m37796a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e2, code lost:
        throw new java.lang.InterruptedException();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2, types: [long] */
    /* JADX WARN: Type inference failed for: r16v6, types: [long] */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V get(long r7, java.util.concurrent.TimeUnit r9) throws java.lang.InterruptedException, java.util.concurrent.TimeoutException, java.util.concurrent.ExecutionException {
        /*
            Method dump skipped, instructions count: 796
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.player.futures.AbstractResolvableFuture.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f2159a instanceof C0415c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.f2159a;
        return (!(obj instanceof RunnableC0418f)) & (obj != null);
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            m37791a(sb);
        } else {
            try {
                str = m37787c();
            } catch (RuntimeException e) {
                str = "Exception thrown from implementation: " + e.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                m37791a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
