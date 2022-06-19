package androidx.work.impl.utils.p089a;

import com.appsflyer.share.Constants;
import com.google.api.client.googleapis.notifications.C15291b;
import com.google.common.util.concurrent.AbstractFutureC15579a;
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
/* renamed from: androidx.work.impl.utils.a.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a.class */
public abstract class AbstractC3105a<V> implements AbstractFutureC15579a<V> {

    /* renamed from: b */
    static final AbstractC3107a f11417b;

    /* renamed from: g */
    private static final Object f11419g;

    /* renamed from: c */
    volatile Object f11420c;

    /* renamed from: d */
    volatile C3111d f11421d;

    /* renamed from: e */
    volatile C3115h f11422e;

    /* renamed from: a */
    static final boolean f11416a = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: f */
    private static final Logger f11418f = Logger.getLogger(AbstractC3105a.class.getName());

    /* renamed from: androidx.work.impl.utils.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a$a.class */
    public static abstract class AbstractC3107a {
        private AbstractC3107a() {
        }

        /* renamed from: a */
        abstract void mo39320a(C3115h c3115h, C3115h c3115h2);

        /* renamed from: a */
        abstract void mo39319a(C3115h c3115h, Thread thread);

        /* renamed from: a */
        abstract boolean mo39318a(AbstractC3105a<?> abstractC3105a, C3111d c3111d, C3111d c3111d2);

        /* renamed from: a */
        abstract boolean mo39317a(AbstractC3105a<?> abstractC3105a, C3115h c3115h, C3115h c3115h2);

        /* renamed from: a */
        abstract boolean mo39316a(AbstractC3105a<?> abstractC3105a, Object obj, Object obj2);
    }

    /* renamed from: androidx.work.impl.utils.a.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a$b.class */
    public static final class C3108b {

        /* renamed from: a */
        static final C3108b f11423a;

        /* renamed from: b */
        static final C3108b f11424b;

        /* renamed from: c */
        final boolean f11425c;

        /* renamed from: d */
        final Throwable f11426d;

        static {
            if (AbstractC3105a.f11416a) {
                f11424b = null;
                f11423a = null;
                return;
            }
            f11424b = new C3108b(false, null);
            f11423a = new C3108b(true, null);
        }

        C3108b(boolean z, Throwable th) {
            this.f11425c = z;
            this.f11426d = th;
        }
    }

    /* renamed from: androidx.work.impl.utils.a.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a$c.class */
    public static final class C3109c {

        /* renamed from: a */
        static final C3109c f11427a = new C3109c(new Throwable("Failure occurred while trying to finish a future.") { // from class: androidx.work.impl.utils.a.a.c.1
            @Override // java.lang.Throwable
            public final Throwable fillInStackTrace() {
                synchronized (this) {
                }
                return this;
            }
        });

        /* renamed from: b */
        final Throwable f11428b;

        C3109c(Throwable th) {
            this.f11428b = (Throwable) AbstractC3105a.m39324b(th);
        }
    }

    /* renamed from: androidx.work.impl.utils.a.a$d */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a$d.class */
    public static final class C3111d {

        /* renamed from: a */
        static final C3111d f11429a = new C3111d(null, null);

        /* renamed from: b */
        final Runnable f11430b;

        /* renamed from: c */
        final Executor f11431c;

        /* renamed from: d */
        C3111d f11432d;

        C3111d(Runnable runnable, Executor executor) {
            this.f11430b = runnable;
            this.f11431c = executor;
        }
    }

    /* renamed from: androidx.work.impl.utils.a.a$e */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a$e.class */
    static final class C3112e extends AbstractC3107a {

        /* renamed from: a */
        final AtomicReferenceFieldUpdater<C3115h, Thread> f11433a;

        /* renamed from: b */
        final AtomicReferenceFieldUpdater<C3115h, C3115h> f11434b;

        /* renamed from: c */
        final AtomicReferenceFieldUpdater<AbstractC3105a, C3115h> f11435c;

        /* renamed from: d */
        final AtomicReferenceFieldUpdater<AbstractC3105a, C3111d> f11436d;

        /* renamed from: e */
        final AtomicReferenceFieldUpdater<AbstractC3105a, Object> f11437e;

