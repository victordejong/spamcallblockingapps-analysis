package com.google.android.gms.internal.ads;

import com.appsflyer.share.Constants;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
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
import kotlinx.serialization.json.internal.JsonReaderKt;
import sun.misc.Unsafe;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dag.class */
public class dag<V> extends dcl implements dbt<V> {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f26640a;

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f26641b;

    /* renamed from: c  reason: collision with root package name */
    private static final b f26642c;

    /* renamed from: d  reason: collision with root package name */
    private static final Object f26643d;
    private volatile Object e;
    private volatile e f;
    private volatile k g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dag$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final a f26644a;

        /* renamed from: b  reason: collision with root package name */
        static final a f26645b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f26646c;

        /* renamed from: d  reason: collision with root package name */
        final Throwable f26647d;

        static {
            if (dag.f26640a) {
                f26645b = null;
                f26644a = null;
                return;
            }
            f26645b = new a(false, null);
            f26644a = new a(true, null);
        }

        a(boolean z, Throwable th) {
            this.f26646c = z;
            this.f26647d = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dag$b.class */
    public static abstract class b {
        private b() {
        }

        abstract void a(k kVar, k kVar2);

        abstract void a(k kVar, Thread thread);

        abstract boolean a(dag<?> dagVar, e eVar, e eVar2);

        abstract boolean a(dag<?> dagVar, k kVar, k kVar2);

        abstract boolean a(dag<?> dagVar, Object obj, Object obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dag$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final c f26648a = new c(new Throwable("Failure occurred while trying to finish a future.") { // from class: com.google.android.gms.internal.ads.dag.c.1
            @Override // java.lang.Throwable
            public final Throwable fillInStackTrace() {
                synchronized (this) {
                }
                return this;
            }
        });

        /* renamed from: b  reason: collision with root package name */
        final Throwable f26649b;

        c(Throwable th) {
            this.f26649b = (Throwable) cyg.a(th);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dag$d.class */
    static final class d extends b {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<k, Thread> f26650a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<k, k> f26651b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<dag, k> f26652c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<dag, e> f26653d;
        final AtomicReferenceFieldUpdater<dag, Object> e;

        d(AtomicReferenceFieldUpdater<k, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<k, k> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<dag, k> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<dag, e> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<dag, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f26650a = atomicReferenceFieldUpdater;
            this.f26651b = atomicReferenceFieldUpdater2;
            this.f26652c = atomicReferenceFieldUpdater3;
            this.f26653d = atomicReferenceFieldUpdater4;
            this.e = atomicReferenceFieldUpdater5;
        }

        @Override // com.google.android.gms.internal.ads.dag.b
        final void a(k kVar, k kVar2) {
            this.f26651b.lazySet(kVar, kVar2);
        }

        @Override // com.google.android.gms.internal.ads.dag.b
        final void a(k kVar, Thread thread) {
            this.f26650a.lazySet(kVar, thread);
        }

        @Override // com.google.android.gms.internal.ads.dag.b
        final boolean a(dag<?> dagVar, e eVar, e eVar2) {
            return this.f26653d.compareAndSet(dagVar, eVar, eVar2);
        }

        @Override // com.google.android.gms.internal.ads.dag.b
        final boolean a(dag<?> dagVar, k kVar, k kVar2) {
            return this.f26652c.compareAndSet(dagVar, kVar, kVar2);
        }

        @Override // com.google.android.gms.internal.ads.dag.b
        final boolean a(dag<?> dagVar, Object obj, Object obj2) {
            return this.e.compareAndSet(dagVar, obj, obj2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dag$e.class */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        static final e f26654a = new e(null, null);

        /* renamed from: b  reason: collision with root package name */
        final Runnable f26655b;

        /* renamed from: c  reason: collision with root package name */
        final Executor f26656c;

        /* renamed from: d  reason: collision with root package name */
        e f26657d;

        e(Runnable runnable, Executor executor) {
            this.f26655b = runnable;
            this.f26656c = executor;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dag$f.class */
    static final class f extends b {
        private f() {
            super();
        }

        @Override // com.google.android.gms.internal.ads.dag.b
        final void a(k kVar, k kVar2) {
            kVar.f26666c = kVar2;
        }

        @Override // com.google.android.gms.internal.ads.dag.b
        final void a(k kVar, Thread thread) {
            kVar.f26665b = thread;
        }

        @Override // com.google.android.gms.internal.ads.dag.b
        final boolean a(dag<?> dagVar, e eVar, e eVar2) {
            synchronized (dagVar) {
                if (((dag) dagVar).f != eVar) {
                    return false;
                }
                ((dag) dagVar).f = eVar2;
                return true;
            }
        }

        @Override // com.google.android.gms.internal.ads.dag.b
        final boolean a(dag<?> dagVar, k kVar, k kVar2) {
            synchronized (dagVar) {
                if (((dag) dagVar).g != kVar) {
                    return false;
                }
                ((dag) dagVar).g = kVar2;
                return true;
            }
        }

        @Override // com.google.android.gms.internal.ads.dag.b
        final boolean a(dag<?> dagVar, Object obj, Object obj2) {
            synchronized (dagVar) {
                if (((dag) dagVar).e != obj) {
                    return false;
                }
                ((dag) dagVar).e = obj2;
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dag$g.class */
    public static final class g<V> implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final dag<V> f26658a;

        /* renamed from: b  reason: collision with root package name */
        final dbt<? extends V> f26659b;

        g(dag<V> dagVar, dbt<? extends V> dbtVar) {
            this.f26658a = dagVar;
            this.f26659b = dbtVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (((dag) this.f26658a).e == this) {
                if (dag.f26642c.a((dag<?>) this.f26658a, (Object) this, dag.c(this.f26659b))) {
                    dag.e(this.f26658a);
                }
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dag$h.class */
    static class h<V> extends dag<V> implements i<V> {
        @Override // com.google.android.gms.internal.ads.dag, java.util.concurrent.Future
        public final V get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
            return (V) dag.super.get(j, timeUnit);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dag$i.class */
    public interface i<V> extends dbt<V> {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dag$j.class */
    static final class j extends b {

        /* renamed from: a  reason: collision with root package name */
        static final Unsafe f26660a;

        /* renamed from: b  reason: collision with root package name */
        static final long f26661b;

        /* renamed from: c  reason: collision with root package name */
        static final long f26662c;

        /* renamed from: d  reason: collision with root package name */
        static final long f26663d;
        static final long e;
        static final long f;

        static {
            Unsafe unsafe;
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (SecurityException e2) {
                try {
                    unsafe = (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction<Unsafe>() { // from class: com.google.android.gms.internal.ads.dag.j.1
                        @Override // java.security.PrivilegedExceptionAction
                        public final /* synthetic */ Unsafe run() throws Exception {
                            Field[] declaredFields;
                            for (Field field : Unsafe.class.getDeclaredFields()) {
                                field.setAccessible(true);
                                Object obj = field.get(null);
                                if (Unsafe.class.isInstance(obj)) {
                                    return (Unsafe) Unsafe.class.cast(obj);
                                }
                            }
                            throw new NoSuchFieldError("the Unsafe");
                        }
                    });
                } catch (PrivilegedActionException e3) {
                    throw new RuntimeException("Could not initialize intrinsics", e3.getCause());
                }
            }
            try {
                f26662c = unsafe.objectFieldOffset(dag.class.getDeclaredField("waiters"));
                f26661b = unsafe.objectFieldOffset(dag.class.getDeclaredField("listeners"));
                f26663d = unsafe.objectFieldOffset(dag.class.getDeclaredField("value"));
                e = unsafe.objectFieldOffset(k.class.getDeclaredField(com.google.api.client.googleapis.notifications.b.f31754a));
                f = unsafe.objectFieldOffset(k.class.getDeclaredField(Constants.URL_CAMPAIGN));
                f26660a = unsafe;
            } catch (Exception e4) {
                cyq.a(e4);
                throw new RuntimeException(e4);
            }
        }

        private j() {
            super();
        }

        @Override // com.google.android.gms.internal.ads.dag.b
        final void a(k kVar, k kVar2) {
            f26660a.putObject(kVar, f, kVar2);
        }

        @Override // com.google.android.gms.internal.ads.dag.b
        final void a(k kVar, Thread thread) {
            f26660a.putObject(kVar, e, thread);
        }

        @Override // com.google.android.gms.internal.ads.dag.b
        final boolean a(dag<?> dagVar, e eVar, e eVar2) {
            return f26660a.compareAndSwapObject(dagVar, f26661b, eVar, eVar2);
        }

        @Override // com.google.android.gms.internal.ads.dag.b
        final boolean a(dag<?> dagVar, k kVar, k kVar2) {
            return f26660a.compareAndSwapObject(dagVar, f26662c, kVar, kVar2);
        }

        @Override // com.google.android.gms.internal.ads.dag.b
        final boolean a(dag<?> dagVar, Object obj, Object obj2) {
            return f26660a.compareAndSwapObject(dagVar, f26663d, obj, obj2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dag$k.class */
    public static final class k {

        /* renamed from: a  reason: collision with root package name */
        static final k f26664a = new k(false);

        /* renamed from: b  reason: collision with root package name */
        volatile Thread f26665b;

        /* renamed from: c  reason: collision with root package name */
        volatile k f26666c;

        k() {
            dag.f26642c.a(this, Thread.currentThread());
        }

        private k(boolean z) {
        }

        final void a(k kVar) {
            dag.f26642c.a(this, kVar);
        }
    }

    static {
        boolean z;
        Throwable th;
        Throwable th2;
        b bVar;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException e2) {
            z = false;
        }
        f26640a = z;
        f26641b = Logger.getLogger(dag.class.getName());
        try {
            bVar = new j();
            th2 = null;
            th = null;
        } catch (Throwable th3) {
            try {
                bVar = new d(AtomicReferenceFieldUpdater.newUpdater(k.class, Thread.class, com.google.api.client.googleapis.notifications.b.f31754a), AtomicReferenceFieldUpdater.newUpdater(k.class, k.class, Constants.URL_CAMPAIGN), AtomicReferenceFieldUpdater.newUpdater(dag.class, k.class, "g"), AtomicReferenceFieldUpdater.newUpdater(dag.class, e.class, "f"), AtomicReferenceFieldUpdater.newUpdater(dag.class, Object.class, "e"));
                th2 = th3;
                th = null;
            } catch (Throwable th4) {
                th = th4;
                bVar = new f();
                th2 = th3;
            }
        }
        f26642c = bVar;
        if (th != null) {
            Logger logger = f26641b;
            logger.logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            logger.logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
        f26643d = new Object();
    }

    private static V a(Object obj) throws ExecutionException {
        if (obj instanceof a) {
            Throwable th = ((a) obj).f26647d;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        } else if (!(obj instanceof c)) {
            V v = (V) obj;
            if (obj == f26643d) {
                v = null;
            }
            return v;
        } else {
            throw new ExecutionException(((c) obj).f26649b);
        }
    }

    private final void a(k kVar) {
        kVar.f26665b = null;
        while (true) {
            k kVar2 = this.g;
            if (kVar2 != k.f26664a) {
                kVar2 = null;
                while (kVar2 != null) {
                    k kVar3 = kVar2.f26666c;
                    if (kVar2.f26665b == null) {
                        if (kVar2 != null) {
                            kVar2.f26666c = kVar3;
                            kVar2 = kVar2;
                            if (kVar2.f26665b == null) {
                                break;
                            }
                        } else if (f26642c.a((dag<?>) this, kVar2, kVar3)) {
                            kVar2 = kVar2;
                        }
                    }
                    kVar2 = kVar3;
                }
                return;
            }
            return;
        }
    }

    private static void a(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            Logger logger = f26641b;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 57 + String.valueOf(valueOf2).length());
            sb.append("RuntimeException while executing runnable ");
            sb.append(valueOf);
            sb.append(" with executor ");
            sb.append(valueOf2);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "executeListener", sb.toString(), (Throwable) e2);
        }
    }

    private final void a(StringBuilder sb) {
        try {
            Object b2 = b((Future<Object>) this);
            sb.append("SUCCESS, result=[");
            if (b2 == null) {
                sb.append(JsonReaderKt.NULL);
            } else if (b2 == this) {
                sb.append("this future");
            } else {
                sb.append(b2.getClass().getName());
                sb.append("@");
                sb.append(Integer.toHexString(System.identityHashCode(b2)));
            }
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

    private static <V> V b(Future<V> future) throws ExecutionException {
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

    /* JADX INFO: Access modifiers changed from: private */
    public static Object c(dbt<?> dbtVar) {
        Throwable a2;
        if (dbtVar instanceof i) {
            Object obj = ((dag) dbtVar).e;
            Object obj2 = obj;
            if (obj instanceof a) {
                a aVar = (a) obj;
                obj2 = obj;
                if (aVar.f26646c) {
                    obj2 = aVar.f26647d != null ? new a(false, aVar.f26647d) : a.f26645b;
                }
            }
            return obj2;
        } else if ((dbtVar instanceof dcl) && (a2 = dck.a((dcl) dbtVar)) != null) {
            return new c(a2);
        } else {
            boolean isCancelled = dbtVar.isCancelled();
            if ((!f26640a) && isCancelled) {
                return a.f26645b;
            }
            try {
                Object b2 = b((Future<Object>) dbtVar);
                if (!isCancelled) {
                    return b2 == null ? f26643d : b2;
                }
                String valueOf = String.valueOf(dbtVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 84);
                sb.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
                sb.append(valueOf);
                return new a(false, new IllegalArgumentException(sb.toString()));
            } catch (CancellationException e2) {
                if (isCancelled) {
                    return new a(false, e2);
                }
                String valueOf2 = String.valueOf(dbtVar);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 77);
                sb2.append("get() threw CancellationException, despite reporting isCancelled() == false: ");
                sb2.append(valueOf2);
                return new c(new IllegalArgumentException(sb2.toString(), e2));
            } catch (ExecutionException e3) {
                if (!isCancelled) {
                    return new c(e3.getCause());
                }
                String valueOf3 = String.valueOf(dbtVar);
                StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf3).length() + 84);
                sb3.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
                sb3.append(valueOf3);
                return new a(false, new IllegalArgumentException(sb3.toString(), e3));
            } catch (Throwable th) {
                return new c(th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v37, types: [com.google.android.gms.internal.ads.dag$b] */
    public static void e(dag<?> dagVar) {
        e eVar;
        e eVar2;
        e eVar3 = null;
        dag dagVar2 = dagVar;
        while (true) {
            k kVar = dagVar2.g;
            if (f26642c.a((dag<?>) dagVar2, kVar, k.f26664a)) {
                while (kVar != null) {
                    Thread thread = kVar.f26665b;
                    if (thread != null) {
                        kVar.f26665b = null;
                        LockSupport.unpark(thread);
                    }
                    kVar = kVar.f26666c;
                }
                dagVar2.b();
                do {
                    eVar = dagVar2.f;
                } while (!f26642c.a((dag<?>) dagVar2, eVar, e.f26654a));
                e eVar4 = eVar;
                while (true) {
                    eVar2 = eVar3;
                    if (eVar4 != null) {
                        eVar4 = eVar4.f26657d;
                        eVar4.f26657d = eVar3;
                        eVar3 = eVar4;
                    }
                }
                while (eVar2 != null) {
                    e eVar5 = eVar2.f26657d;
                    Runnable runnable = eVar2.f26655b;
                    if (runnable instanceof g) {
                        g gVar = (g) runnable;
                        dag dagVar3 = (dag<V>) gVar.f26658a;
                        if (dagVar3.e == gVar) {
                            eVar3 = eVar5;
                            dagVar2 = dagVar3;
                            if (!f26642c.a(dagVar3, gVar, c(gVar.f26659b))) {
                            }
                        } else {
                            continue;
                        }
                    } else {
                        a(runnable, eVar2.f26656c);
                    }
                    eVar2 = eVar5;
                }
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        long delay = ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS);
        StringBuilder sb = new StringBuilder(41);
        sb.append("remaining delay=[");
        sb.append(delay);
        sb.append(" ms]");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(d());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean a(dbt<? extends V> dbtVar) {
        c cVar;
        cyg.a(dbtVar);
        Object obj = this.e;
        Object obj2 = obj;
        if (obj == null) {
            if (dbtVar.isDone()) {
                if (!f26642c.a((dag<?>) this, (Object) null, c(dbtVar))) {
                    return false;
                }
                e(this);
                return true;
            }
            g gVar = new g(this, dbtVar);
            if (f26642c.a((dag<?>) this, (Object) null, (Object) gVar)) {
                try {
                    dbtVar.addListener(gVar, dba.INSTANCE);
                    return true;
                } catch (Throwable th) {
                    try {
                        cVar = new c(th);
                    } catch (Throwable th2) {
                        cVar = c.f26648a;
                    }
                    f26642c.a((dag<?>) this, (Object) gVar, (Object) cVar);
                    return true;
                }
            } else {
                obj2 = this.e;
            }
        }
        if (!(obj2 instanceof a)) {
            return false;
        }
        dbtVar.cancel(((a) obj2).f26646c);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(Throwable th) {
        if (!f26642c.a((dag<?>) this, (Object) null, (Object) new c((Throwable) cyg.a(th)))) {
            return false;
        }
        e(this);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dbt
    public void addListener(Runnable runnable, Executor executor) {
        e eVar;
        cyg.a(runnable, "Runnable was null.");
        cyg.a(executor, "Executor was null.");
        if (!isDone()) {
            e eVar2 = this.f;
            if (eVar2 != e.f26654a) {
                e eVar3 = new e(runnable, executor);
                do {
                    eVar3.f26657d = eVar2;
                    if (!f26642c.a((dag<?>) this, eVar2, eVar3)) {
                        eVar = this.f;
                        eVar2 = eVar;
                    } else {
                        return;
                    }
                } while (eVar != e.f26654a);
            }
        }
        a(runnable, executor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean b(V v) {
        Object obj = v;
        if (v == null) {
            obj = f26643d;
        }
        if (!f26642c.a((dag<?>) this, (Object) null, obj)) {
            return false;
        }
        e(this);
        return true;
    }

    protected void c() {
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        boolean z2;
        Object obj = this.e;
        if ((obj == null) || (obj instanceof g)) {
            a aVar = f26640a ? new a(z, new CancellationException("Future.cancel() was called.")) : z ? a.f26644a : a.f26645b;
            z2 = false;
            dag<V> dagVar = this;
            while (true) {
                if (f26642c.a((dag<?>) dagVar, obj, (Object) aVar)) {
                    if (z) {
                        dagVar.c();
                    }
                    e(dagVar);
                    z2 = true;
                    if (!(obj instanceof g)) {
                        break;
                    }
                    dbt<? extends V> dbtVar = ((g) obj).f26659b;
                    if (!(dbtVar instanceof i)) {
                        dbtVar.cancel(z);
                        z2 = true;
                        break;
                    }
                    dagVar = (dag) dbtVar;
                    obj = dagVar.e;
                    z2 = true;
                    if (!(obj == null) && !(obj instanceof g)) {
                        break;
                    }
                    z2 = true;
                } else {
                    Object obj2 = dagVar.e;
                    obj = obj2;
                    if (!(obj2 instanceof g)) {
                        break;
                    }
                }
            }
        } else {
            z2 = false;
        }
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean d() {
        Object obj = this.e;
        return (obj instanceof a) && ((a) obj).f26646c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dcl
    public final Throwable e() {
        if (!(this instanceof i)) {
            return null;
        }
        Object obj = this.e;
        if (obj instanceof c) {
            return ((c) obj).f26649b;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004b, code lost:
        java.util.concurrent.locks.LockSupport.park(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0052, code lost:
        if (java.lang.Thread.interrupted() != false) goto L_0x0075;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0055, code lost:
        r0 = r5.e;
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
        if ((r7 & (!(r0 instanceof com.google.android.gms.internal.ads.dag.g))) == false) goto L_0x004b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0074, code lost:
        return (V) a(r0);
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
    public V get() throws java.lang.InterruptedException, java.util.concurrent.ExecutionException {
        /*
            r5 = this;
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto L_0x009b
            r0 = r5
            java.lang.Object r0 = r0.e
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
            boolean r1 = r1 instanceof com.google.android.gms.internal.ads.dag.g
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0026
            r0 = r6
            java.lang.Object r0 = a(r0)
            return r0
        L_0x0026:
            r0 = r5
            com.google.android.gms.internal.ads.dag$k r0 = r0.g
            r6 = r0
            r0 = r6
            com.google.android.gms.internal.ads.dag$k r1 = com.google.android.gms.internal.ads.dag.k.f26664a
            if (r0 == r1) goto L_0x0093
            com.google.android.gms.internal.ads.dag$k r0 = new com.google.android.gms.internal.ads.dag$k
            r1 = r0
            r1.<init>()
            r8 = r0
        L_0x003a:
            r0 = r8
            r1 = r6
            r0.a(r1)
            com.google.android.gms.internal.ads.dag$b r0 = com.google.android.gms.internal.ads.dag.f26642c
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
            java.lang.Object r0 = r0.e
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
            boolean r1 = r1 instanceof com.google.android.gms.internal.ads.dag.g
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x004b
            r0 = r6
            java.lang.Object r0 = a(r0)
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
            com.google.android.gms.internal.ads.dag$k r0 = r0.g
            r9 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            com.google.android.gms.internal.ads.dag$k r1 = com.google.android.gms.internal.ads.dag.k.f26664a
            if (r0 != r1) goto L_0x003a
        L_0x0093:
            r0 = r5
            java.lang.Object r0 = r0.e
            java.lang.Object r0 = a(r0)
            return r0
        L_0x009b:
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dag.get():java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0082, code lost:
        java.util.concurrent.locks.LockSupport.parkNanos(r6, java.lang.Math.min((long) r10, 2147483647999999999L));
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0091, code lost:
        if (java.lang.Thread.interrupted() != false) goto L_0x00d9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0094, code lost:
        r0 = r6.e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x009c, code lost:
        if (r0 == null) goto L_0x00a5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009f, code lost:
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a5, code lost:
        r13 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b2, code lost:
        if ((r13 & (!(r0 instanceof com.google.android.gms.internal.ads.dag.g))) == false) goto L_0x00bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ba, code lost:
        return (V) a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00bb, code lost:
        r16 = r14 - java.lang.System.nanoTime();
        r10 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00cd, code lost:
        if (r16 >= 1000) goto L_0x0082;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d0, code lost:
        a(r0);
        r16 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d9, code lost:
        a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e6, code lost:
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
    public V get(long r7, java.util.concurrent.TimeUnit r9) throws java.lang.InterruptedException, java.util.concurrent.TimeoutException, java.util.concurrent.ExecutionException {
        /*
            Method dump skipped, instructions count: 781
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dag.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.e instanceof a;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        Object obj = this.e;
        return (!(obj instanceof g)) & (obj != null);
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            a(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            Object obj = this.e;
            if (obj instanceof g) {
                sb.append(", setFuture=[");
                dbt<? extends V> dbtVar = ((g) obj).f26659b;
                try {
                    if (dbtVar == this) {
                        sb.append("this future");
                    } else {
                        sb.append(dbtVar);
                    }
                } catch (RuntimeException | StackOverflowError e2) {
                    sb.append("Exception thrown from implementation: ");
                    sb.append(e2.getClass());
                }
                sb.append("]");
            } else {
                try {
                    str = cyc.c(a());
                } catch (RuntimeException | StackOverflowError e3) {
                    String valueOf = String.valueOf(e3.getClass());
                    StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 38);
                    sb2.append("Exception thrown from implementation: ");
                    sb2.append(valueOf);
                    str = sb2.toString();
                }
                if (str != null) {
                    sb.append(", info=[");
                    sb.append(str);
                    sb.append("]");
                }
            }
            if (isDone()) {
                sb.delete(length, sb.length());
                a(sb);
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
