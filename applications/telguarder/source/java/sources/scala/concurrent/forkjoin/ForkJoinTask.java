package scala.concurrent.forkjoin;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.locks.ReentrantLock;
import scala.concurrent.forkjoin.ForkJoinPool;
import sun.misc.Unsafe;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/forkjoin/ForkJoinTask.class */
public abstract class ForkJoinTask<V> implements Future<V>, Serializable {
    static final int CANCELLED = -1073741824;
    static final int DONE_MASK = -268435456;
    static final int EXCEPTIONAL = Integer.MIN_VALUE;
    private static final int EXCEPTION_MAP_CAPACITY = 32;
    static final int NORMAL = -268435456;
    static final int SIGNAL = 65536;
    static final int SMASK = 65535;
    private static final long STATUS;

    /* renamed from: U */
    private static final Unsafe f1618U;
    private static final long serialVersionUID = -7721805057305804111L;
    volatile int status;
    private static final ReentrantLock exceptionTableLock = new ReentrantLock();
    private static final ReferenceQueue<Object> exceptionTableRefQueue = new ReferenceQueue<>();
    private static final ExceptionNode[] exceptionTable = new ExceptionNode[32];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:scala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable.class */
    public static final class AdaptedCallable<T> extends ForkJoinTask<T> implements RunnableFuture<T> {
        private static final long serialVersionUID = 2838392045355241008L;
        final Callable<? extends T> callable;
        T result;

        public AdaptedCallable(Callable<? extends T> callable) {
            Objects.requireNonNull(callable);
            this.callable = callable;
        }

        @Override // scala.concurrent.forkjoin.ForkJoinTask
        public final boolean exec() {
            try {
                this.result = this.callable.call();
                return true;
            } catch (Error e) {
                throw e;
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception e3) {
                throw new RuntimeException(e3);
            }
        }

        @Override // scala.concurrent.forkjoin.ForkJoinTask
        public final T getRawResult() {
            return this.result;
        }

        @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
        public final void run() {
            invoke();
        }

