package com.google.common.util.concurrent;

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
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p267a.C4942t;
import p131c.p161d.p266c.p275i.p276a.AbstractFutureC5108l;
import p131c.p161d.p266c.p275i.p276a.p277u.AbstractC5120a;
import p131c.p161d.p266c.p275i.p276a.p277u.C5121b;
import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/AbstractFuture.class */
public abstract class AbstractFuture<V> extends AbstractC5120a implements AbstractFutureC5108l<V> {

    /* renamed from: d */
    public static final boolean f30905d = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: e */
    public static final Logger f30906e = Logger.getLogger(AbstractFuture.class.getName());

    /* renamed from: f */
    public static final AbstractC7747b f30907f;

    /* renamed from: g */
    public static final Object f30908g;

    /* renamed from: a */
    public volatile Object f30909a;

    /* renamed from: b */
    public volatile C7749d f30910b;

    /* renamed from: c */
    public volatile C7757k f30911c;

    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/AbstractFuture$Failure.class */
    public static final class Failure {

        /* renamed from: b */
        public static final Failure f30912b = new Failure(new Throwable("Failure occurred while trying to finish a future.") { // from class: com.google.common.util.concurrent.AbstractFuture.Failure.1
            @Override // java.lang.Throwable
            public Throwable fillInStackTrace() {
                synchronized (this) {
                }
                return this;
            }
        });

        /* renamed from: a */
        public final Throwable f30913a;