        C3112e(AtomicReferenceFieldUpdater<C3115h, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<C3115h, C3115h> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<AbstractC3105a, C3115h> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<AbstractC3105a, C3111d> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<AbstractC3105a, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f11433a = atomicReferenceFieldUpdater;
            this.f11434b = atomicReferenceFieldUpdater2;
            this.f11435c = atomicReferenceFieldUpdater3;
            this.f11436d = atomicReferenceFieldUpdater4;
            this.f11437e = atomicReferenceFieldUpdater5;
        }

        @Override // androidx.work.impl.utils.p089a.AbstractC3105a.AbstractC3107a
        /* renamed from: a */
        final void mo39320a(C3115h c3115h, C3115h c3115h2) {
            this.f11434b.lazySet(c3115h, c3115h2);
        }

        @Override // androidx.work.impl.utils.p089a.AbstractC3105a.AbstractC3107a
        /* renamed from: a */
        final void mo39319a(C3115h c3115h, Thread thread) {
            this.f11433a.lazySet(c3115h, thread);
        }

        @Override // androidx.work.impl.utils.p089a.AbstractC3105a.AbstractC3107a
        /* renamed from: a */
        final boolean mo39318a(AbstractC3105a<?> abstractC3105a, C3111d c3111d, C3111d c3111d2) {
            return this.f11436d.compareAndSet(abstractC3105a, c3111d, c3111d2);
        }

        @Override // androidx.work.impl.utils.p089a.AbstractC3105a.AbstractC3107a
        /* renamed from: a */
        final boolean mo39317a(AbstractC3105a<?> abstractC3105a, C3115h c3115h, C3115h c3115h2) {
            return this.f11435c.compareAndSet(abstractC3105a, c3115h, c3115h2);
        }

        @Override // androidx.work.impl.utils.p089a.AbstractC3105a.AbstractC3107a
        /* renamed from: a */
        final boolean mo39316a(AbstractC3105a<?> abstractC3105a, Object obj, Object obj2) {
            return this.f11437e.compareAndSet(abstractC3105a, obj, obj2);
        }
    }

    /* renamed from: androidx.work.impl.utils.a.a$f */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a$f.class */
    public static final class RunnableC3113f<V> implements Runnable {

        /* renamed from: a */
        final AbstractC3105a<V> f11438a;

        /* renamed from: b */
        final AbstractFutureC15579a<? extends V> f11439b;

