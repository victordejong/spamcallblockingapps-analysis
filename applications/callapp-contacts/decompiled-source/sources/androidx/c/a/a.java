package androidx.c.a;

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
/* loaded from: classes-dex2jar.jar:androidx/c/a/a.class */
public abstract class a<V> implements com.google.common.util.concurrent.a<V> {

    /* renamed from: b  reason: collision with root package name */
    static final AbstractC0030a f1270b;
    private static final Object g;

    /* renamed from: c  reason: collision with root package name */
    volatile Object f1271c;

    /* renamed from: d  reason: collision with root package name */
    volatile d f1272d;
    volatile h e;

    /* renamed from: a  reason: collision with root package name */
    static final boolean f1269a = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    private static final Logger f = Logger.getLogger(a.class.getName());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.c.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/c/a/a$a.class */
    public static abstract class AbstractC0030a {
        private AbstractC0030a() {
        }

        abstract void a(h hVar, h hVar2);

        abstract void a(h hVar, Thread thread);

        abstract boolean a(a<?> aVar, d dVar, d dVar2);

        abstract boolean a(a<?> aVar, h hVar, h hVar2);

        abstract boolean a(a<?> aVar, Object obj, Object obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/c/a/a$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        static final b f1273a;

        /* renamed from: b  reason: collision with root package name */
        static final b f1274b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f1275c;

        /* renamed from: d  reason: collision with root package name */
        final Throwable f1276d;

        static {
            if (a.f1269a) {
                f1274b = null;
                f1273a = null;
                return;
            }
            f1274b = new b(false, null);
            f1273a = new b(true, null);
        }

        b(boolean z, Throwable th) {
            this.f1275c = z;
            this.f1276d = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/c/a/a$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final c f1277a = new c(new Throwable("Failure occurred while trying to finish a future.") { // from class: androidx.c.a.a.c.1
            @Override // java.lang.Throwable
            public final Throwable fillInStackTrace() {
                synchronized (this) {
                }
                return this;
            }
        });

        /* renamed from: b  reason: collision with root package name */
        final Throwable f1278b;

        c(Throwable th) {
            this.f1278b = (Throwable) a.b(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/c/a/a$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        static final d f1279a = new d(null, null);

        /* renamed from: b  reason: collision with root package name */
        final Runnable f1280b;

        /* renamed from: c  reason: collision with root package name */
        final Executor f1281c;

        /* renamed from: d  reason: collision with root package name */
        d f1282d;

        d(Runnable runnable, Executor executor) {
            this.f1280b = runnable;
            this.f1281c = executor;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/c/a/a$e.class */
    static final class e extends AbstractC0030a {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<h, Thread> f1283a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<h, h> f1284b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<a, h> f1285c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<a, d> f1286d;
        final AtomicReferenceFieldUpdater<a, Object> e;

        e(AtomicReferenceFieldUpdater<h, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<h, h> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<a, h> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<a, d> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<a, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f1283a = atomicReferenceFieldUpdater;
            this.f1284b = atomicReferenceFieldUpdater2;
            this.f1285c = atomicReferenceFieldUpdater3;
            this.f1286d = atomicReferenceFieldUpdater4;
            this.e = atomicReferenceFieldUpdater5;
        }

        @Override // androidx.c.a.a.AbstractC0030a
        final void a(h hVar, h hVar2) {
            this.f1284b.lazySet(hVar, hVar2);
        }

        @Override // androidx.c.a.a.AbstractC0030a
        final void a(h hVar, Thread thread) {
            this.f1283a.lazySet(hVar, thread);
        }

        @Override // androidx.c.a.a.AbstractC0030a
        final boolean a(a<?> aVar, d dVar, d dVar2) {
            return this.f1286d.compareAndSet(aVar, dVar, dVar2);
        }

        @Override // androidx.c.a.a.AbstractC0030a
        final boolean a(a<?> aVar, h hVar, h hVar2) {
            return this.f1285c.compareAndSet(aVar, hVar, hVar2);
        }

        @Override // androidx.c.a.a.AbstractC0030a
        final boolean a(a<?> aVar, Object obj, Object obj2) {
            return this.e.compareAndSet(aVar, obj, obj2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/c/a/a$f.class */
    public static final class f<V> implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final a<V> f1287a;

        /* renamed from: b  reason: collision with root package name */
        final com.google.common.util.concurrent.a<? extends V> f1288b;

        f(a<V> aVar, com.google.common.util.concurrent.a<? extends V> aVar2) {
            this.f1287a = aVar;
            this.f1288b = aVar2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f1287a.f1271c == this) {
                if (a.f1270b.a((a<?>) this.f1287a, (Object) this, a.a((com.google.common.util.concurrent.a<?>) this.f1288b))) {
                    a.a((a<?>) this.f1287a);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/c/a/a$g.class */
    static final class g extends AbstractC0030a {
        g() {
            super();
        }

        @Override // androidx.c.a.a.AbstractC0030a
        final void a(h hVar, h hVar2) {
            hVar.f1291c = hVar2;
        }

        @Override // androidx.c.a.a.AbstractC0030a
        final void a(h hVar, Thread thread) {
            hVar.f1290b = thread;
        }

        @Override // androidx.c.a.a.AbstractC0030a
        final boolean a(a<?> aVar, d dVar, d dVar2) {
            synchronized (aVar) {
                if (aVar.f1272d != dVar) {
                    return false;
                }
                aVar.f1272d = dVar2;
                return true;
            }
        }

        @Override // androidx.c.a.a.AbstractC0030a
        final boolean a(a<?> aVar, h hVar, h hVar2) {
            synchronized (aVar) {
                if (aVar.e != hVar) {
                    return false;
                }
                aVar.e = hVar2;
                return true;
            }
        }

        @Override // androidx.c.a.a.AbstractC0030a
        final boolean a(a<?> aVar, Object obj, Object obj2) {
            synchronized (aVar) {
                if (aVar.f1271c != obj) {
                    return false;
                }
                aVar.f1271c = obj2;
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/c/a/a$h.class */
    public static final class h {

        /* renamed from: a  reason: collision with root package name */
        static final h f1289a = new h(false);

        /* renamed from: b  reason: collision with root package name */
        volatile Thread f1290b;

        /* renamed from: c  reason: collision with root package name */
        volatile h f1291c;

        h() {
            a.f1270b.a(this, Thread.currentThread());
        }

        h(boolean z) {
        }

        final void a() {
            Thread thread = this.f1290b;
            if (thread != null) {
                this.f1290b = null;
                LockSupport.unpark(thread);
            }
        }

        final void a(h hVar) {
            a.f1270b.a(this, hVar);
        }
    }

    static {
        Throwable th;
        AbstractC0030a aVar;
        try {
            aVar = new e(AtomicReferenceFieldUpdater.newUpdater(h.class, Thread.class, com.google.api.client.googleapis.notifications.b.f31754a), AtomicReferenceFieldUpdater.newUpdater(h.class, h.class, Constants.URL_CAMPAIGN), AtomicReferenceFieldUpdater.newUpdater(a.class, h.class, "e"), AtomicReferenceFieldUpdater.newUpdater(a.class, d.class, "d"), AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, Constants.URL_CAMPAIGN));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            aVar = new g();
        }
        f1270b = aVar;
        if (th != null) {
            f.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        g = new Object();
    }

    private d a(d dVar) {
        do {
            dVar = this.f1272d;
        } while (!f1270b.a((a<?>) this, dVar, d.f1279a));
        while (dVar != null) {
            dVar = dVar.f1282d;
            dVar.f1282d = dVar;
        }
        return dVar;
    }

    static Object a(com.google.common.util.concurrent.a<?> aVar) {
        if (aVar instanceof a) {
            Object obj = ((a) aVar).f1271c;
            Object obj2 = obj;
            if (obj instanceof b) {
                b bVar = (b) obj;
                obj2 = obj;
                if (bVar.f1275c) {
                    obj2 = bVar.f1276d != null ? new b(false, bVar.f1276d) : b.f1274b;
                }
            }
            return obj2;
        }
        boolean isCancelled = aVar.isCancelled();
        if ((!f1269a) && isCancelled) {
            return b.f1274b;
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
        } while (!f1270b.a((a<?>) this, hVar, h.f1289a));
        while (hVar != null) {
            hVar.a();
            hVar = hVar.f1291c;
        }
    }

    private void a(h hVar) {
        hVar.f1290b = null;
        while (true) {
            h hVar2 = this.e;
            if (hVar2 != h.f1289a) {
                hVar2 = null;
                while (hVar2 != null) {
                    h hVar3 = hVar2.f1291c;
                    if (hVar2.f1290b == null) {
                        if (hVar2 != null) {
                            hVar2.f1291c = hVar3;
                            hVar2 = hVar2;
                            if (hVar2.f1290b == null) {
                                break;
                            }
                        } else if (f1270b.a((a<?>) this, hVar2, hVar3)) {
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
    /* JADX WARN: Type inference failed for: r0v26, types: [androidx.c.a.a$a] */
    static void a(a<?> aVar) {
        d dVar = null;
        a aVar2 = aVar;
        while (true) {
            aVar2.a();
            d a2 = aVar2.a(dVar);
            while (a2 != null) {
                d dVar2 = a2.f1282d;
                Runnable runnable = a2.f1280b;
                if (runnable instanceof f) {
                    f fVar = (f) runnable;
                    a aVar3 = (a<V>) fVar.f1287a;
                    if (aVar3.f1271c == fVar) {
                        dVar = dVar2;
                        aVar2 = aVar3;
                        if (!f1270b.a(aVar3, fVar, a((com.google.common.util.concurrent.a<?>) fVar.f1288b))) {
                        }
                    } else {
                        continue;
                    }
                } else {
                    b(runnable, a2.f1281c);
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
            throw a("Task was cancelled.", ((b) obj).f1276d);
        } else if (!(obj instanceof c)) {
            V v = (V) obj;
            if (obj == g) {
                v = null;
            }
            return v;
        } else {
            throw new ExecutionException(((c) obj).f1278b);
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
        d dVar2 = this.f1272d;
        if (dVar2 != d.f1279a) {
            d dVar3 = new d(runnable, executor);
            do {
                dVar3.f1282d = dVar2;
                if (!f1270b.a((a<?>) this, dVar2, dVar3)) {
                    dVar = this.f1272d;
                    dVar2 = dVar;
                } else {
                    return;
                }
            } while (dVar != d.f1279a);
            b(runnable, executor);
        }
        b(runnable, executor);
    }

    public boolean a(V v) {
        Object obj = v;
        if (v == null) {
            obj = g;
        }
        if (!f1270b.a((a<?>) this, (Object) null, obj)) {
            return false;
        }
        a((a<?>) this);
        return true;
    }

    public boolean a(Throwable th) {
        if (!f1270b.a((a<?>) this, (Object) null, (Object) new c((Throwable) b(th)))) {
            return false;
        }
        a((a<?>) this);
        return true;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean z2;
        Object obj = this.f1271c;
        if ((obj == null) || (obj instanceof f)) {
            b bVar = f1269a ? new b(z, new CancellationException("Future.cancel() was called.")) : z ? b.f1273a : b.f1274b;
            z2 = false;
            a<V> aVar = this;
            while (true) {
                if (f1270b.a((a<?>) aVar, obj, (Object) bVar)) {
                    a((a<?>) aVar);
                    z2 = true;
                    if (!(obj instanceof f)) {
                        break;
                    }
                    com.google.common.util.concurrent.a<? extends V> aVar2 = ((f) obj).f1288b;
                    if (!(aVar2 instanceof a)) {
                        aVar2.cancel(z);
                        z2 = true;
                        break;
                    }
                    aVar = (a) aVar2;
                    obj = aVar.f1271c;
                    z2 = true;
                    if (!(obj == null) && !(obj instanceof f)) {
                        break;
                    }
                    z2 = true;
                } else {
                    Object obj2 = aVar.f1271c;
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
        r0 = r5.f1271c;
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
        if ((r7 & (!(r0 instanceof androidx.c.a.a.f))) == false) goto L_0x004b;
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
            java.lang.Object r0 = r0.f1271c
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
            boolean r1 = r1 instanceof androidx.c.a.a.f
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0026
            r0 = r6
            java.lang.Object r0 = c(r0)
            return r0
        L_0x0026:
            r0 = r5
            androidx.c.a.a$h r0 = r0.e
            r6 = r0
            r0 = r6
            androidx.c.a.a$h r1 = androidx.c.a.a.h.f1289a
            if (r0 == r1) goto L_0x0093
            androidx.c.a.a$h r0 = new androidx.c.a.a$h
            r1 = r0
            r1.<init>()
            r8 = r0
        L_0x003a:
            r0 = r8
            r1 = r6
            r0.a(r1)
            androidx.c.a.a$a r0 = androidx.c.a.a.f1270b
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
            java.lang.Object r0 = r0.f1271c
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
            boolean r1 = r1 instanceof androidx.c.a.a.f
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
            androidx.c.a.a$h r0 = r0.e
            r9 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            androidx.c.a.a$h r1 = androidx.c.a.a.h.f1289a
            if (r0 != r1) goto L_0x003a
        L_0x0093:
            r0 = r5
            java.lang.Object r0 = r0.f1271c
            java.lang.Object r0 = c(r0)
            return r0
        L_0x009b:
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.c.a.a.get():java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0082, code lost:
        java.util.concurrent.locks.LockSupport.parkNanos(r6, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008b, code lost:
        if (java.lang.Thread.interrupted() != false) goto L_0x00d3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008e, code lost:
        r0 = r6.f1271c;
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
        if ((r13 & (!(r0 instanceof androidx.c.a.a.f))) == false) goto L_0x00b5;
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.c.a.a.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f1271c instanceof b;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.f1271c;
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
                if (this.f1271c instanceof f) {
                    str = "setFuture=[" + d(((f) obj).f1288b) + "]";
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
