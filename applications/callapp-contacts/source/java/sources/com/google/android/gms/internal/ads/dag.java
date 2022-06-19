package com.google.android.gms.internal.ads;

import com.appsflyer.share.Constants;
import com.google.api.client.googleapis.notifications.C15291b;
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

    /* renamed from: a */
    private static final boolean f46853a;

    /* renamed from: b */
    private static final Logger f46854b;

    /* renamed from: c */
    private static final AbstractC12301b f46855c;

    /* renamed from: d */
    private static final Object f46856d;

    /* renamed from: e */
    private volatile Object f46857e;

    /* renamed from: f */
    private volatile C12305e f46858f;

    /* renamed from: g */
    private volatile C12312k f46859g;

    /* renamed from: com.google.android.gms.internal.ads.dag$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dag$a.class */
    public static final class C12300a {

        /* renamed from: a */
        static final C12300a f46860a;

        /* renamed from: b */
        static final C12300a f46861b;

        /* renamed from: c */
        final boolean f46862c;

        /* renamed from: d */
        final Throwable f46863d;

        static {
            if (dag.f46853a) {
                f46861b = null;
                f46860a = null;
                return;
            }
            f46861b = new C12300a(false, null);
            f46860a = new C12300a(true, null);
        }

        C12300a(boolean z, Throwable th) {
            this.f46862c = z;
            this.f46863d = th;
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.dag$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dag$b.class */
    public static abstract class AbstractC12301b {
        private AbstractC12301b() {
        }

        /* renamed from: a */
        abstract void mo16948a(C12312k c12312k, C12312k c12312k2);

        /* renamed from: a */
        abstract void mo16947a(C12312k c12312k, Thread thread);

        /* renamed from: a */
        abstract boolean mo16946a(dag<?> dagVar, C12305e c12305e, C12305e c12305e2);

        /* renamed from: a */
        abstract boolean mo16945a(dag<?> dagVar, C12312k c12312k, C12312k c12312k2);

        /* renamed from: a */
        abstract boolean mo16944a(dag<?> dagVar, Object obj, Object obj2);
    }

    /* renamed from: com.google.android.gms.internal.ads.dag$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dag$c.class */
    public static final class C12302c {

        /* renamed from: a */
        static final C12302c f46864a = new C12302c(new Throwable("Failure occurred while trying to finish a future.") { // from class: com.google.android.gms.internal.ads.dag.c.1
            @Override // java.lang.Throwable
            public final Throwable fillInStackTrace() {
                synchronized (this) {
                }
                return this;
            }
        });

        /* renamed from: b */
        final Throwable f46865b;

        C12302c(Throwable th) {
            this.f46865b = (Throwable) cyg.m17060a(th);
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.dag$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dag$d.class */
    static final class C12304d extends AbstractC12301b {

        /* renamed from: a */
        final AtomicReferenceFieldUpdater<C12312k, Thread> f46866a;

        /* renamed from: b */
        final AtomicReferenceFieldUpdater<C12312k, C12312k> f46867b;

        /* renamed from: c */
        final AtomicReferenceFieldUpdater<dag, C12312k> f46868c;

        /* renamed from: d */
        final AtomicReferenceFieldUpdater<dag, C12305e> f46869d;

        /* renamed from: e */
        final AtomicReferenceFieldUpdater<dag, Object> f46870e;

        C12304d(AtomicReferenceFieldUpdater<C12312k, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<C12312k, C12312k> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<dag, C12312k> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<dag, C12305e> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<dag, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f46866a = atomicReferenceFieldUpdater;
            this.f46867b = atomicReferenceFieldUpdater2;
            this.f46868c = atomicReferenceFieldUpdater3;
            this.f46869d = atomicReferenceFieldUpdater4;
            this.f46870e = atomicReferenceFieldUpdater5;
        }

        @Override // com.google.android.gms.internal.ads.dag.AbstractC12301b
        /* renamed from: a */
        final void mo16948a(C12312k c12312k, C12312k c12312k2) {
            this.f46867b.lazySet(c12312k, c12312k2);
        }

        @Override // com.google.android.gms.internal.ads.dag.AbstractC12301b
        /* renamed from: a */
        final void mo16947a(C12312k c12312k, Thread thread) {
            this.f46866a.lazySet(c12312k, thread);
        }

        @Override // com.google.android.gms.internal.ads.dag.AbstractC12301b
        /* renamed from: a */
        final boolean mo16946a(dag<?> dagVar, C12305e c12305e, C12305e c12305e2) {
            return this.f46869d.compareAndSet(dagVar, c12305e, c12305e2);
        }

        @Override // com.google.android.gms.internal.ads.dag.AbstractC12301b
        /* renamed from: a */
        final boolean mo16945a(dag<?> dagVar, C12312k c12312k, C12312k c12312k2) {
            return this.f46868c.compareAndSet(dagVar, c12312k, c12312k2);
        }

        @Override // com.google.android.gms.internal.ads.dag.AbstractC12301b
        /* renamed from: a */
        final boolean mo16944a(dag<?> dagVar, Object obj, Object obj2) {
            return this.f46870e.compareAndSet(dagVar, obj, obj2);
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.dag$e */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dag$e.class */
    public static final class C12305e {

        /* renamed from: a */
        static final C12305e f46871a = new C12305e(null, null);

        /* renamed from: b */
        final Runnable f46872b;

        /* renamed from: c */
        final Executor f46873c;

        /* renamed from: d */
        C12305e f46874d;

        C12305e(Runnable runnable, Executor executor) {
            this.f46872b = runnable;
            this.f46873c = executor;
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.dag$f */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dag$f.class */
    static final class C12306f extends AbstractC12301b {
        private C12306f() {
            super();
        }

        @Override // com.google.android.gms.internal.ads.dag.AbstractC12301b
        /* renamed from: a */
        final void mo16948a(C12312k c12312k, C12312k c12312k2) {
            c12312k.f46885c = c12312k2;
        }

        @Override // com.google.android.gms.internal.ads.dag.AbstractC12301b
        /* renamed from: a */
        final void mo16947a(C12312k c12312k, Thread thread) {
            c12312k.f46884b = thread;
        }

        @Override // com.google.android.gms.internal.ads.dag.AbstractC12301b
        /* renamed from: a */
        final boolean mo16946a(dag<?> dagVar, C12305e c12305e, C12305e c12305e2) {
            synchronized (dagVar) {
                if (((dag) dagVar).f46858f == c12305e) {
                    ((dag) dagVar).f46858f = c12305e2;
                    return true;
                }
                return false;
            }
        }

        @Override // com.google.android.gms.internal.ads.dag.AbstractC12301b
        /* renamed from: a */
        final boolean mo16945a(dag<?> dagVar, C12312k c12312k, C12312k c12312k2) {
            synchronized (dagVar) {
                if (((dag) dagVar).f46859g == c12312k) {
                    ((dag) dagVar).f46859g = c12312k2;
                    return true;
                }
                return false;
            }
        }

        @Override // com.google.android.gms.internal.ads.dag.AbstractC12301b
        /* renamed from: a */
        final boolean mo16944a(dag<?> dagVar, Object obj, Object obj2) {
            synchronized (dagVar) {
                if (((dag) dagVar).f46857e == obj) {
                    ((dag) dagVar).f46857e = obj2;
                    return true;
                }
                return false;
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.dag$g */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dag$g.class */
    public static final class RunnableC12307g<V> implements Runnable {

        /* renamed from: a */
        final dag<V> f46875a;

        /* renamed from: b */
        final dbt<? extends V> f46876b;

        RunnableC12307g(dag<V> dagVar, dbt<? extends V> dbtVar) {
            this.f46875a = dagVar;
            this.f46876b = dbtVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (((dag) this.f46875a).f46857e != this) {
                return;
            }
            if (!dag.f46855c.mo16944a((dag<?>) this.f46875a, (Object) this, dag.m16954c(this.f46876b))) {
                return;
            }
            dag.m16951e(this.f46875a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.dag$h */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dag$h.class */
    public static class C12308h<V> extends dag<V> implements AbstractC12309i<V> {
        @Override // com.google.android.gms.internal.ads.dag, java.util.concurrent.Future
        public final V get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
            return (V) dag.super.get(j, timeUnit);
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.dag$i */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dag$i.class */
    public interface AbstractC12309i<V> extends dbt<V> {
    }

    /* renamed from: com.google.android.gms.internal.ads.dag$j */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dag$j.class */
    static final class C12310j extends AbstractC12301b {

        /* renamed from: a */
        static final Unsafe f46877a;

        /* renamed from: b */
        static final long f46878b;

        /* renamed from: c */
        static final long f46879c;

        /* renamed from: d */
        static final long f46880d;

        /* renamed from: e */
        static final long f46881e;

        /* renamed from: f */
        static final long f46882f;

        static {
            Unsafe unsafe;
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (SecurityException e) {
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
                } catch (PrivilegedActionException e2) {
                    throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
                }
            }
            try {
                f46879c = unsafe.objectFieldOffset(dag.class.getDeclaredField("waiters"));
                f46878b = unsafe.objectFieldOffset(dag.class.getDeclaredField("listeners"));
                f46880d = unsafe.objectFieldOffset(dag.class.getDeclaredField("value"));
                f46881e = unsafe.objectFieldOffset(C12312k.class.getDeclaredField(C15291b.f55271a));
                f46882f = unsafe.objectFieldOffset(C12312k.class.getDeclaredField(Constants.URL_CAMPAIGN));
                f46877a = unsafe;
            } catch (Exception e3) {
                cyq.m17045a(e3);
                throw new RuntimeException(e3);
            }
        }

        private C12310j() {
            super();
        }

        @Override // com.google.android.gms.internal.ads.dag.AbstractC12301b
        /* renamed from: a */
        final void mo16948a(C12312k c12312k, C12312k c12312k2) {
            f46877a.putObject(c12312k, f46882f, c12312k2);
        }

        @Override // com.google.android.gms.internal.ads.dag.AbstractC12301b
        /* renamed from: a */
        final void mo16947a(C12312k c12312k, Thread thread) {
            f46877a.putObject(c12312k, f46881e, thread);
        }

        @Override // com.google.android.gms.internal.ads.dag.AbstractC12301b
        /* renamed from: a */
        final boolean mo16946a(dag<?> dagVar, C12305e c12305e, C12305e c12305e2) {
            return f46877a.compareAndSwapObject(dagVar, f46878b, c12305e, c12305e2);
        }

        @Override // com.google.android.gms.internal.ads.dag.AbstractC12301b
        /* renamed from: a */
        final boolean mo16945a(dag<?> dagVar, C12312k c12312k, C12312k c12312k2) {
            return f46877a.compareAndSwapObject(dagVar, f46879c, c12312k, c12312k2);
        }

        @Override // com.google.android.gms.internal.ads.dag.AbstractC12301b
        /* renamed from: a */
        final boolean mo16944a(dag<?> dagVar, Object obj, Object obj2) {
            return f46877a.compareAndSwapObject(dagVar, f46880d, obj, obj2);
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.dag$k */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dag$k.class */
    public static final class C12312k {

        /* renamed from: a */
        static final C12312k f46883a = new C12312k(false);

        /* renamed from: b */
        volatile Thread f46884b;

        /* renamed from: c */
        volatile C12312k f46885c;

        C12312k() {
            dag.f46855c.mo16947a(this, Thread.currentThread());
        }

        private C12312k(boolean z) {
        }

        /* renamed from: a */
        final void m16943a(C12312k c12312k) {
            dag.f46855c.mo16948a(this, c12312k);
        }
    }

    static {
        boolean z;
        Throwable th;
        Throwable th2;
        AbstractC12301b abstractC12301b;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException e) {
            z = false;
        }
        f46853a = z;
        f46854b = Logger.getLogger(dag.class.getName());
        try {
            abstractC12301b = new C12310j();
            th2 = null;
            th = null;
        } catch (Throwable th3) {
            try {
                th2 = th3;
                abstractC12301b = new C12304d(AtomicReferenceFieldUpdater.newUpdater(C12312k.class, Thread.class, C15291b.f55271a), AtomicReferenceFieldUpdater.newUpdater(C12312k.class, C12312k.class, Constants.URL_CAMPAIGN), AtomicReferenceFieldUpdater.newUpdater(dag.class, C12312k.class, "g"), AtomicReferenceFieldUpdater.newUpdater(dag.class, C12305e.class, "f"), AtomicReferenceFieldUpdater.newUpdater(dag.class, Object.class, "e"));
                th = null;
            } catch (Throwable th4) {
                th = th4;
                th2 = th3;
                abstractC12301b = new C12306f();
            }
        }
        f46855c = abstractC12301b;
        if (th != null) {
            Logger logger = f46854b;
            logger.logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            logger.logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
        f46856d = new Object();
    }

    /* renamed from: a */
    private static V m16962a(Object obj) throws ExecutionException {
        if (obj instanceof C12300a) {
            Throwable th = ((C12300a) obj).f46863d;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        } else if (obj instanceof C12302c) {
            throw new ExecutionException(((C12302c) obj).f46865b);
        } else {
            Object obj2 = obj;
            if (obj == f46856d) {
                obj2 = null;
            }
            return (V) obj2;
        }
    }

    /* renamed from: a */
    private final void m16968a(C12312k c12312k) {
        c12312k.f46884b = null;
        while (true) {
            C12312k c12312k2 = this.f46859g;
            if (c12312k2 == C12312k.f46883a) {
                return;
            }
            C12312k c12312k3 = null;
            while (c12312k2 != null) {
                C12312k c12312k4 = c12312k2.f46885c;
                if (c12312k2.f46884b == null) {
                    if (c12312k3 != null) {
                        c12312k3.f46885c = c12312k4;
                        c12312k2 = c12312k3;
                        if (c12312k3.f46884b == null) {
                            break;
                        }
                    } else if (f46855c.mo16945a((dag<?>) this, c12312k2, c12312k4)) {
                        c12312k2 = c12312k3;
                    }
                }
                c12312k3 = c12312k2;
                c12312k2 = c12312k4;
            }
            return;
        }
    }

    /* renamed from: a */
    private static void m16961a(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = f46854b;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 57 + String.valueOf(valueOf2).length());
            sb.append("RuntimeException while executing runnable ");
            sb.append(valueOf);
            sb.append(" with executor ");
            sb.append(valueOf2);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "executeListener", sb.toString(), (Throwable) e);
        }
    }

    /* renamed from: a */
    private final void m16960a(StringBuilder sb) {
        try {
            Object m16956b = m16956b((Future<Object>) this);
            sb.append("SUCCESS, result=[");
            if (m16956b == null) {
                sb.append(JsonReaderKt.NULL);
            } else if (m16956b == this) {
                sb.append("this future");
            } else {
                sb.append(m16956b.getClass().getName());
                sb.append("@");
                sb.append(Integer.toHexString(System.identityHashCode(m16956b)));
            }
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
    private static <V> V m16956b(Future<V> future) throws ExecutionException {
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

    /* renamed from: c */
    public static Object m16954c(dbt<?> dbtVar) {
        Throwable m16870a;
        if (dbtVar instanceof AbstractC12309i) {
            Object obj = ((dag) dbtVar).f46857e;
            C12300a c12300a = obj;
            if (obj instanceof C12300a) {
                C12300a c12300a2 = (C12300a) obj;
                c12300a = obj;
                if (c12300a2.f46862c) {
                    c12300a = c12300a2.f46863d != null ? new C12300a(false, c12300a2.f46863d) : C12300a.f46861b;
                }
            }
            return c12300a;
        } else if ((dbtVar instanceof dcl) && (m16870a = dck.m16870a((dcl) dbtVar)) != null) {
            return new C12302c(m16870a);
        } else {
            boolean isCancelled = dbtVar.isCancelled();
            if ((!f46853a) && isCancelled) {
                return C12300a.f46861b;
            }
            try {
                Object m16956b = m16956b((Future<Object>) dbtVar);
                if (!isCancelled) {
                    return m16956b == null ? f46856d : m16956b;
                }
                String valueOf = String.valueOf(dbtVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 84);
                sb.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
                sb.append(valueOf);
                return new C12300a(false, new IllegalArgumentException(sb.toString()));
            } catch (CancellationException e) {
                if (isCancelled) {
                    return new C12300a(false, e);
                }
                String valueOf2 = String.valueOf(dbtVar);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 77);
                sb2.append("get() threw CancellationException, despite reporting isCancelled() == false: ");
                sb2.append(valueOf2);
                return new C12302c(new IllegalArgumentException(sb2.toString(), e));
            } catch (ExecutionException e2) {
                if (!isCancelled) {
                    return new C12302c(e2.getCause());
                }
                String valueOf3 = String.valueOf(dbtVar);
                StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf3).length() + 84);
                sb3.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
                sb3.append(valueOf3);
                return new C12300a(false, new IllegalArgumentException(sb3.toString(), e2));
            } catch (Throwable th) {
                return new C12302c(th);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v37, types: [com.google.android.gms.internal.ads.dag$b] */
    /* renamed from: e */
    public static void m16951e(dag<?> dagVar) {
        C12305e c12305e;
        C12305e c12305e2;
        dag dagVar2 = dagVar;
        C12305e c12305e3 = null;
        while (true) {
            C12312k c12312k = dagVar2.f46859g;
            if (f46855c.mo16945a((dag<?>) dagVar2, c12312k, C12312k.f46883a)) {
                while (c12312k != null) {
                    Thread thread = c12312k.f46884b;
                    if (thread != null) {
                        c12312k.f46884b = null;
                        LockSupport.unpark(thread);
                    }
                    c12312k = c12312k.f46885c;
                }
                dagVar2.mo16876b();
                do {
                    c12305e = dagVar2.f46858f;
                } while (!f46855c.mo16946a((dag<?>) dagVar2, c12305e, C12305e.f46871a));
                C12305e c12305e4 = c12305e;
                while (true) {
                    C12305e c12305e5 = c12305e4;
                    c12305e2 = c12305e3;
                    if (c12305e5 != null) {
                        c12305e4 = c12305e5.f46874d;
                        c12305e5.f46874d = c12305e3;
                        c12305e3 = c12305e5;
                    }
                }
                while (c12305e2 != null) {
                    C12305e c12305e6 = c12305e2.f46874d;
                    Runnable runnable = c12305e2.f46872b;
                    if (runnable instanceof RunnableC12307g) {
                        RunnableC12307g runnableC12307g = (RunnableC12307g) runnable;
                        dag dagVar3 = (dag<V>) runnableC12307g.f46875a;
                        if (dagVar3.f46857e == runnableC12307g) {
                            c12305e3 = c12305e6;
                            dagVar2 = dagVar3;
                            if (!f46855c.mo16944a(dagVar3, runnableC12307g, m16954c(runnableC12307g.f46876b))) {
                            }
                        } else {
                            continue;
                        }
                    } else {
                        m16961a(runnable, c12305e2.f46873c);
                    }
                    c12305e2 = c12305e6;
                }
                return;
            }
        }
    }

    /* renamed from: a */
    public String mo16879a() {
        if (this instanceof ScheduledFuture) {
            long delay = ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS);
            StringBuilder sb = new StringBuilder(41);
            sb.append("remaining delay=[");
            sb.append(delay);
            sb.append(" ms]");
            return sb.toString();
        }
        return null;
    }

    /* renamed from: a */
    public final void m16959a(Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(m16953d());
        }
    }

    /* renamed from: a */
    public final boolean m16963a(dbt<? extends V> dbtVar) {
        C12302c c12302c;
        cyg.m17060a(dbtVar);
        Object obj = this.f46857e;
        Object obj2 = obj;
        if (obj == null) {
            if (dbtVar.isDone()) {
                if (!f46855c.mo16944a((dag<?>) this, (Object) null, m16954c(dbtVar))) {
                    return false;
                }
                m16951e(this);
                return true;
            }
            RunnableC12307g runnableC12307g = new RunnableC12307g(this, dbtVar);
            if (f46855c.mo16944a((dag<?>) this, (Object) null, (Object) runnableC12307g)) {
                try {
                    dbtVar.addListener(runnableC12307g, dba.INSTANCE);
                    return true;
                } catch (Throwable th) {
                    try {
                        c12302c = new C12302c(th);
                    } catch (Throwable th2) {
                        c12302c = C12302c.f46864a;
                    }
                    f46855c.mo16944a((dag<?>) this, (Object) runnableC12307g, (Object) c12302c);
                    return true;
                }
            }
            obj2 = this.f46857e;
        }
        if (obj2 instanceof C12300a) {
            dbtVar.cancel(((C12300a) obj2).f46862c);
            return false;
        }
        return false;
    }

    /* renamed from: a */
    public boolean mo16882a(Throwable th) {
        if (f46855c.mo16944a((dag<?>) this, (Object) null, (Object) new C12302c((Throwable) cyg.m17060a(th)))) {
            m16951e(this);
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.dbt
    public void addListener(Runnable runnable, Executor executor) {
        C12305e c12305e;
        cyg.m17059a(runnable, "Runnable was null.");
        cyg.m17059a(executor, "Executor was null.");
        if (!isDone()) {
            C12305e c12305e2 = this.f46858f;
            if (c12305e2 != C12305e.f46871a) {
                C12305e c12305e3 = new C12305e(runnable, executor);
                do {
                    c12305e3.f46874d = c12305e2;
                    if (f46855c.mo16946a((dag<?>) this, c12305e2, c12305e3)) {
                        return;
                    }
                    c12305e = this.f46858f;
                    c12305e2 = c12305e;
                } while (c12305e != C12305e.f46871a);
            }
        }
        m16961a(runnable, executor);
    }

    /* renamed from: b */
    public void mo16876b() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public boolean mo16881b(V v) {
        V v2 = v;
        if (v == null) {
            v2 = f46856d;
        }
        if (f46855c.mo16944a((dag<?>) this, (Object) null, (Object) v2)) {
            m16951e(this);
            return true;
        }
        return false;
    }

    /* renamed from: c */
    protected void mo16916c() {
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        boolean z2;
        Object obj = this.f46857e;
        if ((obj == null) || (obj instanceof RunnableC12307g)) {
            C12300a c12300a = f46853a ? new C12300a(z, new CancellationException("Future.cancel() was called.")) : z ? C12300a.f46860a : C12300a.f46861b;
            z2 = false;
            dag<V> dagVar = this;
            while (true) {
                if (f46855c.mo16944a((dag<?>) dagVar, obj, (Object) c12300a)) {
                    if (z) {
                        dagVar.mo16916c();
                    }
                    m16951e(dagVar);
                    z2 = true;
                    if (!(obj instanceof RunnableC12307g)) {
                        break;
                    }
                    dbt<? extends V> dbtVar = ((RunnableC12307g) obj).f46876b;
                    if (!(dbtVar instanceof AbstractC12309i)) {
                        dbtVar.cancel(z);
                        z2 = true;
                        break;
                    }
                    dagVar = (dag) dbtVar;
                    obj = dagVar.f46857e;
                    z2 = true;
                    if (!(obj == null) && !(obj instanceof RunnableC12307g)) {
                        break;
                    }
                    z2 = true;
                } else {
                    Object obj2 = dagVar.f46857e;
                    obj = obj2;
                    if (!(obj2 instanceof RunnableC12307g)) {
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
    public final boolean m16953d() {
        Object obj = this.f46857e;
        return (obj instanceof C12300a) && ((C12300a) obj).f46862c;
    }

    @Override // com.google.android.gms.internal.ads.dcl
    /* renamed from: e */
    public final Throwable mo16869e() {
        if (this instanceof AbstractC12309i) {
            Object obj = this.f46857e;
            if (!(obj instanceof C12302c)) {
                return null;
            }
            return ((C12302c) obj).f46865b;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004b, code lost:
        java.util.concurrent.locks.LockSupport.park(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0052, code lost:
        if (java.lang.Thread.interrupted() != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0055, code lost:
        r0 = r5.f46857e;
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
        if ((r7 & (!(r0 instanceof com.google.android.gms.internal.ads.dag.RunnableC12307g))) == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0074, code lost:
        return (V) m16962a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0075, code lost:
        m16968a(r0);
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
            if (r0 != 0) goto L9b
            r0 = r5
            java.lang.Object r0 = r0.f46857e
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
            boolean r1 = r1 instanceof com.google.android.gms.internal.ads.dag.RunnableC12307g
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L26
            r0 = r6
            java.lang.Object r0 = m16962a(r0)
            return r0
        L26:
            r0 = r5
            com.google.android.gms.internal.ads.dag$k r0 = r0.f46859g
            r6 = r0
            r0 = r6
            com.google.android.gms.internal.ads.dag$k r1 = com.google.android.gms.internal.ads.dag.C12312k.f46883a
            if (r0 == r1) goto L93
            com.google.android.gms.internal.ads.dag$k r0 = new com.google.android.gms.internal.ads.dag$k
            r1 = r0
            r1.<init>()
            r8 = r0
        L3a:
            r0 = r8
            r1 = r6
            r0.m16943a(r1)
            com.google.android.gms.internal.ads.dag$b r0 = com.google.android.gms.internal.ads.dag.f46855c
            r1 = r5
            r2 = r6
            r3 = r8
            boolean r0 = r0.mo16945a(r1, r2, r3)
            if (r0 == 0) goto L82
        L4b:
            r0 = r5
            java.util.concurrent.locks.LockSupport.park(r0)
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto L75
            r0 = r5
            java.lang.Object r0 = r0.f46857e
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
            boolean r1 = r1 instanceof com.google.android.gms.internal.ads.dag.RunnableC12307g
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L4b
            r0 = r6
            java.lang.Object r0 = m16962a(r0)
            return r0
        L75:
            r0 = r5
            r1 = r8
            r0.m16968a(r1)
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        L82:
            r0 = r5
            com.google.android.gms.internal.ads.dag$k r0 = r0.f46859g
            r9 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            com.google.android.gms.internal.ads.dag$k r1 = com.google.android.gms.internal.ads.dag.C12312k.f46883a
            if (r0 != r1) goto L3a
        L93:
            r0 = r5
            java.lang.Object r0 = r0.f46857e
            java.lang.Object r0 = m16962a(r0)
            return r0
        L9b:
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
        if (java.lang.Thread.interrupted() != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0094, code lost:
        r0 = r6.f46857e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x009c, code lost:
        if (r0 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009f, code lost:
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a5, code lost:
        r13 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b2, code lost:
        if ((r13 & (!(r0 instanceof com.google.android.gms.internal.ads.dag.RunnableC12307g))) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ba, code lost:
        return (V) m16962a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00bb, code lost:
        r16 = r14 - java.lang.System.nanoTime();
        r10 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00cd, code lost:
        if (r16 >= 1000) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d0, code lost:
        m16968a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d9, code lost:
        m16968a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e6, code lost:
        throw new java.lang.InterruptedException();
     */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v115, types: [long] */
    /* JADX WARN: Type inference failed for: r0v140, types: [long] */
    /* JADX WARN: Type inference failed for: r0v153, types: [long] */
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
        return this.f46857e instanceof C12300a;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        Object obj = this.f46857e;
        return (!(obj instanceof RunnableC12307g)) & (obj != null);
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
            m16960a(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            Object obj = this.f46857e;
            if (obj instanceof RunnableC12307g) {
                sb.append(", setFuture=[");
                dbt<? extends V> dbtVar = ((RunnableC12307g) obj).f46876b;
                try {
                    if (dbtVar == this) {
                        sb.append("this future");
                    } else {
                        sb.append(dbtVar);
                    }
                } catch (RuntimeException | StackOverflowError e) {
                    sb.append("Exception thrown from implementation: ");
                    sb.append(e.getClass());
                }
                sb.append("]");
            } else {
                try {
                    str = cyc.m17067c(mo16879a());
                } catch (RuntimeException | StackOverflowError e2) {
                    String valueOf = String.valueOf(e2.getClass());
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
                m16960a(sb);
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
