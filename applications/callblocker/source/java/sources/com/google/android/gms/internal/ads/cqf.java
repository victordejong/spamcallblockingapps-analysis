package com.google.android.gms.internal.ads;

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
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqf.class */
public class cqf<V> extends csj implements crt<V> {

    /* renamed from: a */
    private static final boolean f13539a;

    /* renamed from: b */
    private static final Logger f13540b;

    /* renamed from: c */
    private static final AbstractC2876a f13541c;

    /* renamed from: d */
    private static final Object f13542d;
    @NullableDecl

    /* renamed from: e */
    private volatile Object f13543e;
    @NullableDecl

    /* renamed from: f */
    private volatile C2880d f13544f;
    @NullableDecl

    /* renamed from: g */
    private volatile C2888k f13545g;

    /* renamed from: com.google.android.gms.internal.ads.cqf$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqf$a.class */
    public static abstract class AbstractC2876a {
        private AbstractC2876a() {
        }

        /* renamed from: a */
        abstract void mo10832a(C2888k c2888k, C2888k c2888k2);

        /* renamed from: a */
        abstract void mo10831a(C2888k c2888k, Thread thread);

        /* renamed from: a */
        abstract boolean mo10830a(cqf<?> cqfVar, C2880d c2880d, C2880d c2880d2);

        /* renamed from: a */
        abstract boolean mo10829a(cqf<?> cqfVar, C2888k c2888k, C2888k c2888k2);

        /* renamed from: a */
        abstract boolean mo10828a(cqf<?> cqfVar, Object obj, Object obj2);
    }

    /* renamed from: com.google.android.gms.internal.ads.cqf$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqf$b.class */
    public static final class C2877b {

        /* renamed from: a */
        static final C2877b f13546a = new C2877b(new Throwable("Failure occurred while trying to finish a future.") { // from class: com.google.android.gms.internal.ads.cqf.b.1
            @Override // java.lang.Throwable
            public Throwable fillInStackTrace() {
                synchronized (this) {
                }
                return this;
            }
        });

        /* renamed from: b */
        final Throwable f13547b;