        public Failure(Throwable th) {
            C4933n.m24795a(th);
            this.f30913a = th;
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/AbstractFuture$b.class */
    public static abstract class AbstractC7747b {
        public AbstractC7747b() {
        }

        /* renamed from: a */
        public abstract void mo7695a(C7757k kVar, C7757k kVar2);

        /* renamed from: a */
        public abstract void mo7694a(C7757k kVar, Thread thread);

        /* renamed from: a */
        public abstract boolean mo7693a(AbstractFuture<?> abstractFuture, C7749d dVar, C7749d dVar2);

        /* renamed from: a */
        public abstract boolean mo7692a(AbstractFuture<?> abstractFuture, C7757k kVar, C7757k kVar2);

        /* renamed from: a */
        public abstract boolean mo7691a(AbstractFuture<?> abstractFuture, Object obj, Object obj2);
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/AbstractFuture$c.class */
    public static final class C7748c {

        /* renamed from: c */
        public static final C7748c f30914c;

        /* renamed from: d */
        public static final C7748c f30915d;

        /* renamed from: a */
        public final boolean f30916a;

        /* renamed from: b */
        public final Throwable f30917b;

        static {
            if (AbstractFuture.f30905d) {
                f30915d = null;
                f30914c = null;
                return;
            }
            f30915d = new C7748c(false, null);
            f30914c = new C7748c(true, null);
        }

        public C7748c(boolean z, Throwable th) {
            this.f30916a = z;
            this.f30917b = th;
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$d */
    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/AbstractFuture$d.class */
    public static final class C7749d {

        /* renamed from: d */
        public static final C7749d f30918d = new C7749d(null, null);

        /* renamed from: a */
        public final Runnable f30919a;

        /* renamed from: b */
        public final Executor f30920b;

        /* renamed from: c */
        public C7749d f30921c;

        public C7749d(Runnable runnable, Executor executor) {
            this.f30919a = runnable;
            this.f30920b = executor;
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$e */
    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/AbstractFuture$e.class */
    public static final class C7750e extends AbstractC7747b {

        /* renamed from: a */
        public final AtomicReferenceFieldUpdater<C7757k, Thread> f30922a;

        /* renamed from: b */
        public final AtomicReferenceFieldUpdater<C7757k, C7757k> f30923b;

        /* renamed from: c */
        public final AtomicReferenceFieldUpdater<AbstractFuture, C7757k> f30924c;

        /* renamed from: d */
        public final AtomicReferenceFieldUpdater<AbstractFuture, C7749d> f30925d;

        /* renamed from: e */
        public final AtomicReferenceFieldUpdater<AbstractFuture, Object> f30926e;

        public C7750e(AtomicReferenceFieldUpdater<C7757k, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<C7757k, C7757k> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<AbstractFuture, C7757k> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<AbstractFuture, C7749d> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<AbstractFuture, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f30922a = atomicReferenceFieldUpdater;
            this.f30923b = atomicReferenceFieldUpdater2;
            this.f30924c = atomicReferenceFieldUpdater3;
            this.f30925d = atomicReferenceFieldUpdater4;
            this.f30926e = atomicReferenceFieldUpdater5;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC7747b
        /* renamed from: a */
        public void mo7695a(C7757k kVar, C7757k kVar2) {
            this.f30923b.lazySet(kVar, kVar2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC7747b
        /* renamed from: a */
        public void mo7694a(C7757k kVar, Thread thread) {
            this.f30922a.lazySet(kVar, thread);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC7747b
        /* renamed from: a */
        public boolean mo7693a(AbstractFuture<?> abstractFuture, C7749d dVar, C7749d dVar2) {
            return this.f30925d.compareAndSet(abstractFuture, dVar, dVar2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC7747b
        /* renamed from: a */
        public boolean mo7692a(AbstractFuture<?> abstractFuture, C7757k kVar, C7757k kVar2) {
            return this.f30924c.compareAndSet(abstractFuture, kVar, kVar2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC7747b
        /* renamed from: a */
        public boolean mo7691a(AbstractFuture<?> abstractFuture, Object obj, Object obj2) {
            return this.f30926e.compareAndSet(abstractFuture, obj, obj2);
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$f */
    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/AbstractFuture$f.class */
    public static final class RunnableC7751f<V> implements Runnable {

        /* renamed from: a */
        public final AbstractFuture<V> f30927a;

        /* renamed from: b */
        public final AbstractFutureC5108l<? extends V> f30928b;

        public RunnableC7751f(AbstractFuture<V> abstractFuture, AbstractFutureC5108l<? extends V> lVar) {
            this.f30927a = abstractFuture;
            this.f30928b = lVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f30927a.f30909a == this) {
                if (AbstractFuture.f30907f.mo7691a((AbstractFuture<?>) this.f30927a, (Object) this, AbstractFuture.m7705c((AbstractFutureC5108l<?>) this.f30928b))) {
                    AbstractFuture.m7700e(this.f30927a);
                }
            }
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$g */
    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/AbstractFuture$g.class */
    public static final class C7752g extends AbstractC7747b {
        public C7752g() {
            super();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC7747b
        /* renamed from: a */
        public void mo7695a(C7757k kVar, C7757k kVar2) {
            kVar.f30937b = kVar2;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC7747b
        /* renamed from: a */
        public void mo7694a(C7757k kVar, Thread thread) {
            kVar.f30936a = thread;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC7747b
        /* renamed from: a */
        public boolean mo7693a(AbstractFuture<?> abstractFuture, C7749d dVar, C7749d dVar2) {
            synchronized (abstractFuture) {
                if (abstractFuture.f30910b != dVar) {
                    return false;
                }
                abstractFuture.f30910b = dVar2;
                return true;
            }
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC7747b
        /* renamed from: a */
        public boolean mo7692a(AbstractFuture<?> abstractFuture, C7757k kVar, C7757k kVar2) {
            synchronized (abstractFuture) {
                if (abstractFuture.f30911c != kVar) {
                    return false;
                }
                abstractFuture.f30911c = kVar2;
                return true;
            }
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC7747b
        /* renamed from: a */
        public boolean mo7691a(AbstractFuture<?> abstractFuture, Object obj, Object obj2) {
            synchronized (abstractFuture) {
                if (abstractFuture.f30909a != obj) {
                    return false;
                }
                abstractFuture.f30909a = obj2;
                return true;
            }
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$h */
    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/AbstractFuture$h.class */
    public interface AbstractC7753h<V> extends AbstractFutureC5108l<V> {
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$i */
    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/AbstractFuture$i.class */
    public static abstract class AbstractC7754i<V> extends AbstractFuture<V> implements AbstractC7753h<V> {
        @Override // com.google.common.util.concurrent.AbstractFuture, p131c.p161d.p266c.p275i.p276a.AbstractFutureC5108l
        /* renamed from: a */
        public final void mo7696a(Runnable runnable, Executor executor) {
            AbstractFuture.super.mo7696a(runnable, executor);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean cancel(boolean z) {
            return AbstractFuture.super.cancel(z);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final V get() throws InterruptedException, ExecutionException {
            return (V) AbstractFuture.super.get();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final V get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
            return (V) AbstractFuture.super.get(j, timeUnit);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean isCancelled() {
            return AbstractFuture.super.isCancelled();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean isDone() {
            return AbstractFuture.super.isDone();
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$j */
    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/AbstractFuture$j.class */
    public static final class C7755j extends AbstractC7747b {

        /* renamed from: a */
        public static final Unsafe f30929a;

        /* renamed from: b */
        public static final long f30930b;

        /* renamed from: c */
        public static final long f30931c;

        /* renamed from: d */
        public static final long f30932d;

        /* renamed from: e */
        public static final long f30933e;

        /* renamed from: f */
        public static final long f30934f;

        /* renamed from: com.google.common.util.concurrent.AbstractFuture$j$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/AbstractFuture$j$a.class */
        public static final class C7756a implements PrivilegedExceptionAction<Unsafe> {
            @Override // java.security.PrivilegedExceptionAction
            public Unsafe run() throws Exception {
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
        }

        static {
            Unsafe unsafe;
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (SecurityException e) {
                try {
                    unsafe = (Unsafe) AccessController.doPrivileged(new C7756a());
                } catch (PrivilegedActionException e2) {
                    throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
                }
            }
            try {
                f30931c = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField("c"));
                f30930b = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField("b"));
                f30932d = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField("a"));
                f30933e = unsafe.objectFieldOffset(C7757k.class.getDeclaredField("a"));
                f30934f = unsafe.objectFieldOffset(C7757k.class.getDeclaredField("b"));
                f30929a = unsafe;
            } catch (Exception e3) {
                C4942t.m24749b(e3);
                throw new RuntimeException(e3);
            }
        }

        public C7755j() {
            super();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC7747b
        /* renamed from: a */
        public void mo7695a(C7757k kVar, C7757k kVar2) {
            f30929a.putObject(kVar, f30934f, kVar2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC7747b
        /* renamed from: a */
        public void mo7694a(C7757k kVar, Thread thread) {
            f30929a.putObject(kVar, f30933e, thread);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC7747b
        /* renamed from: a */
        public boolean mo7693a(AbstractFuture<?> abstractFuture, C7749d dVar, C7749d dVar2) {
            return f30929a.compareAndSwapObject(abstractFuture, f30930b, dVar, dVar2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC7747b
        /* renamed from: a */
        public boolean mo7692a(AbstractFuture<?> abstractFuture, C7757k kVar, C7757k kVar2) {
            return f30929a.compareAndSwapObject(abstractFuture, f30931c, kVar, kVar2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC7747b
        /* renamed from: a */
        public boolean mo7691a(AbstractFuture<?> abstractFuture, Object obj, Object obj2) {
            return f30929a.compareAndSwapObject(abstractFuture, f30932d, obj, obj2);
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$k */
    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/AbstractFuture$k.class */
    public static final class C7757k {

        /* renamed from: c */
        public static final C7757k f30935c = new C7757k(false);

        /* renamed from: a */
        public volatile Thread f30936a;

        /* renamed from: b */
        public volatile C7757k f30937b;

        public C7757k() {
            AbstractFuture.f30907f.mo7694a(this, Thread.currentThread());
        }

        public C7757k(boolean z) {
        }

        /* renamed from: a */
        public void m7690a() {
            Thread thread = this.f30936a;
            if (thread != null) {
                this.f30936a = null;
                LockSupport.unpark(thread);
            }
        }

        /* renamed from: a */
        public void m7689a(C7757k kVar) {
            AbstractFuture.f30907f.mo7695a(this, kVar);
        }
    }

    static {
        Throwable th;
        AbstractC7747b bVar;
        Throwable th2 = null;
        try {
            bVar = new C7755j();
            th = null;
        } catch (Throwable th3) {
            th = th3;
            try {
                bVar = new C7750e(AtomicReferenceFieldUpdater.newUpdater(C7757k.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(C7757k.class, C7757k.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, C7757k.class, "c"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, C7749d.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Object.class, "a"));
            } catch (Throwable th4) {
                th2 = th4;
                bVar = new C7752g();
            }
        }
        f30907f = bVar;
        if (th2 != null) {
            f30906e.log(Level.SEVERE, "UnsafeAtomicHelper is broken!", th);
            f30906e.log(Level.SEVERE, "SafeAtomicHelper is broken!", th2);
        }
        f30908g = new Object();
    }

    /* renamed from: a */
    public static CancellationException m7713a(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    /* renamed from: b */
    public static <V> V m7706b(Future<V> future) throws ExecutionException {
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

    /* renamed from: b */
    public static void m7707b(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = f30906e;
            Level level = Level.SEVERE;
            logger.log(level, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    /* renamed from: c */
    public static Object m7705c(AbstractFutureC5108l<?> lVar) {
        Throwable a;
        if (lVar instanceof AbstractC7753h) {
            Object obj = ((AbstractFuture) lVar).f30909a;
            Object obj2 = obj;
            if (obj instanceof C7748c) {
                C7748c cVar = (C7748c) obj;
                obj2 = obj;
                if (cVar.f30916a) {
                    obj2 = cVar.f30917b != null ? new C7748c(false, cVar.f30917b) : C7748c.f30915d;
                }
            }
            return obj2;
        } else if ((lVar instanceof AbstractC5120a) && (a = C5121b.m24494a((AbstractC5120a) lVar)) != null) {
            return new Failure(a);
        } else {
            boolean isCancelled = lVar.isCancelled();
            if ((!f30905d) && isCancelled) {
                return C7748c.f30915d;
            }
            try {
                Object b = m7706b((Future<Object>) lVar);
                if (isCancelled) {
                    return new C7748c(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + lVar));
                }
                Object obj3 = b;
                if (b == null) {
                    obj3 = f30908g;
                }
                return obj3;
            } catch (CancellationException e) {
                if (isCancelled) {
                    return new C7748c(false, e);
                }
                return new Failure(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + lVar, e));
            } catch (ExecutionException e2) {
                if (!isCancelled) {
                    return new Failure(e2.getCause());
                }
                return new C7748c(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + lVar, e2));
            } catch (Throwable th) {
                return new Failure(th);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [com.google.common.util.concurrent.AbstractFuture<V>, com.google.common.util.concurrent.AbstractFuture] */
    /* JADX WARN: Type inference failed for: r0v24, types: [com.google.common.util.concurrent.AbstractFuture$b] */
    /* renamed from: e */
    public static void m7700e(AbstractFuture<?> abstractFuture) {
        C7749d dVar;
        AbstractFuture<V> abstractFuture2;
        C7749d dVar2 = null;
        while (true) {
            abstractFuture.m7701e();
            abstractFuture.mo7710b();
            C7749d a = abstractFuture.m7720a(dVar2);
            while (a != null) {
                dVar = a.f30921c;
                Runnable runnable = a.f30919a;
                if (runnable instanceof RunnableC7751f) {
                    RunnableC7751f fVar = (RunnableC7751f) runnable;
                    abstractFuture2 = fVar.f30927a;
                    if (abstractFuture2.f30909a == fVar) {
                        if (f30907f.mo7691a(abstractFuture2, fVar, m7705c((AbstractFutureC5108l<?>) fVar.f30928b))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    m7707b(runnable, a.f30920b);
                }
                a = dVar;
            }
            return;
            dVar2 = dVar;
            abstractFuture = abstractFuture2;
        }
    }

    /* renamed from: a */
    public final C7749d m7720a(C7749d dVar) {
        do {
            dVar = this.f30910b;
        } while (!f30907f.mo7693a((AbstractFuture<?>) this, dVar, C7749d.f30918d));
        while (dVar != null) {
            dVar = dVar.f30921c;
            dVar.f30921c = dVar;
        }
        return dVar;
    }

    /* renamed from: a */
    public final V m7714a(Object obj) throws ExecutionException {
        if (obj instanceof C7748c) {
            throw m7713a("Task was cancelled.", ((C7748c) obj).f30917b);
        } else if (!(obj instanceof Failure)) {
            V v = (V) obj;
            if (obj == f30908g) {
                v = null;
            }
            return v;
        } else {
            throw new ExecutionException(((Failure) obj).f30913a);
        }
    }

    @Override // p131c.p161d.p266c.p275i.p276a.p277u.AbstractC5120a
    /* renamed from: a */
    public final Throwable mo7722a() {
        if (!(this instanceof AbstractC7753h)) {
            return null;
        }
        Object obj = this.f30909a;
        if (obj instanceof Failure) {
            return ((Failure) obj).f30913a;
        }
        return null;
    }

    /* renamed from: a */
    public final void m7719a(C7757k kVar) {
        kVar.f30936a = null;
        while (true) {
            C7757k kVar2 = this.f30911c;
            if (kVar2 != C7757k.f30935c) {
                C7757k kVar3 = null;
                while (kVar2 != null) {
                    C7757k kVar4 = kVar2.f30937b;
                    if (kVar2.f30936a != null) {
                        kVar3 = kVar2;
                    } else if (kVar3 != null) {
                        kVar3.f30937b = kVar4;
                        kVar3 = kVar3;
                        if (kVar3.f30936a == null) {
                            break;
                        }
                    } else {
                        kVar3 = kVar3;
                        if (!f30907f.mo7692a((AbstractFuture<?>) this, kVar2, kVar4)) {
                            break;
                        }
                    }
                    kVar2 = kVar4;
                }
                return;
            }
            return;
        }
    }

    /* renamed from: a */
    public void mo7696a(Runnable runnable, Executor executor) {
        C7749d dVar;
        C4933n.m24794a(runnable, "Runnable was null.");
        C4933n.m24794a(executor, "Executor was null.");
        if (!isDone()) {
            C7749d dVar2 = this.f30910b;
            if (dVar2 != C7749d.f30918d) {
                C7749d dVar3 = new C7749d(runnable, executor);
                do {
                    dVar3.f30921c = dVar2;
                    if (!f30907f.mo7693a((AbstractFuture<?>) this, dVar2, dVar3)) {
                        dVar = this.f30910b;
                        dVar2 = dVar;
                    } else {
                        return;
                    }
                } while (dVar != C7749d.f30918d);
            }
        }
        m7707b(runnable, executor);
    }

    /* renamed from: a */
    public final void m7712a(StringBuilder sb) {
        try {
            Object b = m7706b((Future<Object>) this);
            sb.append("SUCCESS, result=[");
            sb.append(m7703c(b));
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
    public final void m7711a(Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(m7699f());
        }
    }

    /* renamed from: a */
    public boolean mo7721a(AbstractFutureC5108l<? extends V> lVar) {
        Failure failure;
        C4933n.m24795a(lVar);
        Object obj = this.f30909a;
        Object obj2 = obj;
        if (obj == null) {
            if (lVar.isDone()) {
                if (!f30907f.mo7691a((AbstractFuture<?>) this, (Object) null, m7705c((AbstractFutureC5108l<?>) lVar))) {
                    return false;
                }
                m7700e(this);
                return true;
            }
            RunnableC7751f fVar = new RunnableC7751f(this, lVar);
            if (f30907f.mo7691a((AbstractFuture<?>) this, (Object) null, (Object) fVar)) {
                try {
                    lVar.mo7696a(fVar, DirectExecutor.INSTANCE);
                    return true;
                } catch (Throwable th) {
                    try {
                        failure = new Failure(th);
                    } catch (Throwable th2) {
                        failure = Failure.f30912b;
                    }
                    f30907f.mo7691a((AbstractFuture<?>) this, (Object) fVar, (Object) failure);
                    return true;
                }
            } else {
                obj2 = this.f30909a;
            }
        }
        if (!(obj2 instanceof C7748c)) {
            return false;
        }
        lVar.cancel(((C7748c) obj2).f30916a);
        return false;
    }

    /* renamed from: a */
    public boolean mo276a(Throwable th) {
        C4933n.m24795a(th);
        if (!f30907f.mo7691a((AbstractFuture<?>) this, (Object) null, (Object) new Failure(th))) {
            return false;
        }
        m7700e(this);
        return true;
    }

    /* renamed from: b */
    public void mo7710b() {
    }

    /* renamed from: b */
    public boolean mo275b(V v) {
        Object obj = v;
        if (v == null) {
            obj = f30908g;
        }
        if (!f30907f.mo7691a((AbstractFuture<?>) this, (Object) null, obj)) {
            return false;
        }
        m7700e(this);
        return true;
    }

    /* renamed from: c */
    public final String m7703c(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    /* renamed from: c */
    public void mo274c() {
    }

    public boolean cancel(boolean z) {
        boolean z2;
        Object obj = this.f30909a;
        if ((obj == null) || (obj instanceof RunnableC7751f)) {
            C7748c cVar = f30905d ? new C7748c(z, new CancellationException("Future.cancel() was called.")) : z ? C7748c.f30914c : C7748c.f30915d;
            z2 = false;
            AbstractFuture<V> abstractFuture = this;
            while (true) {
                if (f30907f.mo7691a((AbstractFuture<?>) abstractFuture, obj, (Object) cVar)) {
                    if (z) {
                        abstractFuture.mo274c();
                    }
                    m7700e(abstractFuture);
                    z2 = true;
                    if (!(obj instanceof RunnableC7751f)) {
                        break;
                    }
                    AbstractFutureC5108l<? extends V> lVar = ((RunnableC7751f) obj).f30928b;
                    if (!(lVar instanceof AbstractC7753h)) {
                        lVar.cancel(z);
                        z2 = true;
                        break;
                    }
                    abstractFuture = (AbstractFuture) lVar;
                    obj = abstractFuture.f30909a;
                    z2 = true;
                    if (!(obj == null) && !(obj instanceof RunnableC7751f)) {
                        break;
                    }
                    z2 = true;
                } else {
                    Object obj2 = abstractFuture.f30909a;
                    obj = obj2;
                    if (!(obj2 instanceof RunnableC7751f)) {
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
    public String mo273d() {
        Object obj = this.f30909a;
        if (obj instanceof RunnableC7751f) {
            return "setFuture=[" + m7703c((Object) ((RunnableC7751f) obj).f30928b) + "]";
        } else if (!(this instanceof ScheduledFuture)) {
            return null;
        } else {
            return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
        }
    }

    /* renamed from: e */
    public final void m7701e() {
        C7757k kVar;
        do {
            kVar = this.f30911c;
        } while (!f30907f.mo7692a((AbstractFuture<?>) this, kVar, C7757k.f30935c));
        while (kVar != null) {
            kVar.m7690a();
            kVar = kVar.f30937b;
        }
    }

    /* renamed from: f */
    public final boolean m7699f() {
        Object obj = this.f30909a;
        return (obj instanceof C7748c) && ((C7748c) obj).f30916a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
        java.util.concurrent.locks.LockSupport.park(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0053, code lost:
        if (java.lang.Thread.interrupted() != false) goto L_0x0077;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0056, code lost:
        r0 = r5.f30909a;
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
        if ((r7 & (!(r0 instanceof com.google.common.util.concurrent.AbstractFuture.RunnableC7751f))) == false) goto L_0x004c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0076, code lost:
        return m7714a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0077, code lost:
        m7719a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0083, code lost:
        throw new java.lang.InterruptedException();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public V get() throws java.lang.InterruptedException, java.util.concurrent.ExecutionException {
        /*
            r5 = this;
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto L_0x009e
            r0 = r5
            java.lang.Object r0 = r0.f30909a
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
            boolean r1 = r1 instanceof com.google.common.util.concurrent.AbstractFuture.RunnableC7751f
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0027
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m7714a(r1)
            return r0
        L_0x0027:
            r0 = r5
            com.google.common.util.concurrent.AbstractFuture$k r0 = r0.f30911c
            r6 = r0
            r0 = r6
            com.google.common.util.concurrent.AbstractFuture$k r1 = com.google.common.util.concurrent.AbstractFuture.C7757k.f30935c
            if (r0 == r1) goto L_0x0095
            com.google.common.util.concurrent.AbstractFuture$k r0 = new com.google.common.util.concurrent.AbstractFuture$k
            r1 = r0
            r1.<init>()
            r8 = r0
        L_0x003b:
            r0 = r8
            r1 = r6
            r0.m7689a(r1)
            com.google.common.util.concurrent.AbstractFuture$b r0 = com.google.common.util.concurrent.AbstractFuture.f30907f
            r1 = r5
            r2 = r6
            r3 = r8
            boolean r0 = r0.mo7692a(r1, r2, r3)
            if (r0 == 0) goto L_0x0084
        L_0x004c:
            r0 = r5
            java.util.concurrent.locks.LockSupport.park(r0)
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto L_0x0077
            r0 = r5
            java.lang.Object r0 = r0.f30909a
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
            boolean r1 = r1 instanceof com.google.common.util.concurrent.AbstractFuture.RunnableC7751f
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x004c
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m7714a(r1)
            return r0
        L_0x0077:
            r0 = r5
            r1 = r8
            r0.m7719a(r1)
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        L_0x0084:
            r0 = r5
            com.google.common.util.concurrent.AbstractFuture$k r0 = r0.f30911c
            r9 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            com.google.common.util.concurrent.AbstractFuture$k r1 = com.google.common.util.concurrent.AbstractFuture.C7757k.f30935c
            if (r0 != r1) goto L_0x003b
        L_0x0095:
            r0 = r5
            r1 = r5
            java.lang.Object r1 = r1.f30909a
            java.lang.Object r0 = r0.m7714a(r1)
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.AbstractFuture.get():java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0083, code lost:
        java.util.concurrent.locks.LockSupport.parkNanos(r6, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008c, code lost:
        if (java.lang.Thread.interrupted() != false) goto L_0x00d5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008f, code lost:
        r0 = r6.f30909a;
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
        if ((r13 & (!(r0 instanceof com.google.common.util.concurrent.AbstractFuture.RunnableC7751f))) == false) goto L_0x00b7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b6, code lost:
        return m7714a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b7, code lost:
        r16 = r14 - java.lang.System.nanoTime();
        r10 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c9, code lost:
        if (r16 >= 1000) goto L_0x0083;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00cc, code lost:
        m7719a(r0);
        r16 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d5, code lost:
        m7719a(r0);
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public V get(long r7, java.util.concurrent.TimeUnit r9) throws java.lang.InterruptedException, java.util.concurrent.TimeoutException, java.util.concurrent.ExecutionException {
        /*
            Method dump skipped, instructions count: 796
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.AbstractFuture.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    public boolean isCancelled() {
        return this.f30909a instanceof C7748c;
    }

    public boolean isDone() {
        Object obj = this.f30909a;
        return (!(obj instanceof RunnableC7751f)) & (obj != null);
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            m7712a(sb);
        } else {
            try {
                str = mo273d();
            } catch (RuntimeException e) {
                str = "Exception thrown from implementation: " + e.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                m7712a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