        @Override // scala.concurrent.forkjoin.ForkJoinTask
        public final void setRawResult(T t) {
            this.result = t;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:scala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable.class */
    public static final class AdaptedRunnable<T> extends ForkJoinTask<T> implements RunnableFuture<T> {
        private static final long serialVersionUID = 5232453952276885070L;
        T result;
        final Runnable runnable;

        public AdaptedRunnable(Runnable runnable, T t) {
            Objects.requireNonNull(runnable);
            this.runnable = runnable;
            this.result = t;
        }

        @Override // scala.concurrent.forkjoin.ForkJoinTask
        public final boolean exec() {
            this.runnable.run();
            return true;
        }

        @Override // scala.concurrent.forkjoin.ForkJoinTask
        public final T getRawResult() {
            return this.result;
        }

        @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
        public final void run() {
            invoke();
        }

        @Override // scala.concurrent.forkjoin.ForkJoinTask
        public final void setRawResult(T t) {
            this.result = t;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:scala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnableAction.class */
    public static final class AdaptedRunnableAction extends ForkJoinTask<Void> implements RunnableFuture<Void> {
        private static final long serialVersionUID = 5232453952276885070L;
        final Runnable runnable;

        public AdaptedRunnableAction(Runnable runnable) {
            Objects.requireNonNull(runnable);
            this.runnable = runnable;
        }

        @Override // scala.concurrent.forkjoin.ForkJoinTask
        public final boolean exec() {
            this.runnable.run();
            return true;
        }

        @Override // scala.concurrent.forkjoin.ForkJoinTask
        public final Void getRawResult() {
            return null;
        }

        @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
        public final void run() {
            invoke();
        }

        public final void setRawResult(Void r2) {
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/concurrent/forkjoin/ForkJoinTask$ExceptionNode.class */
    public static final class ExceptionNode extends WeakReference<ForkJoinTask<?>> {

        /* renamed from: ex */
        final Throwable f1619ex;
        ExceptionNode next;
        final long thrower = Thread.currentThread().getId();

        ExceptionNode(ForkJoinTask<?> forkJoinTask, Throwable th, ExceptionNode exceptionNode) {
            super(forkJoinTask, ForkJoinTask.exceptionTableRefQueue);
            this.f1619ex = th;
            this.next = exceptionNode;
        }
    }

    static {
        try {
            Unsafe unsafe = getUnsafe();
            f1618U = unsafe;
            STATUS = unsafe.objectFieldOffset(ForkJoinTask.class.getDeclaredField("status"));
        } catch (Exception e) {
            throw new Error(e);
        }
    }

    public static ForkJoinTask<?> adapt(Runnable runnable) {
        return new AdaptedRunnableAction(runnable);
    }

    public static <T> ForkJoinTask<T> adapt(Runnable runnable, T t) {
        return new AdaptedRunnable(runnable, t);
    }

    public static <T> ForkJoinTask<T> adapt(Callable<? extends T> callable) {
        return new AdaptedCallable(callable);
    }

    public static final void cancelIgnoringExceptions(ForkJoinTask<?> forkJoinTask) {
        if (forkJoinTask == null || forkJoinTask.status < 0) {
            return;
        }
        try {
            forkJoinTask.cancel(false);
        } catch (Throwable th) {
        }
    }

    private void clearExceptionalCompletion() {
        int identityHashCode = System.identityHashCode(this);
        ReentrantLock reentrantLock = exceptionTableLock;
        reentrantLock.lock();
        try {
            ExceptionNode[] exceptionNodeArr = exceptionTable;
            int length = identityHashCode & (exceptionNodeArr.length - 1);
            ExceptionNode exceptionNode = exceptionNodeArr[length];
            ExceptionNode exceptionNode2 = null;
            while (true) {
                if (exceptionNode == null) {
                    break;
                }
                ExceptionNode exceptionNode3 = exceptionNode.next;
                if (exceptionNode.get() != this) {
                    exceptionNode2 = exceptionNode;
                    exceptionNode = exceptionNode3;
                } else if (exceptionNode2 == null) {
                    exceptionNodeArr[length] = exceptionNode3;
                } else {
                    exceptionNode2.next = exceptionNode3;
                }
            }
            expungeStaleExceptions();
            this.status = 0;
        } finally {
            reentrantLock.unlock();
        }
    }

    private int doInvoke() {
        int doExec = doExec();
        if (doExec >= 0) {
            Thread currentThread = Thread.currentThread();
            if (currentThread instanceof ForkJoinWorkerThread) {
                ForkJoinWorkerThread forkJoinWorkerThread = (ForkJoinWorkerThread) currentThread;
                doExec = forkJoinWorkerThread.pool.awaitJoin(forkJoinWorkerThread.workQueue, this);
            } else {
                doExec = externalAwaitDone();
            }
        }
        return doExec;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002f, code lost:
        if (r5 < 0) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int doJoin() {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.status
            r5 = r0
            r0 = r5
            if (r0 >= 0) goto Lc
            goto L47
        Lc:
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r6 = r0
            r0 = r6
            boolean r0 = r0 instanceof scala.concurrent.forkjoin.ForkJoinWorkerThread
            if (r0 == 0) goto L42
            r0 = r6
            scala.concurrent.forkjoin.ForkJoinWorkerThread r0 = (scala.concurrent.forkjoin.ForkJoinWorkerThread) r0
            r6 = r0
            r0 = r6
            scala.concurrent.forkjoin.ForkJoinPool$WorkQueue r0 = r0.workQueue
            r7 = r0
            r0 = r7
            r1 = r4
            boolean r0 = r0.tryUnpush(r1)
            if (r0 == 0) goto L35
            r0 = r4
            int r0 = r0.doExec()
            r5 = r0
            r0 = r5
            if (r0 >= 0) goto L35
            goto L47
        L35:
            r0 = r6
            scala.concurrent.forkjoin.ForkJoinPool r0 = r0.pool
            r1 = r7
            r2 = r4
            int r0 = r0.awaitJoin(r1, r2)
            r5 = r0
            goto L47
        L42:
            r0 = r4
            int r0 = r0.externalAwaitDone()
            r5 = r0
        L47:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.concurrent.forkjoin.ForkJoinTask.doJoin():int");
    }

    private static void expungeStaleExceptions() {
        while (true) {
            Reference<? extends Object> poll = exceptionTableRefQueue.poll();
            if (poll != null) {
                if (poll instanceof ExceptionNode) {
                    ForkJoinTask forkJoinTask = (ForkJoinTask) ((ExceptionNode) poll).get();
                    ExceptionNode[] exceptionNodeArr = exceptionTable;
                    int identityHashCode = System.identityHashCode(forkJoinTask) & (exceptionNodeArr.length - 1);
                    ExceptionNode exceptionNode = exceptionNodeArr[identityHashCode];
                    ExceptionNode exceptionNode2 = null;
                    while (true) {
                        if (exceptionNode != null) {
                            ExceptionNode exceptionNode3 = exceptionNode.next;
                            if (exceptionNode != poll) {
                                exceptionNode2 = exceptionNode;
                                exceptionNode = exceptionNode3;
                            } else if (exceptionNode2 == null) {
                                exceptionNodeArr[identityHashCode] = exceptionNode3;
                            } else {
                                exceptionNode2.next = exceptionNode3;
                            }
                        }
                    }
                }
            } else {
                return;
            }
        }
    }

    private int externalAwaitDone() {
        int i;
        ForkJoinPool.externalHelpJoin(this);
        boolean z = false;
        while (true) {
            i = this.status;
            if (i < 0) {
                break;
            } else if (f1618U.compareAndSwapInt(this, STATUS, i, i | 65536)) {
                synchronized (this) {
                    if (this.status >= 0) {
                        try {
                            wait();
                        } catch (InterruptedException e) {
                            z = true;
                        }
                    } else {
                        notifyAll();
                    }
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return i;
    }

    private int externalInterruptibleAwaitDone() throws InterruptedException {
        if (!Thread.interrupted()) {
            ForkJoinPool.externalHelpJoin(this);
            while (true) {
                int i = this.status;
                if (i < 0) {
                    return i;
                }
                if (f1618U.compareAndSwapInt(this, STATUS, i, i | 65536)) {
                    synchronized (this) {
                        if (this.status >= 0) {
                            wait();
                        } else {
                            notifyAll();
                        }
                    }
                }
            }
        } else {
            throw new InterruptedException();
        }
    }

    public static ForkJoinPool getPool() {
        Thread currentThread = Thread.currentThread();
        return currentThread instanceof ForkJoinWorkerThread ? ((ForkJoinWorkerThread) currentThread).pool : null;
    }

    public static int getQueuedTaskCount() {
        Thread currentThread = Thread.currentThread();
        ForkJoinPool.WorkQueue commonSubmitterQueue = currentThread instanceof ForkJoinWorkerThread ? ((ForkJoinWorkerThread) currentThread).workQueue : ForkJoinPool.commonSubmitterQueue();
        return commonSubmitterQueue == null ? 0 : commonSubmitterQueue.queueSize();
    }

    public static int getSurplusQueuedTaskCount() {
        return ForkJoinPool.getSurplusQueuedTaskCount();
    }

    /* JADX WARN: Finally extract failed */
    private Throwable getThrowableException() {
        Throwable th;
        if ((this.status & (-268435456)) != Integer.MIN_VALUE) {
            return null;
        }
        int identityHashCode = System.identityHashCode(this);
        ReentrantLock reentrantLock = exceptionTableLock;
        reentrantLock.lock();
        try {
            expungeStaleExceptions();
            ExceptionNode[] exceptionNodeArr = exceptionTable;
            ExceptionNode exceptionNode = exceptionNodeArr[identityHashCode & (exceptionNodeArr.length - 1)];
            while (exceptionNode != null) {
                if (exceptionNode.get() == this) {
                    break;
                }
                exceptionNode = exceptionNode.next;
            }
            reentrantLock.unlock();
            if (exceptionNode != null && (th = exceptionNode.f1619ex) != null) {
                return th;
            }
            return null;
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    private static Unsafe getUnsafe() {
        return scala.concurrent.util.Unsafe.instance;
    }

    public static final void helpExpungeStaleExceptions() {
        ReentrantLock reentrantLock = exceptionTableLock;
        if (reentrantLock.tryLock()) {
            try {
                expungeStaleExceptions();
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    public static void helpQuiesce() {
        Thread currentThread = Thread.currentThread();
        if (!(currentThread instanceof ForkJoinWorkerThread)) {
            ForkJoinPool.quiesceCommonPool();
            return;
        }
        ForkJoinWorkerThread forkJoinWorkerThread = (ForkJoinWorkerThread) currentThread;
        forkJoinWorkerThread.pool.helpQuiescePool(forkJoinWorkerThread.workQueue);
    }

    public static boolean inForkJoinPool() {
        return Thread.currentThread() instanceof ForkJoinWorkerThread;
    }

    public static <T extends ForkJoinTask<?>> Collection<T> invokeAll(Collection<T> collection) {
        NullPointerException nullPointerException;
        int i;
        NullPointerException nullPointerException2;
        if (!(collection instanceof RandomAccess) || !(collection instanceof List)) {
            invokeAll((ForkJoinTask[]) collection.toArray(new ForkJoinTask[collection.size()]));
            return collection;
        }
        List list = (List) collection;
        NullPointerException nullPointerException3 = null;
        int size = list.size() - 1;
        int i2 = size;
        while (true) {
            nullPointerException = nullPointerException3;
            i = 1;
            if (i2 >= 0) {
                ForkJoinTask forkJoinTask = (ForkJoinTask) list.get(i2);
                if (forkJoinTask == null) {
                    nullPointerException2 = nullPointerException3;
                    if (nullPointerException3 == null) {
                        nullPointerException2 = new NullPointerException();
                    }
                } else if (i2 != 0) {
                    forkJoinTask.fork();
                    nullPointerException2 = nullPointerException3;
                } else {
                    nullPointerException2 = nullPointerException3;
                    if (forkJoinTask.doInvoke() < -268435456) {
                        nullPointerException2 = nullPointerException3;
                        if (nullPointerException3 == null) {
                            nullPointerException2 = forkJoinTask.getException();
                        }
                    }
                }
                i2--;
                nullPointerException3 = nullPointerException2;
            }
        }
        while (i <= size) {
            ForkJoinTask forkJoinTask2 = (ForkJoinTask) list.get(i);
            NullPointerException nullPointerException4 = nullPointerException;
            if (forkJoinTask2 != null) {
                if (nullPointerException != null) {
                    forkJoinTask2.cancel(false);
                    nullPointerException4 = nullPointerException;
                } else {
                    nullPointerException4 = nullPointerException;
                    if (forkJoinTask2.doJoin() < -268435456) {
                        nullPointerException4 = forkJoinTask2.getException();
                    }
                }
            }
            i++;
            nullPointerException = nullPointerException4;
        }
        if (nullPointerException != null) {
            rethrow(nullPointerException);
        }
        return collection;
    }

    public static void invokeAll(ForkJoinTask<?> forkJoinTask, ForkJoinTask<?> forkJoinTask2) {
        forkJoinTask2.fork();
        int doInvoke = forkJoinTask.doInvoke() & (-268435456);
        if (doInvoke != -268435456) {
            forkJoinTask.reportException(doInvoke);
        }
        int doJoin = forkJoinTask2.doJoin() & (-268435456);
        if (doJoin != -268435456) {
            forkJoinTask2.reportException(doJoin);
        }
    }

    public static void invokeAll(ForkJoinTask<?>... forkJoinTaskArr) {
        int i;
        NullPointerException nullPointerException;
        NullPointerException nullPointerException2;
        int length = forkJoinTaskArr.length - 1;
        NullPointerException nullPointerException3 = null;
        int i2 = length;
        while (true) {
            i = 1;
            nullPointerException = nullPointerException3;
            if (i2 >= 0) {
                ForkJoinTask<?> forkJoinTask = forkJoinTaskArr[i2];
                if (forkJoinTask == null) {
                    nullPointerException2 = nullPointerException3;
                    if (nullPointerException3 == null) {
                        nullPointerException2 = new NullPointerException();
                    }
                } else if (i2 != 0) {
                    forkJoinTask.fork();
                    nullPointerException2 = nullPointerException3;
                } else {
                    nullPointerException2 = nullPointerException3;
                    if (forkJoinTask.doInvoke() < -268435456) {
                        nullPointerException2 = nullPointerException3;
                        if (nullPointerException3 == null) {
                            nullPointerException2 = forkJoinTask.getException();
                        }
                    }
                }
                i2--;
                nullPointerException3 = nullPointerException2;
            }
        }
        while (i <= length) {
            ForkJoinTask<?> forkJoinTask2 = forkJoinTaskArr[i];
            NullPointerException nullPointerException4 = nullPointerException;
            if (forkJoinTask2 != null) {
                if (nullPointerException != null) {
                    forkJoinTask2.cancel(false);
                    nullPointerException4 = nullPointerException;
                } else {
                    nullPointerException4 = nullPointerException;
                    if (forkJoinTask2.doJoin() < -268435456) {
                        nullPointerException4 = forkJoinTask2.getException();
                    }
                }
            }
            i++;
            nullPointerException = nullPointerException4;
        }
        if (nullPointerException != null) {
            rethrow(nullPointerException);
        }
    }

    protected static ForkJoinTask<?> peekNextLocalTask() {
        Thread currentThread = Thread.currentThread();
        ForkJoinPool.WorkQueue commonSubmitterQueue = currentThread instanceof ForkJoinWorkerThread ? ((ForkJoinWorkerThread) currentThread).workQueue : ForkJoinPool.commonSubmitterQueue();
        return commonSubmitterQueue == null ? null : commonSubmitterQueue.peek();
    }

    protected static ForkJoinTask<?> pollNextLocalTask() {
        Thread currentThread = Thread.currentThread();
        return currentThread instanceof ForkJoinWorkerThread ? ((ForkJoinWorkerThread) currentThread).workQueue.nextLocalTask() : null;
    }

    protected static ForkJoinTask<?> pollTask() {
        ForkJoinTask<?> forkJoinTask;
        Thread currentThread = Thread.currentThread();
        if (currentThread instanceof ForkJoinWorkerThread) {
            ForkJoinWorkerThread forkJoinWorkerThread = (ForkJoinWorkerThread) currentThread;
            forkJoinTask = forkJoinWorkerThread.pool.nextTaskFor(forkJoinWorkerThread.workQueue);
        } else {
            forkJoinTask = null;
        }
        return forkJoinTask;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        Object readObject = objectInputStream.readObject();
        if (readObject != null) {
            setExceptionalCompletion((Throwable) readObject);
        }
    }

    private void reportException(int i) {
        if (i != CANCELLED) {
            if (i != Integer.MIN_VALUE) {
                return;
            }
            rethrow(getThrowableException());
            return;
        }
        throw new CancellationException();
    }

    public static void rethrow(Throwable th) {
        if (th != null) {
            if (th instanceof Error) {
                throw ((Error) th);
            }
            if (th instanceof RuntimeException) {
                throw ((RuntimeException) th);
            }
            uncheckedThrow(th);
        }
    }

    private int setCompletion(int i) {
        int i2;
        do {
            i2 = this.status;
            if (i2 < 0) {
                return i2;
            }
        } while (!f1618U.compareAndSwapInt(this, STATUS, i2, i2 | i));
        if ((i2 >>> 16) != 0) {
            synchronized (this) {
                notifyAll();
            }
        }
        return i;
    }

    private int setExceptionalCompletion(Throwable th) {
        int recordExceptionalCompletion = recordExceptionalCompletion(th);
        if (((-268435456) & recordExceptionalCompletion) == Integer.MIN_VALUE) {
            internalPropagateException(th);
        }
        return recordExceptionalCompletion;
    }

    static <T extends Throwable> void uncheckedThrow(Throwable th) throws Throwable {
        if (th == null) {
            return;
        }
        throw th;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getException());
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return (setCompletion(CANCELLED) & (-268435456)) == CANCELLED;
    }

    public final boolean compareAndSetForkJoinTaskTag(short s, short s2) {
        int i;
        do {
            i = this.status;
            if (((short) i) != s) {
                return false;
            }
        } while (!f1618U.compareAndSwapInt(this, STATUS, i, (65535 & s2) | ((-65536) & i)));
        return true;
    }

    public void complete(V v) {
        try {
            setRawResult(v);
            setCompletion(-268435456);
        } catch (Throwable th) {
            setExceptionalCompletion(th);
        }
    }

    public void completeExceptionally(Throwable th) {
        RuntimeException runtimeException = th;
        if (!(th instanceof RuntimeException)) {
            runtimeException = th instanceof Error ? th : new RuntimeException(th);
        }
        setExceptionalCompletion(runtimeException);
    }

    public final int doExec() {
        int i = this.status;
        int i2 = i;
        if (i >= 0) {
            try {
                i2 = i;
                if (exec()) {
                    i2 = setCompletion(-268435456);
                }
            } catch (Throwable th) {
                i2 = setExceptionalCompletion(th);
            }
        }
        return i2;
    }

    protected abstract boolean exec();

    public final ForkJoinTask<V> fork() {
        Thread currentThread = Thread.currentThread();
        if (currentThread instanceof ForkJoinWorkerThread) {
            ((ForkJoinWorkerThread) currentThread).workQueue.push(this);
        } else {
            ForkJoinPool.common.externalPush(this);
        }
        return this;
    }

    @Override // java.util.concurrent.Future
    public final V get() throws InterruptedException, ExecutionException {
        Throwable throwableException;
        int doJoin = (Thread.currentThread() instanceof ForkJoinWorkerThread ? doJoin() : externalInterruptibleAwaitDone()) & (-268435456);
        if (doJoin != CANCELLED) {
            if (doJoin == Integer.MIN_VALUE && (throwableException = getThrowableException()) != null) {
                throw new ExecutionException(throwableException);
            }
            return getRawResult();
        }
        throw new CancellationException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x013b, code lost:
        r21 = r23;
     */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V get(long r9, java.util.concurrent.TimeUnit r11) throws java.lang.InterruptedException, java.util.concurrent.ExecutionException, java.util.concurrent.TimeoutException {
        /*
            Method dump skipped, instructions count: 464
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.concurrent.forkjoin.ForkJoinTask.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    public final Throwable getException() {
        int i = this.status & (-268435456);
        return i >= -268435456 ? null : i == CANCELLED ? new CancellationException() : getThrowableException();
    }

    public final short getForkJoinTaskTag() {
        return (short) this.status;
    }

    public abstract V getRawResult();

    void internalPropagateException(Throwable th) {
    }

    public final V invoke() {
        int doInvoke = doInvoke() & (-268435456);
        if (doInvoke != -268435456) {
            reportException(doInvoke);
        }
        return getRawResult();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return (this.status & (-268435456)) == CANCELLED;
    }

    public final boolean isCompletedAbnormally() {
        return this.status < -268435456;
    }

    public final boolean isCompletedNormally() {
        return (this.status & (-268435456)) == -268435456;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.status < 0;
    }

    public final V join() {
        int doJoin = doJoin() & (-268435456);
        if (doJoin != -268435456) {
            reportException(doJoin);
        }
        return getRawResult();
    }

    public final void quietlyComplete() {
        setCompletion(-268435456);
    }

    public final void quietlyInvoke() {
        doInvoke();
    }

    public final void quietlyJoin() {
        doJoin();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0035, code lost:
        r0[r0] = new scala.concurrent.forkjoin.ForkJoinTask.ExceptionNode(r9, r10, r0[r0]);
     */
    /* JADX WARN: Finally extract failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int recordExceptionalCompletion(java.lang.Throwable r10) {
        /*
            r9 = this;
            r0 = r9
            int r0 = r0.status
            r11 = r0
            r0 = r11
            r12 = r0
            r0 = r11
            if (r0 < 0) goto L77
            r0 = r9
            int r0 = java.lang.System.identityHashCode(r0)
            r12 = r0
            java.util.concurrent.locks.ReentrantLock r0 = scala.concurrent.forkjoin.ForkJoinTask.exceptionTableLock
            r13 = r0
            r0 = r13
            r0.lock()
            expungeStaleExceptions()     // Catch: java.lang.Throwable -> L6f
            scala.concurrent.forkjoin.ForkJoinTask$ExceptionNode[] r0 = scala.concurrent.forkjoin.ForkJoinTask.exceptionTable     // Catch: java.lang.Throwable -> L6f
            r14 = r0
            r0 = r12
            r1 = r14
            int r1 = r1.length     // Catch: java.lang.Throwable -> L6f
            r2 = 1
            int r1 = r1 - r2
            r0 = r0 & r1
            r12 = r0
            r0 = r14
            r1 = r12
            r0 = r0[r1]
            r15 = r0
        L30:
            r0 = r15
            if (r0 != 0) goto L49
            r0 = r14
            r1 = r12
            scala.concurrent.forkjoin.ForkJoinTask$ExceptionNode r2 = new scala.concurrent.forkjoin.ForkJoinTask$ExceptionNode     // Catch: java.lang.Throwable -> L6f
            r3 = r2
            r4 = r9
            r5 = r10
            r6 = r14
            r7 = r12
            r6 = r6[r7]     // Catch: java.lang.Throwable -> L6f
            r3.<init>(r4, r5, r6)     // Catch: java.lang.Throwable -> L6f
            r0[r1] = r2     // Catch: java.lang.Throwable -> L6f
            goto L56
        L49:
            r0 = r15
            java.lang.Object r0 = r0.get()     // Catch: java.lang.Throwable -> L6f
            r16 = r0
            r0 = r16
            r1 = r9
            if (r0 != r1) goto L65
        L56:
            r0 = r13
            r0.unlock()
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            int r0 = r0.setCompletion(r1)
            r12 = r0
            goto L77
        L65:
            r0 = r15
            scala.concurrent.forkjoin.ForkJoinTask$ExceptionNode r0 = r0.next     // Catch: java.lang.Throwable -> L6f
            r15 = r0
            goto L30
        L6f:
            r10 = move-exception
            r0 = r13
            r0.unlock()
            r0 = r10
            throw r0
        L77:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.concurrent.forkjoin.ForkJoinTask.recordExceptionalCompletion(java.lang.Throwable):int");
    }

    public void reinitialize() {
        if ((this.status & (-268435456)) == Integer.MIN_VALUE) {
            clearExceptionalCompletion();
        } else {
            this.status = 0;
        }
    }

    public final short setForkJoinTaskTag(short s) {
        Unsafe unsafe;
        long j;
        int i;
        do {
            unsafe = f1618U;
            j = STATUS;
            i = this.status;
        } while (!unsafe.compareAndSwapInt(this, j, i, ((-65536) & i) | (65535 & s)));
        return (short) i;
    }

    protected abstract void setRawResult(V v);

    public final boolean trySetSignal() {
        int i = this.status;
        return i >= 0 && f1618U.compareAndSwapInt(this, STATUS, i, i | 65536);
    }

    public boolean tryUnfork() {
        Thread currentThread = Thread.currentThread();
        return currentThread instanceof ForkJoinWorkerThread ? ((ForkJoinWorkerThread) currentThread).workQueue.tryUnpush(this) : ForkJoinPool.tryExternalUnpush(this);
    }
}