        C2877b(Throwable th) {
            this.f13547b = (Throwable) cor.m10936a(th);
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.cqf$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqf$c.class */
    public static final class C2879c {

        /* renamed from: a */
        static final C2879c f13548a;

        /* renamed from: b */
        static final C2879c f13549b;

        /* renamed from: c */
        final boolean f13550c;
        @NullableDecl

        /* renamed from: d */
        final Throwable f13551d;

        static {
            if (cqf.f13539a) {
                f13549b = null;
                f13548a = null;
                return;
            }
            f13549b = new C2879c(false, null);
            f13548a = new C2879c(true, null);
        }

        C2879c(boolean z, @NullableDecl Throwable th) {
            this.f13550c = z;
            this.f13551d = th;
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.cqf$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqf$d.class */
    public static final class C2880d {

        /* renamed from: a */
        static final C2880d f13552a = new C2880d(null, null);

        /* renamed from: b */
        final Runnable f13553b;

        /* renamed from: c */
        final Executor f13554c;
        @NullableDecl

        /* renamed from: d */
        C2880d f13555d;

        C2880d(Runnable runnable, Executor executor) {
            this.f13553b = runnable;
            this.f13554c = executor;
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.cqf$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqf$e.class */
    public static final class RunnableC2881e<V> implements Runnable {

        /* renamed from: a */
        final cqf<V> f13556a;

        /* renamed from: b */
        final crt<? extends V> f13557b;

        RunnableC2881e(cqf<V> cqfVar, crt<? extends V> crtVar) {
            this.f13556a = cqfVar;
            this.f13557b = crtVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (((cqf) this.f13556a).f13543e != this) {
                return;
            }
            if (!cqf.f13541c.mo10828a((cqf<?>) this.f13556a, (Object) this, cqf.m10838c(this.f13557b))) {
                return;
            }
            cqf.m10835e(this.f13556a);
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.cqf$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqf$f.class */
    static final class C2882f extends AbstractC2876a {

        /* renamed from: a */
        final AtomicReferenceFieldUpdater<C2888k, Thread> f13558a;

        /* renamed from: b */
        final AtomicReferenceFieldUpdater<C2888k, C2888k> f13559b;

        /* renamed from: c */
        final AtomicReferenceFieldUpdater<cqf, C2888k> f13560c;

        /* renamed from: d */
        final AtomicReferenceFieldUpdater<cqf, C2880d> f13561d;

        /* renamed from: e */
        final AtomicReferenceFieldUpdater<cqf, Object> f13562e;

        C2882f(AtomicReferenceFieldUpdater<C2888k, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<C2888k, C2888k> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<cqf, C2888k> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<cqf, C2880d> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<cqf, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f13558a = atomicReferenceFieldUpdater;
            this.f13559b = atomicReferenceFieldUpdater2;
            this.f13560c = atomicReferenceFieldUpdater3;
            this.f13561d = atomicReferenceFieldUpdater4;
            this.f13562e = atomicReferenceFieldUpdater5;
        }

        @Override // com.google.android.gms.internal.ads.cqf.AbstractC2876a
        /* renamed from: a */
        final void mo10832a(C2888k c2888k, C2888k c2888k2) {
            this.f13559b.lazySet(c2888k, c2888k2);
        }

        @Override // com.google.android.gms.internal.ads.cqf.AbstractC2876a
        /* renamed from: a */
        final void mo10831a(C2888k c2888k, Thread thread) {
            this.f13558a.lazySet(c2888k, thread);
        }

        @Override // com.google.android.gms.internal.ads.cqf.AbstractC2876a
        /* renamed from: a */
        final boolean mo10830a(cqf<?> cqfVar, C2880d c2880d, C2880d c2880d2) {
            return this.f13561d.compareAndSet(cqfVar, c2880d, c2880d2);
        }

        @Override // com.google.android.gms.internal.ads.cqf.AbstractC2876a
        /* renamed from: a */
        final boolean mo10829a(cqf<?> cqfVar, C2888k c2888k, C2888k c2888k2) {
            return this.f13560c.compareAndSet(cqfVar, c2888k, c2888k2);
        }

        @Override // com.google.android.gms.internal.ads.cqf.AbstractC2876a
        /* renamed from: a */
        final boolean mo10828a(cqf<?> cqfVar, Object obj, Object obj2) {
            return this.f13562e.compareAndSet(cqfVar, obj, obj2);
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.cqf$g */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqf$g.class */
    public interface AbstractC2883g<V> extends crt<V> {
    }

    /* renamed from: com.google.android.gms.internal.ads.cqf$h */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqf$h.class */
    static final class C2884h extends AbstractC2876a {
        private C2884h() {
            super();
        }

        @Override // com.google.android.gms.internal.ads.cqf.AbstractC2876a
        /* renamed from: a */
        final void mo10832a(C2888k c2888k, C2888k c2888k2) {
            c2888k.f13571c = c2888k2;
        }

        @Override // com.google.android.gms.internal.ads.cqf.AbstractC2876a
        /* renamed from: a */
        final void mo10831a(C2888k c2888k, Thread thread) {
            c2888k.f13570b = thread;
        }

        @Override // com.google.android.gms.internal.ads.cqf.AbstractC2876a
        /* renamed from: a */
        final boolean mo10830a(cqf<?> cqfVar, C2880d c2880d, C2880d c2880d2) {
            boolean z;
            synchronized (cqfVar) {
                if (((cqf) cqfVar).f13544f == c2880d) {
                    ((cqf) cqfVar).f13544f = c2880d2;
                    z = true;
                } else {
                    z = false;
                }
            }
            return z;
        }

        @Override // com.google.android.gms.internal.ads.cqf.AbstractC2876a
        /* renamed from: a */
        final boolean mo10829a(cqf<?> cqfVar, C2888k c2888k, C2888k c2888k2) {
            boolean z;
            synchronized (cqfVar) {
                if (((cqf) cqfVar).f13545g == c2888k) {
                    ((cqf) cqfVar).f13545g = c2888k2;
                    z = true;
                } else {
                    z = false;
                }
            }
            return z;
        }

        @Override // com.google.android.gms.internal.ads.cqf.AbstractC2876a
        /* renamed from: a */
        final boolean mo10828a(cqf<?> cqfVar, Object obj, Object obj2) {
            boolean z;
            synchronized (cqfVar) {
                if (((cqf) cqfVar).f13543e == obj) {
                    ((cqf) cqfVar).f13543e = obj2;
                    z = true;
                } else {
                    z = false;
                }
            }
            return z;
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.cqf$i */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqf$i.class */
    static final class C2885i extends AbstractC2876a {

        /* renamed from: a */
        static final Unsafe f13563a;

        /* renamed from: b */
        static final long f13564b;

        /* renamed from: c */
        static final long f13565c;

        /* renamed from: d */
        static final long f13566d;

        /* renamed from: e */
        static final long f13567e;

        /* renamed from: f */
        static final long f13568f;

        static {
            Unsafe unsafe;
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (SecurityException e) {
                try {
                    unsafe = (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction<Unsafe>() { // from class: com.google.android.gms.internal.ads.cqf.i.1
                        @Override // java.security.PrivilegedExceptionAction
                        public /* synthetic */ Unsafe run() {
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
                f13565c = unsafe.objectFieldOffset(cqf.class.getDeclaredField("waiters"));
                f13564b = unsafe.objectFieldOffset(cqf.class.getDeclaredField("listeners"));
                f13566d = unsafe.objectFieldOffset(cqf.class.getDeclaredField("value"));
                f13567e = unsafe.objectFieldOffset(C2888k.class.getDeclaredField("b"));
                f13568f = unsafe.objectFieldOffset(C2888k.class.getDeclaredField("c"));
                f13563a = unsafe;
            } catch (Exception e3) {
                cou.m10923a(e3);
                throw new RuntimeException(e3);
            }
        }

        private C2885i() {
            super();
        }

        @Override // com.google.android.gms.internal.ads.cqf.AbstractC2876a
        /* renamed from: a */
        final void mo10832a(C2888k c2888k, C2888k c2888k2) {
            f13563a.putObject(c2888k, f13568f, c2888k2);
        }

        @Override // com.google.android.gms.internal.ads.cqf.AbstractC2876a
        /* renamed from: a */
        final void mo10831a(C2888k c2888k, Thread thread) {
            f13563a.putObject(c2888k, f13567e, thread);
        }

        @Override // com.google.android.gms.internal.ads.cqf.AbstractC2876a
        /* renamed from: a */
        final boolean mo10830a(cqf<?> cqfVar, C2880d c2880d, C2880d c2880d2) {
            return f13563a.compareAndSwapObject(cqfVar, f13564b, c2880d, c2880d2);
        }

        @Override // com.google.android.gms.internal.ads.cqf.AbstractC2876a
        /* renamed from: a */
        final boolean mo10829a(cqf<?> cqfVar, C2888k c2888k, C2888k c2888k2) {
            return f13563a.compareAndSwapObject(cqfVar, f13565c, c2888k, c2888k2);
        }

        @Override // com.google.android.gms.internal.ads.cqf.AbstractC2876a
        /* renamed from: a */
        final boolean mo10828a(cqf<?> cqfVar, Object obj, Object obj2) {
            return f13563a.compareAndSwapObject(cqfVar, f13566d, obj, obj2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.cqf$j */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqf$j.class */
    public static class C2887j<V> extends cqf<V> implements AbstractC2883g<V> {
        @Override // com.google.android.gms.internal.ads.cqf, java.util.concurrent.Future
        public final V get(long j, TimeUnit timeUnit) {
            return (V) cqf.super.get(j, timeUnit);
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.cqf$k */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqf$k.class */
    public static final class C2888k {

        /* renamed from: a */
        static final C2888k f13569a = new C2888k(false);
        @NullableDecl

        /* renamed from: b */
        volatile Thread f13570b;
        @NullableDecl

        /* renamed from: c */
        volatile C2888k f13571c;

        C2888k() {
            cqf.f13541c.mo10831a(this, Thread.currentThread());
        }

        private C2888k(boolean z) {
        }

        /* renamed from: a */
        final void m10827a(C2888k c2888k) {
            cqf.f13541c.mo10832a(this, c2888k);
        }
    }

    static {
        boolean z;
        Throwable th;
        AbstractC2876a c2884h;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException e) {
            z = false;
        }
        f13539a = z;
        f13540b = Logger.getLogger(cqf.class.getName());
        try {
            c2884h = new C2885i();
            th = null;
            th = null;
        } catch (Throwable th2) {
            try {
                th = null;
                th = th2;
                c2884h = new C2882f(AtomicReferenceFieldUpdater.newUpdater(C2888k.class, Thread.class, "b"), AtomicReferenceFieldUpdater.newUpdater(C2888k.class, C2888k.class, "c"), AtomicReferenceFieldUpdater.newUpdater(cqf.class, C2888k.class, "g"), AtomicReferenceFieldUpdater.newUpdater(cqf.class, C2880d.class, "f"), AtomicReferenceFieldUpdater.newUpdater(cqf.class, Object.class, "e"));
            } catch (Throwable th3) {
                th = th3;
                th = th2;
                c2884h = new C2884h();
            }
        }
        f13541c = c2884h;
        if (th != null) {
            f13540b.logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "UnsafeAtomicHelper is broken!", th);
            f13540b.logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
        f13542d = new Object();
    }

    /* renamed from: a */
    private static V m10847a(Object obj) {
        if (obj instanceof C2879c) {
            Throwable th = ((C2879c) obj).f13551d;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        } else if (obj instanceof C2877b) {
            throw new ExecutionException(((C2877b) obj).f13547b);
        } else {
            Object obj2 = obj;
            if (obj == f13542d) {
                obj2 = null;
            }
            return (V) obj2;
        }
    }

    /* renamed from: a */
    private final void m10853a(C2888k c2888k) {
        c2888k.f13570b = null;
        while (true) {
            C2888k c2888k2 = this.f13545g;
            if (c2888k2 == C2888k.f13569a) {
                return;
            }
            C2888k c2888k3 = null;
            while (c2888k2 != null) {
                C2888k c2888k4 = c2888k2.f13571c;
                if (c2888k2.f13570b == null) {
                    if (c2888k3 != null) {
                        c2888k3.f13571c = c2888k4;
                        c2888k2 = c2888k3;
                        if (c2888k3.f13570b == null) {
                            break;
                        }
                    } else if (f13541c.mo10829a((cqf<?>) this, c2888k2, c2888k4)) {
                        c2888k2 = c2888k3;
                    }
                }
                c2888k3 = c2888k2;
                c2888k2 = c2888k4;
            }
            return;
        }
    }

    /* renamed from: a */
    private final void m10846a(StringBuilder sb) {
        try {
            Object m10840b = m10840b((Future<Object>) this);
            sb.append("SUCCESS, result=[");
            m10845a(sb, m10840b);
            sb.append("]");
        } catch (CancellationException e) {
            sb.append("CANCELLED");
        } catch (RuntimeException e2) {
            sb.append("UNKNOWN, cause=[").append(e2.getClass()).append(" thrown from get()]");
        } catch (ExecutionException e3) {
            sb.append("FAILURE, cause=[").append(e3.getCause()).append("]");
        }
    }

    /* renamed from: a */
    private final void m10845a(StringBuilder sb, Object obj) {
        try {
            if (obj == this) {
                sb.append("this future");
            } else {
                sb.append(obj);
            }
        } catch (RuntimeException | StackOverflowError e) {
            sb.append("Exception thrown from implementation: ").append(e.getClass());
        }
    }

    /* renamed from: b */
    private static <V> V m10840b(Future<V> future) {
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

    /* renamed from: b */
    private static void m10841b(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = f13540b;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "executeListener", new StringBuilder(String.valueOf(valueOf).length() + 57 + String.valueOf(valueOf2).length()).append("RuntimeException while executing runnable ").append(valueOf).append(" with executor ").append(valueOf2).toString(), (Throwable) e);
        }
    }

    /* renamed from: c */
    public static Object m10838c(crt<?> crtVar) {
        Object c2877b;
        Throwable m10737a;
        if (crtVar instanceof AbstractC2883g) {
            Object obj = ((cqf) crtVar).f13543e;
            c2877b = obj;
            if (obj instanceof C2879c) {
                C2879c c2879c = (C2879c) obj;
                c2877b = obj;
                if (c2879c.f13550c) {
                    c2877b = c2879c.f13551d != null ? new C2879c(false, c2879c.f13551d) : C2879c.f13549b;
                }
            }
        } else if (!(crtVar instanceof csj) || (m10737a = csn.m10737a((csj) crtVar)) == null) {
            boolean isCancelled = crtVar.isCancelled();
            if ((!f13539a) && isCancelled) {
                c2877b = C2879c.f13549b;
            } else {
                try {
                    Object m10840b = m10840b((Future<Object>) crtVar);
                    if (isCancelled) {
                        String valueOf = String.valueOf(crtVar);
                        c2877b = new C2879c(false, new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 84).append("get() did not throw CancellationException, despite reporting isCancelled() == true: ").append(valueOf).toString()));
                    } else {
                        c2877b = m10840b;
                        if (m10840b == null) {
                            c2877b = f13542d;
                        }
                    }
                } catch (CancellationException e) {
                    if (!isCancelled) {
                        String valueOf2 = String.valueOf(crtVar);
                        c2877b = new C2877b(new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf2).length() + 77).append("get() threw CancellationException, despite reporting isCancelled() == false: ").append(valueOf2).toString(), e));
                    } else {
                        c2877b = new C2879c(false, e);
                    }
                } catch (ExecutionException e2) {
                    if (isCancelled) {
                        String valueOf3 = String.valueOf(crtVar);
                        c2877b = new C2879c(false, new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf3).length() + 84).append("get() did not throw CancellationException, despite reporting isCancelled() == true: ").append(valueOf3).toString(), e2));
                    } else {
                        c2877b = new C2877b(e2.getCause());
                    }
                } catch (Throwable th) {
                    c2877b = new C2877b(th);
                }
            }
        } else {
            c2877b = new C2877b(m10737a);
        }
        return c2877b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    public static void m10835e(cqf<?> cqfVar) {
        C2880d c2880d;
        C2880d c2880d2;
        cqf cqfVar2 = cqfVar;
        C2880d c2880d3 = null;
        while (true) {
            C2888k c2888k = cqfVar2.f13545g;
            if (f13541c.mo10829a((cqf<?>) cqfVar2, c2888k, C2888k.f13569a)) {
                while (c2888k != null) {
                    Thread thread = c2888k.f13570b;
                    if (thread != null) {
                        c2888k.f13570b = null;
                        LockSupport.unpark(thread);
                    }
                    c2888k = c2888k.f13571c;
                }
                cqfVar2.mo10744b();
                do {
                    c2880d = cqfVar2.f13544f;
                } while (!f13541c.mo10830a((cqf<?>) cqfVar2, c2880d, C2880d.f13552a));
                while (true) {
                    c2880d2 = c2880d3;
                    c2880d3 = c2880d;
                    if (c2880d3 != null) {
                        c2880d = c2880d3.f13555d;
                        c2880d3.f13555d = c2880d2;
                    }
                }
                while (c2880d2 != null) {
                    c2880d3 = c2880d2.f13555d;
                    Runnable runnable = c2880d2.f13553b;
                    if (runnable instanceof RunnableC2881e) {
                        RunnableC2881e runnableC2881e = (RunnableC2881e) runnable;
                        cqfVar2 = (cqf<V>) runnableC2881e.f13556a;
                        if (cqfVar2.f13543e == runnableC2881e) {
                            if (f13541c.mo10828a(cqfVar2, runnableC2881e, m10838c(runnableC2881e.f13557b))) {
                                break;
                            }
                        }
                        c2880d2 = c2880d3;
                    } else {
                        m10841b(runnable, c2880d2.f13554c);
                        c2880d2 = c2880d3;
                    }
                }
                return;
            }
        }
    }

    @NullableDecl
    /* renamed from: a */
    public String mo10747a() {
        String str;
        if (this instanceof ScheduledFuture) {
            str = new StringBuilder(41).append("remaining delay=[").append(((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS)).append(" ms]").toString();
        } else {
            str = null;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.crt
    /* renamed from: a */
    public void mo6734a(Runnable runnable, Executor executor) {
        C2880d c2880d;
        cor.m10935a(runnable, "Runnable was null.");
        cor.m10935a(executor, "Executor was null.");
        if (!isDone()) {
            C2880d c2880d2 = this.f13544f;
            if (c2880d2 != C2880d.f13552a) {
                C2880d c2880d3 = new C2880d(runnable, executor);
                do {
                    c2880d3.f13555d = c2880d2;
                    if (f13541c.mo10830a((cqf<?>) this, c2880d2, c2880d3)) {
                        return;
                    }
                    c2880d = this.f13544f;
                    c2880d2 = c2880d;
                } while (c2880d != C2880d.f13552a);
            }
        }
        m10841b(runnable, executor);
    }

    /* renamed from: a */
    public final void m10844a(@NullableDecl Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(m10837d());
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0078 -> B:19:0x006a). Please submit an issue!!! */
    /* renamed from: a */
    public final boolean m10848a(crt<? extends V> crtVar) {
        boolean z;
        C2877b c2877b;
        cor.m10936a(crtVar);
        Object obj = this.f13543e;
        Object obj2 = obj;
        if (obj == null) {
            if (crtVar.isDone()) {
                if (f13541c.mo10828a((cqf<?>) this, (Object) null, m10838c(crtVar))) {
                    m10835e(this);
                    z = true;
                } else {
                    z = false;
                }
            } else {
                RunnableC2881e runnableC2881e = new RunnableC2881e(this, crtVar);
                if (f13541c.mo10828a((cqf<?>) this, (Object) null, (Object) runnableC2881e)) {
                    try {
                        crtVar.mo6734a(runnableC2881e, cqz.INSTANCE);
                    } catch (Throwable th) {
                        try {
                            c2877b = new C2877b(th);
                        } catch (Throwable th2) {
                            c2877b = C2877b.f13546a;
                        }
                        f13541c.mo10828a((cqf<?>) this, (Object) runnableC2881e, (Object) c2877b);
                    }
                    z = true;
                } else {
                    obj2 = this.f13543e;
                }
            }
            return z;
        }
        if (obj2 instanceof C2879c) {
            crtVar.cancel(((C2879c) obj2).f13550c);
        }
        z = false;
        return z;
    }

    /* renamed from: a */
    public boolean mo10754a(Throwable th) {
        boolean z;
        if (f13541c.mo10828a((cqf<?>) this, (Object) null, (Object) new C2877b((Throwable) cor.m10936a(th)))) {
            m10835e(this);
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public void mo10744b() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public boolean mo10753b(@NullableDecl V v) {
        boolean z;
        V v2 = v;
        if (v == null) {
            v2 = f13542d;
        }
        if (f13541c.mo10828a((cqf<?>) this, (Object) null, (Object) v2)) {
            m10835e(this);
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    protected void mo10798c() {
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        boolean z2;
        Object obj = this.f13543e;
        if ((obj == null) || (obj instanceof RunnableC2881e)) {
            C2879c c2879c = f13539a ? new C2879c(z, new CancellationException("Future.cancel() was called.")) : z ? C2879c.f13548a : C2879c.f13549b;
            z2 = false;
            cqf<V> cqfVar = this;
            while (true) {
                if (f13541c.mo10828a((cqf<?>) cqfVar, obj, (Object) c2879c)) {
                    if (z) {
                        cqfVar.mo10798c();
                    }
                    m10835e(cqfVar);
                    z2 = true;
                    if (!(obj instanceof RunnableC2881e)) {
                        break;
                    }
                    crt<? extends V> crtVar = ((RunnableC2881e) obj).f13557b;
                    if (!(crtVar instanceof AbstractC2883g)) {
                        crtVar.cancel(z);
                        z2 = true;
                        break;
                    }
                    cqfVar = (cqf) crtVar;
                    obj = cqfVar.f13543e;
                    z2 = true;
                    if (!(obj == null) && !(obj instanceof RunnableC2881e)) {
                        break;
                    }
                    z2 = true;
                } else {
                    Object obj2 = cqfVar.f13543e;
                    obj = obj2;
                    if (!(obj2 instanceof RunnableC2881e)) {
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
    public final boolean m10837d() {
        Object obj = this.f13543e;
        return (obj instanceof C2879c) && ((C2879c) obj).f13550c;
    }

    @Override // com.google.android.gms.internal.ads.csj
    @NullableDecl
    /* renamed from: e */
    public final Throwable mo10739e() {
        Throwable th;
        if (this instanceof AbstractC2883g) {
            Object obj = this.f13543e;
            if (obj instanceof C2877b) {
                th = ((C2877b) obj).f13547b;
                return th;
            }
        }
        th = null;
        return th;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0061, code lost:
        java.util.concurrent.locks.LockSupport.park(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0068, code lost:
        if (java.lang.Thread.interrupted() == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006b, code lost:
        m10853a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0078, code lost:
        throw new java.lang.InterruptedException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0079, code lost:
        r0 = r5.f13543e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007f, code lost:
        if (r0 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0082, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0088, code lost:
        if ((r0 instanceof com.google.android.gms.internal.ads.cqf.RunnableC2881e) != false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x008b, code lost:
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0090, code lost:
        if ((r7 & r8) == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0093, code lost:
        r6 = m10847a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x009b, code lost:
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00a0, code lost:
        r8 = false;
     */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public V get() {
        /*
            Method dump skipped, instructions count: 193
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cqf.get():java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0092, code lost:
        java.util.concurrent.locks.LockSupport.parkNanos(r7, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x009b, code lost:
        if (java.lang.Thread.interrupted() == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x009e, code lost:
        m10853a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ab, code lost:
        throw new java.lang.InterruptedException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00b2, code lost:
        r0 = r7.f13543e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ba, code lost:
        if (r0 == null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00bd, code lost:
        r14 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c5, code lost:
        if ((r0 instanceof com.google.android.gms.internal.ads.cqf.RunnableC2881e) != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c8, code lost:
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00d0, code lost:
        if ((r14 & r15) == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d3, code lost:
        r10 = m10847a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00dc, code lost:
        r14 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e2, code lost:
        r15 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00e8, code lost:
        r18 = r16 - java.lang.System.nanoTime();
        r11 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00fa, code lost:
        if (r18 >= 1000) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00fd, code lost:
        m10853a(r0);
     */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v102, types: [long] */
    /* JADX WARN: Type inference failed for: r0v131, types: [long] */
    /* JADX WARN: Type inference failed for: r0v143, types: [long] */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public V get(long r8, java.util.concurrent.TimeUnit r10) {
        /*
            Method dump skipped, instructions count: 763
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cqf.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f13543e instanceof C2879c;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        boolean z = true;
        Object obj = this.f13543e;
        boolean z2 = obj != null;
        if (obj instanceof RunnableC2881e) {
            z = false;
        }
        return z2 & z;
    }

    public String toString() {
        String sb;
        StringBuilder append = new StringBuilder().append(super.toString()).append("[status=");
        if (isCancelled()) {
            append.append("CANCELLED");
        } else if (isDone()) {
            m10846a(append);
        } else {
            int length = append.length();
            append.append("PENDING");
            Object obj = this.f13543e;
            if (obj instanceof RunnableC2881e) {
                append.append(", setFuture=[");
                m10845a(append, ((RunnableC2881e) obj).f13557b);
                append.append("]");
            } else {
                try {
                    sb = cos.m10928b(mo10747a());
                } catch (RuntimeException | StackOverflowError e) {
                    String valueOf = String.valueOf(e.getClass());
                    sb = new StringBuilder(String.valueOf(valueOf).length() + 38).append("Exception thrown from implementation: ").append(valueOf).toString();
                }
                if (sb != null) {
                    append.append(", info=[").append(sb).append("]");
                }
            }
            if (isDone()) {
                append.delete(length, append.length());
                m10846a(append);
            }
        }
        return append.append("]").toString();
    }
}