        RunnableC3113f(AbstractC3105a<V> abstractC3105a, AbstractFutureC15579a<? extends V> abstractFutureC15579a) {
            this.f11438a = abstractC3105a;
            this.f11439b = abstractFutureC15579a;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f11438a.f11420c != this) {
                return;
            }
            if (!AbstractC3105a.f11417b.mo39316a((AbstractC3105a<?>) this.f11438a, (Object) this, AbstractC3105a.m39325b((AbstractFutureC15579a<?>) this.f11439b))) {
                return;
            }
            AbstractC3105a.m39329a((AbstractC3105a<?>) this.f11438a);
        }
    }

    /* renamed from: androidx.work.impl.utils.a.a$g */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a$g.class */
    static final class C3114g extends AbstractC3107a {
        C3114g() {
            super();
        }

        @Override // androidx.work.impl.utils.p089a.AbstractC3105a.AbstractC3107a
        /* renamed from: a */
        final void mo39320a(C3115h c3115h, C3115h c3115h2) {
            c3115h.f11442c = c3115h2;
        }

        @Override // androidx.work.impl.utils.p089a.AbstractC3105a.AbstractC3107a
        /* renamed from: a */
        final void mo39319a(C3115h c3115h, Thread thread) {
            c3115h.f11441b = thread;
        }

        @Override // androidx.work.impl.utils.p089a.AbstractC3105a.AbstractC3107a
        /* renamed from: a */
        final boolean mo39318a(AbstractC3105a<?> abstractC3105a, C3111d c3111d, C3111d c3111d2) {
            synchronized (abstractC3105a) {
                if (abstractC3105a.f11421d == c3111d) {
                    abstractC3105a.f11421d = c3111d2;
                    return true;
                }
                return false;
            }
        }

        @Override // androidx.work.impl.utils.p089a.AbstractC3105a.AbstractC3107a
        /* renamed from: a */
        final boolean mo39317a(AbstractC3105a<?> abstractC3105a, C3115h c3115h, C3115h c3115h2) {
            synchronized (abstractC3105a) {
                if (abstractC3105a.f11422e == c3115h) {
                    abstractC3105a.f11422e = c3115h2;
                    return true;
                }
                return false;
            }
        }

        @Override // androidx.work.impl.utils.p089a.AbstractC3105a.AbstractC3107a
        /* renamed from: a */
        final boolean mo39316a(AbstractC3105a<?> abstractC3105a, Object obj, Object obj2) {
            synchronized (abstractC3105a) {
                if (abstractC3105a.f11420c == obj) {
                    abstractC3105a.f11420c = obj2;
                    return true;
                }
                return false;
            }
        }
    }

    /* renamed from: androidx.work.impl.utils.a.a$h */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/a$h.class */
    public static final class C3115h {

        /* renamed from: a */
        static final C3115h f11440a = new C3115h(false);

        /* renamed from: b */
        volatile Thread f11441b;

        /* renamed from: c */
        volatile C3115h f11442c;

        C3115h() {
            AbstractC3105a.f11417b.mo39319a(this, Thread.currentThread());
        }

        C3115h(boolean z) {
        }

        /* renamed from: a */
        final void m39315a() {
            Thread thread = this.f11441b;
            if (thread != null) {
                this.f11441b = null;
                LockSupport.unpark(thread);
            }
        }

        /* renamed from: a */
        final void m39314a(C3115h c3115h) {
            AbstractC3105a.f11417b.mo39320a(this, c3115h);
        }
    }

    static {
        Throwable th;
        AbstractC3107a abstractC3107a;
        try {
            abstractC3107a = new C3112e(AtomicReferenceFieldUpdater.newUpdater(C3115h.class, Thread.class, C15291b.f55271a), AtomicReferenceFieldUpdater.newUpdater(C3115h.class, C3115h.class, Constants.URL_CAMPAIGN), AtomicReferenceFieldUpdater.newUpdater(AbstractC3105a.class, C3115h.class, "e"), AtomicReferenceFieldUpdater.newUpdater(AbstractC3105a.class, C3111d.class, "d"), AtomicReferenceFieldUpdater.newUpdater(AbstractC3105a.class, Object.class, Constants.URL_CAMPAIGN));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            abstractC3107a = new C3114g();
        }
        f11417b = abstractC3107a;
        if (th != null) {
            f11418f.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f11419g = new Object();
    }

    /* renamed from: a */
    private C3111d m39331a(C3111d c3111d) {
        C3111d c3111d2;
        do {
            c3111d2 = this.f11421d;
        } while (!f11417b.mo39318a((AbstractC3105a<?>) this, c3111d2, C3111d.f11429a));
        while (true) {
            C3111d c3111d3 = c3111d;
            c3111d = c3111d2;
            if (c3111d != null) {
                c3111d2 = c3111d.f11432d;
                c3111d.f11432d = c3111d3;
            } else {
                return c3111d3;
            }
        }
    }

    /* renamed from: a */
    private static <V> V m39326a(Future<V> future) throws ExecutionException {
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
    private static CancellationException m39328a(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    /* renamed from: a */
    private void m39332a() {
        C3115h c3115h;
        do {
            c3115h = this.f11422e;
        } while (!f11417b.mo39317a((AbstractC3105a<?>) this, c3115h, C3115h.f11440a));
        while (c3115h != null) {
            c3115h.m39315a();
            c3115h = c3115h.f11442c;
        }
    }

    /* renamed from: a */
    private void m39330a(C3115h c3115h) {
        c3115h.f11441b = null;
        while (true) {
            C3115h c3115h2 = this.f11422e;
            if (c3115h2 == C3115h.f11440a) {
                return;
            }
            C3115h c3115h3 = null;
            while (c3115h2 != null) {
                C3115h c3115h4 = c3115h2.f11442c;
                if (c3115h2.f11441b == null) {
                    if (c3115h3 != null) {
                        c3115h3.f11442c = c3115h4;
                        c3115h2 = c3115h3;
                        if (c3115h3.f11441b == null) {
                            break;
                        }
                    } else if (f11417b.mo39317a((AbstractC3105a<?>) this, c3115h2, c3115h4)) {
                        c3115h2 = c3115h3;
                    }
                }
                c3115h3 = c3115h2;
                c3115h2 = c3115h4;
            }
            return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [androidx.work.impl.utils.a.a, androidx.work.impl.utils.a.a<V>] */
    /* JADX WARN: Type inference failed for: r0v26, types: [androidx.work.impl.utils.a.a$a] */
    /* renamed from: a */
    static void m39329a(AbstractC3105a<?> abstractC3105a) {
        C3111d c3111d = null;
        AbstractC3105a<?> abstractC3105a2 = abstractC3105a;
        while (true) {
            abstractC3105a2.m39332a();
            C3111d m39331a = abstractC3105a2.m39331a(c3111d);
            while (true) {
                C3111d c3111d2 = m39331a;
                if (c3111d2 != null) {
                    C3111d c3111d3 = c3111d2.f11432d;
                    Runnable runnable = c3111d2.f11430b;
                    if (runnable instanceof RunnableC3113f) {
                        RunnableC3113f runnableC3113f = (RunnableC3113f) runnable;
                        AbstractC3105a<V> abstractC3105a3 = runnableC3113f.f11438a;
                        if (abstractC3105a3.f11420c == runnableC3113f) {
                            c3111d = c3111d3;
                            abstractC3105a2 = abstractC3105a3;
                            if (!f11417b.mo39316a(abstractC3105a3, runnableC3113f, m39325b((AbstractFutureC15579a<?>) runnableC3113f.f11439b))) {
                            }
                        } else {
                            continue;
                        }
                    } else {
                        m39323b(runnable, c3111d2.f11431c);
                    }
                    m39331a = c3111d3;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    private void m39327a(StringBuilder sb) {
        try {
            Object m39326a = m39326a((Future<Object>) this);
            sb.append("SUCCESS, result=[");
            sb.append(m39321d(m39326a));
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
    static Object m39325b(AbstractFutureC15579a<?> abstractFutureC15579a) {
        if (abstractFutureC15579a instanceof AbstractC3105a) {
            Object obj = ((AbstractC3105a) abstractFutureC15579a).f11420c;
            C3108b c3108b = obj;
            if (obj instanceof C3108b) {
                C3108b c3108b2 = (C3108b) obj;
                c3108b = obj;
                if (c3108b2.f11425c) {
                    c3108b = c3108b2.f11426d != null ? new C3108b(false, c3108b2.f11426d) : C3108b.f11424b;
                }
            }
            return c3108b;
        }
        boolean isCancelled = abstractFutureC15579a.isCancelled();
        if ((!f11416a) && isCancelled) {
            return C3108b.f11424b;
        }
        try {
            Object m39326a = m39326a((Future<Object>) abstractFutureC15579a);
            return m39326a == null ? f11419g : m39326a;
        } catch (CancellationException e) {
            return !isCancelled ? new C3109c(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(abstractFutureC15579a)), e)) : new C3108b(false, e);
        } catch (ExecutionException e2) {
            return new C3109c(e2.getCause());
        } catch (Throwable th) {
            return new C3109c(th);
        }
    }

    /* renamed from: b */
    static <T> T m39324b(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: b */
    private static void m39323b(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = f11418f;
            Level level = Level.SEVERE;
            logger.log(level, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    /* renamed from: c */
    private static V m39322c(Object obj) throws ExecutionException {
        if (!(obj instanceof C3108b)) {
            if (obj instanceof C3109c) {
                throw new ExecutionException(((C3109c) obj).f11428b);
            }
            Object obj2 = obj;
            if (obj == f11419g) {
                obj2 = null;
            }
            return (V) obj2;
        }
        throw m39328a("Task was cancelled.", ((C3108b) obj).f11426d);
    }

    /* renamed from: d */
    private String m39321d(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    @Override // com.google.common.util.concurrent.AbstractFutureC15579a
    /* renamed from: a */
    public final void mo8638a(Runnable runnable, Executor executor) {
        C3111d c3111d;
        m39324b(runnable);
        m39324b(executor);
        C3111d c3111d2 = this.f11421d;
        if (c3111d2 == C3111d.f11429a) {
            m39323b(runnable, executor);
        }
        C3111d c3111d3 = new C3111d(runnable, executor);
        do {
            c3111d3.f11432d = c3111d2;
            if (f11417b.mo39318a((AbstractC3105a<?>) this, c3111d2, c3111d3)) {
                return;
            }
            c3111d = this.f11421d;
            c3111d2 = c3111d;
        } while (c3111d != C3111d.f11429a);
        m39323b(runnable, executor);
    }

    /* renamed from: a */
    public boolean mo39312a(AbstractFutureC15579a<? extends V> abstractFutureC15579a) {
        C3109c c3109c;
        m39324b(abstractFutureC15579a);
        Object obj = this.f11420c;
        Object obj2 = obj;
        if (obj == null) {
            if (abstractFutureC15579a.isDone()) {
                if (!f11417b.mo39316a((AbstractC3105a<?>) this, (Object) null, m39325b((AbstractFutureC15579a<?>) abstractFutureC15579a))) {
                    return false;
                }
                m39329a((AbstractC3105a<?>) this);
                return true;
            }
            RunnableC3113f runnableC3113f = new RunnableC3113f(this, abstractFutureC15579a);
            if (f11417b.mo39316a((AbstractC3105a<?>) this, (Object) null, (Object) runnableC3113f)) {
                try {
                    abstractFutureC15579a.mo8638a(runnableC3113f, EnumC3116b.INSTANCE);
                    return true;
                } catch (Throwable th) {
                    try {
                        c3109c = new C3109c(th);
                    } catch (Throwable th2) {
                        c3109c = C3109c.f11427a;
                    }
                    f11417b.mo39316a((AbstractC3105a<?>) this, (Object) runnableC3113f, (Object) c3109c);
                    return true;
                }
            }
            obj2 = this.f11420c;
        }
        if (obj2 instanceof C3108b) {
            abstractFutureC15579a.cancel(((C3108b) obj2).f11425c);
            return false;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public boolean mo39311a(V v) {
        V v2 = v;
        if (v == null) {
            v2 = f11419g;
        }
        if (f11417b.mo39316a((AbstractC3105a<?>) this, (Object) null, (Object) v2)) {
            m39329a((AbstractC3105a<?>) this);
            return true;
        }
        return false;
    }

    /* renamed from: a */
    public boolean mo39310a(Throwable th) {
        if (f11417b.mo39316a((AbstractC3105a<?>) this, (Object) null, (Object) new C3109c((Throwable) m39324b(th)))) {
            m39329a((AbstractC3105a<?>) this);
            return true;
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean z2;
        Object obj = this.f11420c;
        if ((obj == null) || (obj instanceof RunnableC3113f)) {
            C3108b c3108b = f11416a ? new C3108b(z, new CancellationException("Future.cancel() was called.")) : z ? C3108b.f11423a : C3108b.f11424b;
            z2 = false;
            AbstractC3105a<V> abstractC3105a = this;
            while (true) {
                if (f11417b.mo39316a((AbstractC3105a<?>) abstractC3105a, obj, (Object) c3108b)) {
                    m39329a((AbstractC3105a<?>) abstractC3105a);
                    z2 = true;
                    if (!(obj instanceof RunnableC3113f)) {
                        break;
                    }
                    AbstractFutureC15579a<? extends V> abstractFutureC15579a = ((RunnableC3113f) obj).f11439b;
                    if (!(abstractFutureC15579a instanceof AbstractC3105a)) {
                        abstractFutureC15579a.cancel(z);
                        z2 = true;
                        break;
                    }
                    abstractC3105a = (AbstractC3105a) abstractFutureC15579a;
                    obj = abstractC3105a.f11420c;
                    z2 = true;
                    if (!(obj == null) && !(obj instanceof RunnableC3113f)) {
                        break;
                    }
                    z2 = true;
                } else {
                    Object obj2 = abstractC3105a.f11420c;
                    obj = obj2;
                    if (!(obj2 instanceof RunnableC3113f)) {
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
        if (java.lang.Thread.interrupted() != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0055, code lost:
        r0 = r5.f11420c;
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
        if ((r7 & (!(r0 instanceof androidx.work.impl.utils.p089a.AbstractC3105a.RunnableC3113f))) == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0074, code lost:
        return (V) m39322c(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0075, code lost:
        m39330a(r0);
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
            if (r0 != 0) goto L9b
            r0 = r5
            java.lang.Object r0 = r0.f11420c
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
            boolean r1 = r1 instanceof androidx.work.impl.utils.p089a.AbstractC3105a.RunnableC3113f
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L26
            r0 = r6
            java.lang.Object r0 = m39322c(r0)
            return r0
        L26:
            r0 = r5
            androidx.work.impl.utils.a.a$h r0 = r0.f11422e
            r6 = r0
            r0 = r6
            androidx.work.impl.utils.a.a$h r1 = androidx.work.impl.utils.p089a.AbstractC3105a.C3115h.f11440a
            if (r0 == r1) goto L93
            androidx.work.impl.utils.a.a$h r0 = new androidx.work.impl.utils.a.a$h
            r1 = r0
            r1.<init>()
            r8 = r0
        L3a:
            r0 = r8
            r1 = r6
            r0.m39314a(r1)
            androidx.work.impl.utils.a.a$a r0 = androidx.work.impl.utils.p089a.AbstractC3105a.f11417b
            r1 = r5
            r2 = r6
            r3 = r8
            boolean r0 = r0.mo39317a(r1, r2, r3)
            if (r0 == 0) goto L82
        L4b:
            r0 = r5
            java.util.concurrent.locks.LockSupport.park(r0)
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto L75
            r0 = r5
            java.lang.Object r0 = r0.f11420c
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
            boolean r1 = r1 instanceof androidx.work.impl.utils.p089a.AbstractC3105a.RunnableC3113f
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L4b
            r0 = r6
            java.lang.Object r0 = m39322c(r0)
            return r0
        L75:
            r0 = r5
            r1 = r8
            r0.m39330a(r1)
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        L82:
            r0 = r5
            androidx.work.impl.utils.a.a$h r0 = r0.f11422e
            r9 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            androidx.work.impl.utils.a.a$h r1 = androidx.work.impl.utils.p089a.AbstractC3105a.C3115h.f11440a
            if (r0 != r1) goto L3a
        L93:
            r0 = r5
            java.lang.Object r0 = r0.f11420c
            java.lang.Object r0 = m39322c(r0)
            return r0
        L9b:
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.p089a.AbstractC3105a.get():java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0082, code lost:
        java.util.concurrent.locks.LockSupport.parkNanos(r6, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008b, code lost:
        if (java.lang.Thread.interrupted() != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008e, code lost:
        r0 = r6.f11420c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0096, code lost:
        if (r0 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0099, code lost:
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009f, code lost:
        r13 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ac, code lost:
        if ((r13 & (!(r0 instanceof androidx.work.impl.utils.p089a.AbstractC3105a.RunnableC3113f))) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b4, code lost:
        return (V) m39322c(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b5, code lost:
        r16 = r14 - java.lang.System.nanoTime();
        r10 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c7, code lost:
        if (r16 >= 1000) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ca, code lost:
        m39330a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d3, code lost:
        m39330a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e0, code lost:
        throw new java.lang.InterruptedException();
     */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v127, types: [long] */
    /* JADX WARN: Type inference failed for: r0v152, types: [long] */
    /* JADX WARN: Type inference failed for: r0v165, types: [long] */
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.p089a.AbstractC3105a.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f11420c instanceof C3108b;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.f11420c;
        return (!(obj instanceof RunnableC3113f)) & (obj != null);
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
            m39327a(sb);
        } else {
            try {
                if (this.f11420c instanceof RunnableC3113f) {
                    str = "setFuture=[" + m39321d(((RunnableC3113f) obj).f11439b) + "]";
                } else if (this instanceof ScheduledFuture) {
                    str = "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
                } else {
                    str = null;
                }
            } catch (RuntimeException e) {
                str = "Exception thrown from implementation: " + e.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                m39327a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
