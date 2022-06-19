package androidx.concurrent.futures;

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
/* loaded from: classes-dex2jar.jar:androidx/concurrent/futures/AbstractResolvableFuture.class */
public abstract class AbstractResolvableFuture<V> implements ListenableFuture<V> {
    static final AtomicHelper ATOMIC_HELPER;
    private static final Object NULL;
    private static final long SPIN_THRESHOLD_NANOS = 1000;
    volatile Listener listeners;
    volatile Object value;
    volatile Waiter waiters;
    static final boolean GENERATE_CANCELLATION_CAUSES = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    private static final Logger log = Logger.getLogger(AbstractResolvableFuture.class.getName());

    /* loaded from: classes-dex2jar.jar:androidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper.class */
    public static abstract class AtomicHelper {
        private AtomicHelper() {
        }

        abstract boolean casListeners(AbstractResolvableFuture<?> abstractResolvableFuture, Listener listener, Listener listener2);

        abstract boolean casValue(AbstractResolvableFuture<?> abstractResolvableFuture, Object obj, Object obj2);

        abstract boolean casWaiters(AbstractResolvableFuture<?> abstractResolvableFuture, Waiter waiter, Waiter waiter2);

        abstract void putNext(Waiter waiter, Waiter waiter2);

        abstract void putThread(Waiter waiter, Thread thread);
    }

    /* loaded from: classes-dex2jar.jar:androidx/concurrent/futures/AbstractResolvableFuture$Cancellation.class */
    public static final class Cancellation {
        static final Cancellation CAUSELESS_CANCELLED;
        static final Cancellation CAUSELESS_INTERRUPTED;
        final Throwable cause;
        final boolean wasInterrupted;

        static {
            if (AbstractResolvableFuture.GENERATE_CANCELLATION_CAUSES) {
                CAUSELESS_CANCELLED = null;
                CAUSELESS_INTERRUPTED = null;
                return;
            }
            CAUSELESS_CANCELLED = new Cancellation(false, null);
            CAUSELESS_INTERRUPTED = new Cancellation(true, null);
        }

