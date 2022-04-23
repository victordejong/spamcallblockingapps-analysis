package androidx.work.impl.utils.a;

import com.appsflyer.share.Constants;
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
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a.class */
public abstract class a<V> implements com.google.common.util.concurrent.a<V> {

    /* renamed from: b  reason: collision with root package name */
    static final AbstractC0122a f6148b;
    private static final Object g;

    /* renamed from: c  reason: collision with root package name */
    volatile Object f6149c;

    /* renamed from: d  reason: collision with root package name */
    volatile d f6150d;
    volatile h e;

    /* renamed from: a  reason: collision with root package name */
    static final boolean f6147a = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    private static final Logger f = Logger.getLogger(a.class.getName());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.utils.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a$a.class */
    public static abstract class AbstractC0122a {
        private AbstractC0122a() {
        }

        abstract void a(h hVar, h hVar2);

        abstract void a(h hVar, Thread thread);

        abstract boolean a(a<?> aVar, d dVar, d dVar2);

        abstract boolean a(a<?> aVar, h hVar, h hVar2);

        abstract boolean a(a<?> aVar, Object obj, Object obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        static final b f6151a;

        /* renamed from: b  reason: collision with root package name */
        static final b f6152b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f6153c;

        /* renamed from: d  reason: collision with root package name */
        final Throwable f6154d;

        static {
            if (a.f6147a) {
                f6152b = null;
                f6151a = null;
                return;
            }
            f6152b = new b(false, null);
            f6151a = new b(true, null);
        }

        b(boolean z, Throwable th) {
            this.f6153c = z;
            this.f6154d = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final c f6155a = new c(new Throwable("Failure occurred while trying to finish a future.") { // from class: androidx.work.impl.utils.a.a.c.1
            @Override // java.lang.Throwable
            public final Throwable fillInStackTrace() {
                synchronized (this) {
                }
                return this;
            }
        });

        /* renamed from: b  reason: collision with root package name */
        final Throwable f6156b;

        c(Throwable th) {
            this.f6156b = (Throwable) a.b(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        static final d f6157a = new d(null, null);

        /* renamed from: b  reason: collision with root package name */
        final Runnable f6158b;

        /* renamed from: c  reason: collision with root package name */
        final Executor f6159c;

        /* renamed from: d  reason: collision with root package name */
        d f6160d;

        d(Runnable runnable, Executor executor) {
            this.f6158b = runnable;
            this.f6159c = executor;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a$e.class */
    static final class e extends AbstractC0122a {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<h, Thread> f6161a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<h, h> f6162b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<a, h> f6163c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<a, d> f6164d;
        final AtomicReferenceFieldUpdater<a, Object> e;

        e(AtomicReferenceFieldUpdater<h, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<h, h> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<a, h> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<a, d> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<a, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f6161a = atomicReferenceFieldUpdater;
            this.f6162b = atomicReferenceFieldUpdater2;
            this.f6163c = atomicReferenceFieldUpdater3;
            this.f6164d = atomicReferenceFieldUpdater4;
            this.e = atomicReferenceFieldUpdater5;
        }

        @Override // androidx.work.impl.utils.a.a.AbstractC0122a
        final void a(h hVar, h hVar2) {
            this.f6162b.lazySet(hVar, hVar2);
        }

        @Override // androidx.work.impl.utils.a.a.AbstractC0122a
        final void a(h hVar, Thread thread) {
            this.f6161a.lazySet(hVar, thread);
        }

        @Override // androidx.work.impl.utils.a.a.AbstractC0122a
        final boolean a(a<?> aVar, d dVar, d dVar2) {
            return this.f6164d.compareAndSet(aVar, dVar, dVar2);
        }

        @Override // androidx.work.impl.utils.a.a.AbstractC0122a
        final boolean a(a<?> aVar, h hVar, h hVar2) {
            return this.f6163c.compareAndSet(aVar, hVar, hVar2);
        }

        @Override // androidx.work.impl.utils.a.a.AbstractC0122a
        final boolean a(a<?> aVar, Object obj, Object obj2) {
            return this.e.compareAndSet(aVar, obj, obj2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a$f.class */
    public static final class f<V> implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final a<V> f6165a;

        /* renamed from: b  reason: collision with root package name */
        final com.google.common.util.concurrent.a<? extends V> f6166b;

        f(a<V> aVar, com.google.common.util.concurrent.a<? extends V> aVar2) {
            this.f6165a = aVar;
            this.f6166b = aVar2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f6165a.f6149c == this) {
                if (a.f6148b.a((a<?>) this.f6165a, (Object) this, a.b((com.google.common.util.concurrent.a<?>) this.f6166b))) {
                    a.a((a<?>) this.f6165a);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a$g.class */
    static final class g extends AbstractC0122a {
        g() {
            super();
        }

        @Override // androidx.work.impl.utils.a.a.AbstractC0122a
        final void a(h hVar, h hVar2) {
            hVar.f6169c = hVar2;
        }

        @Override // androidx.work.impl.utils.a.a.AbstractC0122a
        final void a(h hVar, Thread thread) {
            hVar.f6168b = thread;
        }

        @Override // androidx.work.impl.utils.a.a.AbstractC0122a
        final boolean a(a<?> aVar, d dVar, d dVar2) {
            synchronized (aVar) {
                if (aVar.f6150d != dVar) {
                    return false;
                }
                aVar.f6150d = dVar2;
                return true;
            }
        }

        @Override // androidx.work.impl.utils.a.a.AbstractC0122a
        final boolean a(a<?> aVar, h hVar, h hVar2) {
            synchronized (aVar) {
                if (aVar.e != hVar) {
                    return false;
                }
                aVar.e = hVar2;
                return true;
            }
        }

        @Override // androidx.work.impl.utils.a.a.AbstractC0122a
        final boolean a(a<?> aVar, Object obj, Object obj2) {
            synchronized (aVar) {
                if (aVar.f6149c != obj) {
                    return false;
                }
                aVar.f6149c = obj2;
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a$h.class */
    public static final class h {

        /* renamed from: a  reason: collision with root package name */
        static final h f6167a = new h(false);

        /* renamed from: b  reason: collision with root package name */
        volatile Thread f6168b;

        /* renamed from: c  reason: collision with root package name */
        volatile h f6169c;

        h() {
            a.f6148b.a(this, Thread.currentThread());
        }

        h(boolean z) {
        }

        final void a() {
            Thread thread = this.f6168b;
            if (thread != null) {
                this.f6168b = null;
                LockSupport.unpark(thread);
            }
        }

        final void a(h hVar) {
            a.f6148b.a(this, hVar);
        }
    }

    static {
        Throwable th;
        AbstractC0122a aVar;
        try {
            aVar = new e(AtomicReferenceFieldUpdater.newUpdater(h.class, Thread.class, com.google.api.client.googleapis.notifications.b.f31754a), AtomicReferenceFieldUpdater.newUpdater(h.class, h.class, Constants.URL_CAMPAIGN), AtomicReferenceFieldUpdater.newUpdater(a.class, h.class, "e"), AtomicReferenceFieldUpdater.newUpdater(a.class, d.class, "d"), AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, Constants.URL_CAMPAIGN));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            aVar = new g();
        }
        f6148b = aVar;
        if (th != null) {
            f.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        g = new Object();
    }

    private d a(d dVar) {
        do {
            dVar = this.f6150d;
        } while (!f6148b.a((a<?>) this, dVar, d.f6157a));
        while (dVar != null) {
            dVar = dVar.f6160d;
            dVar.f6160d = dVar;
        }
        return dVar;
    }

    private static <V> V a(Future<V> future) throws ExecutionException {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = future.get();
                break;
            } catch (InterruptedException e2) {
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

    private static CancellationException a(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    private void a() {
        h hVar;
        do {
            hVar = this.e;
        } while (!f6148b.a((a<?>) this, hVar, h.f6167a));
        while (hVar != null) {
            hVar.a();
            hVar = hVar.f6169c;
        }
    }

    private void a(h hVar) {
        hVar.f6168b = null;
        while (true) {
            h hVar2 = this.e;
            if (hVar2 != h.f6167a) {
                hVar2 = null;
                while (hVar2 != null) {
                    h hVar3 = hVar2.f6169c;
                    if (hVar2.f6168b == null) {
                        if (hVar2 != null) {
                            hVar2.f6169c = hVar3;
                            hVar2 = hVar2;
                            if (hVar2.f6168b == null) {
                                break;
                            }
                        } else if (f6148b.a((a<?>) this, hVar2, hVar3)) {
                            hVar2 = hVar2;
                        }
                    }
                    hVar2 = hVar3;
                }
                return;
            }
            return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [androidx.work.impl.utils.a.a$a] */
    static void a(a<?> aVar) {
        d dVar = null;
        a aVar2 = aVar;
        while (true) {
            aVar2.a();
            d a2 = aVar2.a(dVar);
            while (a2 != null) {
                d dVar2 = a2.f6160d;
                Runnable runnable = a2.f6158b;
                if (runnable instanceof f) {
                    f fVar = (f) runnable;
                    a aVar3 = (a<V>) fVar.f6165a;
                    if (aVar3.f6149c == fVar) {
                        dVar = dVar2;
                        aVar2 = aVar3;
                        if (!f6148b.a(aVar3, fVar, b((com.google.common.util.concurrent.a<?>) fVar.f6166b))) {
                        }
                    } else {
                        continue;
                    }
                } else {
                    b(runnable, a2.f6159c);
                }
                a2 = dVar2;
            }
            return;
        }
    }

    private void a(StringBuilder sb) {
        try {
            Object a2 = a((Future<Object>) this);
            sb.append("SUCCESS, result=[");
            sb.append(d(a2));
            sb.append("]");
        } catch (CancellationException e2) {
            sb.append("CANCELLED");
        } catch (RuntimeException e3) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e3.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e4) {
            sb.append("FAILURE, cause=[");
            sb.append(e4.getCause());
            sb.append("]");
        }
    }

    static Object b(com.google.common.util.concurrent.a<?> aVar) {
        if (aVar instanceof a) {
            Object obj = ((a) aVar).f6149c;
            Object obj2 = obj;
            if (obj instanceof b) {
                b bVar = (b) obj;
                obj2 = obj;
                if (bVar.f6153c) {
                    obj2 = bVar.f6154d != null ? new b(false, bVar.f6154d) : b.f6152b;
                }
            }
            return obj2;
        }
        boolean isCancelled = aVar.isCancelled();
        if ((!f6147a) && isCancelled) {
            return b.f6152b;
        }
        try {
            Object a2 = a((Future<Object>) aVar);
            return a2 == null ? g : a2;
        } catch (CancellationException e2) {
            return !isCancelled ? new c(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(aVar)), e2)) : new b(false, e2);
        } catch (ExecutionException e3) {
            return new c(e3.getCause());
        } catch (Throwable th) {
            return new c(th);
        }
    }

    static <T> T b(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    private static void b(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            Logger logger = f;
            Level level = Level.SEVERE;
            logger.log(level, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e2);
        }
    }

    private static V c(Object obj) throws ExecutionException {
        if (obj instanceof b) {
            throw a("Task was cancelled.", ((b) obj).f6154d);
        } else if (!(obj instanceof c)) {
            V v = (V) obj;
            if (obj == g) {
                v = null;
            }
            return v;
        } else {
            throw new ExecutionException(((c) obj).f6156b);
        }
    }

    private String d(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    @Override // com.google.common.util.concurrent.a
    public final void a(Runnable runnable, Executor executor) {
        d dVar;
        b(runnable);
        b(executor);
        d dVar2 = this.f6150d;
        if (dVar2 != d.f6157a) {
            d dVar3 = new d(runnable, executor);
            do {
                dVar3.f6160d = dVar2;
                if (!f6148b.a((a<?>) this, dVar2, dVar3)) {
                    dVar = this.f6150d;
                    dVar2 = dVar;
                } else {
                    return;
                }
            } while (dVar != d.f6157a);
            b(runnable, executor);
        }
        b(runnable, executor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(com.google.common.util.concurrent.a<? extends V> aVar) {
        c cVar;
        b(aVar);
        Object obj = this.f6149c;
        Object obj2 = obj;
        if (obj == null) {
            if (aVar.isDone()) {
                if (!f6148b.a((a<?>) this, (Object) null, b((com.google.common.util.concurrent.a<?>) aVar))) {
                    return false;
                }
                a((a<?>) this);
                return true;
            }
            f fVar = new f(this, aVar);
            if (f6148b.a((a<?>) this, (Object) null, (Object) fVar)) {
                try {
                    aVar.a(fVar, androidx.work.impl.utils.a.b.INSTANCE);
                    return true;
                } catch (Throwable th) {
                    try {
                        cVar = new c(th);
                    } catch (Throwable th2) {
                        cVar = c.f6155a;
                    }
                    f6148b.a((a<?>) this, (Object) fVar, (Object) cVar);
                    return true;
                }
            } else {
                obj2 = this.f6149c;
            }
        }
        if (!(obj2 instanceof b)) {
            return false;
        }
        aVar.cancel(((b) obj2).f6153c);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(V v) {
        Object obj = v;
        if (v == null) {
            obj = g;
        }
        if (!f6148b.a((a<?>) this, (Object) null, obj)) {
            return false;
        }
        a((a<?>) this);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(Throwable th) {
        if (!f6148b.a((a<?>) this, (Object) null, (Object) new c((Throwable) b(th)))) {
            return false;
        }
        a((a<?>) this);
        return true;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean z2;
        Object obj = this.f6149c;
        if ((obj == null) || (obj instanceof f)) {
            b bVar = f6147a ? new b(z, new CancellationException("Future.cancel() was called.")) : z ? b.f6151a : b.f6152b;
            z2 = false;
            a<V> aVar = this;
            while (true) {
                if (f6148b.a((a<?>) aVar, obj, (Object) bVar)) {
                    a((a<?>) aVar);
                    z2 = true;
                    if (!(obj instanceof f)) {
                        break;
                    }
                    com.google.common.util.concurrent.a<? extends V> aVar2 = ((f) obj).f6166b;
                    if (!(aVar2 instanceof a)) {
                        aVar2.cancel(z);
                        z2 = true;
                        break;
                    }
                    aVar = (a) aVar2;
                    obj = aVar.f6149c;
                    z2 = true;
                    if (!(obj == null) && !(obj instanceof f)) {
                        break;
                    }
                    z2 = true;
                } else {
                    Object obj2 = aVar.f6149c;
                    obj = obj2;
                    if (!(obj2 instanceof f)) {
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
        if (java.lang.Thread.interrupted() != false) goto L_0x0075;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0055, code lost:
        r0 = r5.f6149c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005b, code lost:
        if (r0 == null) goto L_0x0063;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005e, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0063, code lost:
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006d, code lost:
        if ((r7 & (!(r0 instanceof androidx.work.impl.utils.a.a.f))) == false) goto L_0x004b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0074, code lost:
        return (V) c(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0075, code lost:
        a(r0);
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
            if (r0 != 0) goto L_0x009b
            r0 = r5
            java.lang.Object r0 = r0.f6149c
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
            boolean r1 = r1 instanceof androidx.work.impl.utils.a.a.f
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0026
            r0 = r6
            java.lang.Object r0 = c(r0)
            return r0
        L_0x0026:
            r0 = r5
            androidx.work.impl.utils.a.a$h r0 = r0.e
            r6 = r0
            r0 = r6
            androidx.work.impl.utils.a.a$h r1 = androidx.work.impl.utils.a.a.h.f6167a
            if (r0 == r1) goto L_0x0093
            androidx.work.impl.utils.a.a$h r0 = new androidx.work.impl.utils.a.a$h
            r1 = r0
            r1.<init>()
            r8 = r0
        L_0x003a:
            r0 = r8
            r1 = r6
            r0.a(r1)
            androidx.work.impl.utils.a.a$a r0 = androidx.work.impl.utils.a.a.f6148b
            r1 = r5
            r2 = r6
            r3 = r8
            boolean r0 = r0.a(r1, r2, r3)
            if (r0 == 0) goto L_0x0082
        L_0x004b:
            r0 = r5
            java.util.concurrent.locks.LockSupport.park(r0)
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto L_0x0075
            r0 = r5
            java.lang.Object r0 = r0.f6149c
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0063
            r0 = 1
            r7 = r0
            goto L_0x0065
        L_0x0063:
            r0 = 0
            r7 = r0
        L_0x0065:
            r0 = r7
            r1 = r6
            boolean r1 = r1 instanceof androidx.work.impl.utils.a.a.f
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x004b
            r0 = r6
            java.lang.Object r0 = c(r0)
            return r0
        L_0x0075:
            r0 = r5
            r1 = r8
            r0.a(r1)
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        L_0x0082:
            r0 = r5
            androidx.work.impl.utils.a.a$h r0 = r0.e
            r9 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            androidx.work.impl.utils.a.a$h r1 = androidx.work.impl.utils.a.a.h.f6167a
            if (r0 != r1) goto L_0x003a
        L_0x0093:
            r0 = r5
            java.lang.Object r0 = r0.f6149c
            java.lang.Object r0 = c(r0)
            return r0
        L_0x009b:
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.a.a.get():java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0082, code lost:
        java.util.concurrent.locks.LockSupport.parkNanos(r6, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008b, code lost:
        if (java.lang.Thread.interrupted() != false) goto L_0x00d3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008e, code lost:
        r0 = r6.f6149c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0096, code lost:
        if (r0 == null) goto L_0x009f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0099, code lost:
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009f, code lost:
        r13 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ac, code lost:
        if ((r13 & (!(r0 instanceof androidx.work.impl.utils.a.a.f))) == false) goto L_0x00b5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b4, code lost:
        return (V) c(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b5, code lost:
        r16 = r14 - java.lang.System.nanoTime();
        r10 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c7, code lost:
        if (r16 >= 1000) goto L_0x0082;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ca, code lost:
        a(r0);
        r16 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d3, code lost:
        a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e0, code lost:
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
            Method dump skipped, instructions count: 781
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.a.a.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f6149c instanceof b;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.f6149c;
        return (!(obj instanceof f)) & (obj != null);
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
            a(sb);
        } else {
            try {
                if (this.f6149c instanceof f) {
                    str = "setFuture=[" + d(((f) obj).f6166b) + "]";
                } else if (this instanceof ScheduledFuture) {
                    str = "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
                } else {
                    str = null;
                }
            } catch (RuntimeException e2) {
                str = "Exception thrown from implementation: " + e2.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