        Cancellation(boolean z, Throwable th) {
            this.wasInterrupted = z;
            this.cause = th;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/concurrent/futures/AbstractResolvableFuture$Failure.class */
    public static final class Failure {
        static final Failure FALLBACK_INSTANCE = new Failure(new Throwable("Failure occurred while trying to finish a future.") { // from class: androidx.concurrent.futures.AbstractResolvableFuture.Failure.1
            @Override // java.lang.Throwable
            public Throwable fillInStackTrace() {
                synchronized (this) {
                }
                return this;
            }
        });
        final Throwable exception;

        Failure(Throwable th) {
            this.exception = (Throwable) AbstractResolvableFuture.checkNotNull(th);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/concurrent/futures/AbstractResolvableFuture$Listener.class */
    public static final class Listener {
        static final Listener TOMBSTONE = new Listener(null, null);
        final Executor executor;
        Listener next;
        final Runnable task;

        Listener(Runnable runnable, Executor executor) {
            this.task = runnable;
            this.executor = executor;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper.class */
    private static final class SafeAtomicHelper extends AtomicHelper {
        final AtomicReferenceFieldUpdater<AbstractResolvableFuture, Listener> listenersUpdater;
        final AtomicReferenceFieldUpdater<AbstractResolvableFuture, Object> valueUpdater;
        final AtomicReferenceFieldUpdater<Waiter, Waiter> waiterNextUpdater;
        final AtomicReferenceFieldUpdater<Waiter, Thread> waiterThreadUpdater;
        final AtomicReferenceFieldUpdater<AbstractResolvableFuture, Waiter> waitersUpdater;

        SafeAtomicHelper(AtomicReferenceFieldUpdater<Waiter, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<Waiter, Waiter> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<AbstractResolvableFuture, Waiter> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<AbstractResolvableFuture, Listener> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<AbstractResolvableFuture, Object> atomicReferenceFieldUpdater5) {
            super();
            this.waiterThreadUpdater = atomicReferenceFieldUpdater;
            this.waiterNextUpdater = atomicReferenceFieldUpdater2;
            this.waitersUpdater = atomicReferenceFieldUpdater3;
            this.listenersUpdater = atomicReferenceFieldUpdater4;
            this.valueUpdater = atomicReferenceFieldUpdater5;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        boolean casListeners(AbstractResolvableFuture<?> abstractResolvableFuture, Listener listener, Listener listener2) {
            return this.listenersUpdater.compareAndSet(abstractResolvableFuture, listener, listener2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        boolean casValue(AbstractResolvableFuture<?> abstractResolvableFuture, Object obj, Object obj2) {
            return this.valueUpdater.compareAndSet(abstractResolvableFuture, obj, obj2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        boolean casWaiters(AbstractResolvableFuture<?> abstractResolvableFuture, Waiter waiter, Waiter waiter2) {
            return this.waitersUpdater.compareAndSet(abstractResolvableFuture, waiter, waiter2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        void putNext(Waiter waiter, Waiter waiter2) {
            this.waiterNextUpdater.lazySet(waiter, waiter2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        void putThread(Waiter waiter, Thread thread) {
            this.waiterThreadUpdater.lazySet(waiter, thread);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/concurrent/futures/AbstractResolvableFuture$SetFuture.class */
    public static final class SetFuture<V> implements Runnable {
        final ListenableFuture<? extends V> future;
        final AbstractResolvableFuture<V> owner;

        SetFuture(AbstractResolvableFuture<V> abstractResolvableFuture, ListenableFuture<? extends V> listenableFuture) {
            this.owner = abstractResolvableFuture;
            this.future = listenableFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.owner.value != this) {
                return;
            }
            if (!AbstractResolvableFuture.ATOMIC_HELPER.casValue(this.owner, this, AbstractResolvableFuture.getFutureValue(this.future))) {
                return;
            }
            AbstractResolvableFuture.complete(this.owner);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/concurrent/futures/AbstractResolvableFuture$SynchronizedHelper.class */
    private static final class SynchronizedHelper extends AtomicHelper {
        SynchronizedHelper() {
            super();
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        boolean casListeners(AbstractResolvableFuture<?> abstractResolvableFuture, Listener listener, Listener listener2) {
            synchronized (abstractResolvableFuture) {
                if (abstractResolvableFuture.listeners == listener) {
                    abstractResolvableFuture.listeners = listener2;
                    return true;
                }
                return false;
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        boolean casValue(AbstractResolvableFuture<?> abstractResolvableFuture, Object obj, Object obj2) {
            synchronized (abstractResolvableFuture) {
                if (abstractResolvableFuture.value == obj) {
                    abstractResolvableFuture.value = obj2;
                    return true;
                }
                return false;
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        boolean casWaiters(AbstractResolvableFuture<?> abstractResolvableFuture, Waiter waiter, Waiter waiter2) {
            synchronized (abstractResolvableFuture) {
                if (abstractResolvableFuture.waiters == waiter) {
                    abstractResolvableFuture.waiters = waiter2;
                    return true;
                }
                return false;
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        void putNext(Waiter waiter, Waiter waiter2) {
            waiter.next = waiter2;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        void putThread(Waiter waiter, Thread thread) {
            waiter.thread = thread;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/concurrent/futures/AbstractResolvableFuture$Waiter.class */
    public static final class Waiter {
        static final Waiter TOMBSTONE = new Waiter(false);
        volatile Waiter next;
        volatile Thread thread;

        Waiter() {
            AbstractResolvableFuture.ATOMIC_HELPER.putThread(this, Thread.currentThread());
        }

        Waiter(boolean z) {
        }

        void setNext(Waiter waiter) {
            AbstractResolvableFuture.ATOMIC_HELPER.putNext(this, waiter);
        }

        void unpark() {
            Thread thread = this.thread;
            if (thread != null) {
                this.thread = null;
                LockSupport.unpark(thread);
            }
        }
    }

    static {
        Throwable th;
        AtomicHelper atomicHelper;
        try {
            atomicHelper = new SafeAtomicHelper(AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Thread.class, "thread"), AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Waiter.class, "next"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, Waiter.class, "waiters"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, Listener.class, "listeners"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, Object.class, "value"));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            atomicHelper = new SynchronizedHelper();
        }
        ATOMIC_HELPER = atomicHelper;
        if (th != null) {
            log.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        NULL = new Object();
    }

    private void addDoneString(StringBuilder sb) {
        try {
            Object uninterruptibly = getUninterruptibly(this);
            sb.append("SUCCESS, result=[");
            sb.append(userObjectToString(uninterruptibly));
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

    private static CancellationException cancellationExceptionWithCause(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    static <T> T checkNotNull(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    private Listener clearListeners(Listener listener) {
        Listener listener2;
        do {
            listener2 = this.listeners;
        } while (!ATOMIC_HELPER.casListeners(this, listener2, Listener.TOMBSTONE));
        while (true) {
            Listener listener3 = listener;
            listener = listener2;
            if (listener != null) {
                listener2 = listener.next;
                listener.next = listener3;
            } else {
                return listener3;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [androidx.concurrent.futures.AbstractResolvableFuture<V>] */
    static void complete(AbstractResolvableFuture<?> abstractResolvableFuture) {
        AbstractResolvableFuture<?> abstractResolvableFuture2 = abstractResolvableFuture;
        Listener listener = null;
        while (true) {
            abstractResolvableFuture2.releaseWaiters();
            abstractResolvableFuture2.afterDone();
            Listener clearListeners = abstractResolvableFuture2.clearListeners(listener);
            while (true) {
                Listener listener2 = clearListeners;
                if (listener2 != null) {
                    listener = listener2.next;
                    Runnable runnable = listener2.task;
                    if (runnable instanceof SetFuture) {
                        SetFuture setFuture = (SetFuture) runnable;
                        abstractResolvableFuture2 = setFuture.owner;
                        if (abstractResolvableFuture2.value == setFuture) {
                            if (ATOMIC_HELPER.casValue(abstractResolvableFuture2, setFuture, getFutureValue(setFuture.future))) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        executeListener(runnable, listener2.executor);
                    }
                    clearListeners = listener;
                } else {
                    return;
                }
            }
        }
    }

    private static void executeListener(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = log;
            Level level = Level.SEVERE;
            logger.log(level, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    private V getDoneValue(Object obj) throws ExecutionException {
        if (!(obj instanceof Cancellation)) {
            if (obj instanceof Failure) {
                throw new ExecutionException(((Failure) obj).exception);
            }
            Object obj2 = obj;
            if (obj == NULL) {
                obj2 = null;
            }
            return (V) obj2;
        }
        throw cancellationExceptionWithCause("Task was cancelled.", ((Cancellation) obj).cause);
    }

    static Object getFutureValue(ListenableFuture<?> listenableFuture) {
        if (listenableFuture instanceof AbstractResolvableFuture) {
            Object obj = ((AbstractResolvableFuture) listenableFuture).value;
            Cancellation cancellation = obj;
            if (obj instanceof Cancellation) {
                Cancellation cancellation2 = (Cancellation) obj;
                cancellation = obj;
                if (cancellation2.wasInterrupted) {
                    cancellation = cancellation2.cause != null ? new Cancellation(false, cancellation2.cause) : Cancellation.CAUSELESS_CANCELLED;
                }
            }
            return cancellation;
        }
        boolean isCancelled = listenableFuture.isCancelled();
        if ((!GENERATE_CANCELLATION_CAUSES) && isCancelled) {
            return Cancellation.CAUSELESS_CANCELLED;
        }
        try {
            Object uninterruptibly = getUninterruptibly(listenableFuture);
            Object obj2 = uninterruptibly;
            if (uninterruptibly == null) {
                obj2 = NULL;
            }
            return obj2;
        } catch (CancellationException e) {
            if (isCancelled) {
                return new Cancellation(false, e);
            }
            return new Failure(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + listenableFuture, e));
        } catch (ExecutionException e2) {
            return new Failure(e2.getCause());
        } catch (Throwable th) {
            return new Failure(th);
        }
    }

    private static <V> V getUninterruptibly(Future<V> future) throws ExecutionException {
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

    private void releaseWaiters() {
        Waiter waiter;
        do {
            waiter = this.waiters;
        } while (!ATOMIC_HELPER.casWaiters(this, waiter, Waiter.TOMBSTONE));
        while (waiter != null) {
            waiter.unpark();
            waiter = waiter.next;
        }
    }

    private void removeWaiter(Waiter waiter) {
        Waiter waiter2;
        waiter.thread = null;
        while (true) {
            Waiter waiter3 = this.waiters;
            if (waiter3 == Waiter.TOMBSTONE) {
                return;
            }
            Waiter waiter4 = null;
            while (true) {
                Waiter waiter5 = waiter4;
                if (waiter3 == null) {
                    return;
                }
                Waiter waiter6 = waiter3.next;
                if (waiter3.thread != null) {
                    waiter2 = waiter3;
                } else if (waiter5 != null) {
                    waiter5.next = waiter6;
                    waiter2 = waiter5;
                    if (waiter5.thread == null) {
                        break;
                    }
                } else {
                    waiter2 = waiter5;
                    if (!ATOMIC_HELPER.casWaiters(this, waiter3, waiter6)) {
                        break;
                    }
                }
                waiter3 = waiter6;
                waiter4 = waiter2;
            }
        }
    }

    private String userObjectToString(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void addListener(Runnable runnable, Executor executor) {
        Listener listener;
        checkNotNull(runnable);
        checkNotNull(executor);
        Listener listener2 = this.listeners;
        if (listener2 == Listener.TOMBSTONE) {
            executeListener(runnable, executor);
        }
        Listener listener3 = new Listener(runnable, executor);
        do {
            listener3.next = listener2;
            if (ATOMIC_HELPER.casListeners(this, listener2, listener3)) {
                return;
            }
            listener = this.listeners;
            listener2 = listener;
        } while (listener != Listener.TOMBSTONE);
        executeListener(runnable, executor);
    }

    protected void afterDone() {
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean z2;
        Object obj = this.value;
        if ((obj == null) || (obj instanceof SetFuture)) {
            Cancellation cancellation = GENERATE_CANCELLATION_CAUSES ? new Cancellation(z, new CancellationException("Future.cancel() was called.")) : z ? Cancellation.CAUSELESS_INTERRUPTED : Cancellation.CAUSELESS_CANCELLED;
            z2 = false;
            AbstractResolvableFuture<V> abstractResolvableFuture = this;
            while (true) {
                if (ATOMIC_HELPER.casValue(abstractResolvableFuture, obj, cancellation)) {
                    if (z) {
                        abstractResolvableFuture.interruptTask();
                    }
                    complete(abstractResolvableFuture);
                    z2 = true;
                    if (!(obj instanceof SetFuture)) {
                        break;
                    }
                    ListenableFuture<? extends V> listenableFuture = ((SetFuture) obj).future;
                    if (!(listenableFuture instanceof AbstractResolvableFuture)) {
                        listenableFuture.cancel(z);
                        z2 = true;
                        break;
                    }
                    abstractResolvableFuture = (AbstractResolvableFuture) listenableFuture;
                    obj = abstractResolvableFuture.value;
                    z2 = true;
                    if (!(obj == null) && !(obj instanceof SetFuture)) {
                        break;
                    }
                    z2 = true;
                } else {
                    Object obj2 = abstractResolvableFuture.value;
                    obj = obj2;
                    if (!(obj2 instanceof SetFuture)) {
                        break;
                    }
                }
            }
        } else {
            z2 = false;
        }
        return z2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
        java.util.concurrent.locks.LockSupport.park(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0053, code lost:
        if (java.lang.Thread.interrupted() != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0056, code lost:
        r0 = r5.value;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005c, code lost:
        if (r0 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005f, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0064, code lost:
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006e, code lost:
        if ((r7 & (!(r0 instanceof androidx.concurrent.futures.AbstractResolvableFuture.SetFuture))) == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0076, code lost:
        return getDoneValue(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0077, code lost:
        removeWaiter(r0);
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
            if (r0 != 0) goto L9e
            r0 = r5
            java.lang.Object r0 = r0.value
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
            boolean r1 = r1 instanceof androidx.concurrent.futures.AbstractResolvableFuture.SetFuture
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L27
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.getDoneValue(r1)
            return r0
        L27:
            r0 = r5
            androidx.concurrent.futures.AbstractResolvableFuture$Waiter r0 = r0.waiters
            r6 = r0
            r0 = r6
            androidx.concurrent.futures.AbstractResolvableFuture$Waiter r1 = androidx.concurrent.futures.AbstractResolvableFuture.Waiter.TOMBSTONE
            if (r0 == r1) goto L95
            androidx.concurrent.futures.AbstractResolvableFuture$Waiter r0 = new androidx.concurrent.futures.AbstractResolvableFuture$Waiter
            r1 = r0
            r1.<init>()
            r8 = r0
        L3b:
            r0 = r8
            r1 = r6
            r0.setNext(r1)
            androidx.concurrent.futures.AbstractResolvableFuture$AtomicHelper r0 = androidx.concurrent.futures.AbstractResolvableFuture.ATOMIC_HELPER
            r1 = r5
            r2 = r6
            r3 = r8
            boolean r0 = r0.casWaiters(r1, r2, r3)
            if (r0 == 0) goto L84
        L4c:
            r0 = r5
            java.util.concurrent.locks.LockSupport.park(r0)
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto L77
            r0 = r5
            java.lang.Object r0 = r0.value
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L64
            r0 = 1
            r7 = r0
            goto L66
        L64:
            r0 = 0
            r7 = r0
        L66:
            r0 = r7
            r1 = r6
            boolean r1 = r1 instanceof androidx.concurrent.futures.AbstractResolvableFuture.SetFuture
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L4c
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.getDoneValue(r1)
            return r0
        L77:
            r0 = r5
            r1 = r8
            r0.removeWaiter(r1)
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        L84:
            r0 = r5
            androidx.concurrent.futures.AbstractResolvableFuture$Waiter r0 = r0.waiters
            r9 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            androidx.concurrent.futures.AbstractResolvableFuture$Waiter r1 = androidx.concurrent.futures.AbstractResolvableFuture.Waiter.TOMBSTONE
            if (r0 != r1) goto L3b
        L95:
            r0 = r5
            r1 = r5
            java.lang.Object r1 = r1.value
            java.lang.Object r0 = r0.getDoneValue(r1)
            return r0
        L9e:
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.concurrent.futures.AbstractResolvableFuture.get():java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0083, code lost:
        java.util.concurrent.locks.LockSupport.parkNanos(r6, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008c, code lost:
        if (java.lang.Thread.interrupted() != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008f, code lost:
        r0 = r6.value;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0097, code lost:
        if (r0 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009a, code lost:
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a0, code lost:
        r13 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ad, code lost:
        if ((r13 & (!(r0 instanceof androidx.concurrent.futures.AbstractResolvableFuture.SetFuture))) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b6, code lost:
        return getDoneValue(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b7, code lost:
        r16 = r14 - java.lang.System.nanoTime();
        r10 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c9, code lost:
        if (r16 >= androidx.concurrent.futures.AbstractResolvableFuture.SPIN_THRESHOLD_NANOS) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00cc, code lost:
        removeWaiter(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d5, code lost:
        removeWaiter(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e2, code lost:
        throw new java.lang.InterruptedException();
     */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v129, types: [long] */
    /* JADX WARN: Type inference failed for: r0v153, types: [long] */
    /* JADX WARN: Type inference failed for: r0v166, types: [long] */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V get(long r7, java.util.concurrent.TimeUnit r9) throws java.lang.InterruptedException, java.util.concurrent.TimeoutException, java.util.concurrent.ExecutionException {
        /*
            Method dump skipped, instructions count: 791
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.concurrent.futures.AbstractResolvableFuture.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    protected void interruptTask() {
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.value instanceof Cancellation;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.value;
        return (!(obj instanceof SetFuture)) & (obj != null);
    }

    final void maybePropagateCancellationTo(Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(wasInterrupted());
        }
    }

    protected String pendingToString() {
        Object obj = this.value;
        if (obj instanceof SetFuture) {
            return "setFuture=[" + userObjectToString(((SetFuture) obj).future) + "]";
        } else if (!(this instanceof ScheduledFuture)) {
            return null;
        } else {
            return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean set(V v) {
        V v2 = v;
        if (v == null) {
            v2 = NULL;
        }
        if (ATOMIC_HELPER.casValue(this, null, v2)) {
            complete(this);
            return true;
        }
        return false;
    }

    public boolean setException(Throwable th) {
        if (ATOMIC_HELPER.casValue(this, null, new Failure((Throwable) checkNotNull(th)))) {
            complete(this);
            return true;
        }
        return false;
    }

    public boolean setFuture(ListenableFuture<? extends V> listenableFuture) {
        Failure failure;
        checkNotNull(listenableFuture);
        Object obj = this.value;
        Object obj2 = obj;
        if (obj == null) {
            if (listenableFuture.isDone()) {
                if (!ATOMIC_HELPER.casValue(this, null, getFutureValue(listenableFuture))) {
                    return false;
                }
                complete(this);
                return true;
            }
            SetFuture setFuture = new SetFuture(this, listenableFuture);
            if (ATOMIC_HELPER.casValue(this, null, setFuture)) {
                try {
                    listenableFuture.addListener(setFuture, DirectExecutor.INSTANCE);
                    return true;
                } catch (Throwable th) {
                    try {
                        failure = new Failure(th);
                    } catch (Throwable th2) {
                        failure = Failure.FALLBACK_INSTANCE;
                    }
                    ATOMIC_HELPER.casValue(this, setFuture, failure);
                    return true;
                }
            }
            obj2 = this.value;
        }
        if (obj2 instanceof Cancellation) {
            listenableFuture.cancel(((Cancellation) obj2).wasInterrupted);
            return false;
        }
        return false;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            addDoneString(sb);
        } else {
            try {
                str = pendingToString();
            } catch (RuntimeException e) {
                str = "Exception thrown from implementation: " + e.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                addDoneString(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    protected final boolean wasInterrupted() {
        Object obj = this.value;
        return (obj instanceof Cancellation) && ((Cancellation) obj).wasInterrupted;
    }
}
