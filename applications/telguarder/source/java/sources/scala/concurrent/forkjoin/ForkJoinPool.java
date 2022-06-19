package scala.concurrent.forkjoin;

import java.lang.Thread;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.LongCompanionObject;
import scala.concurrent.forkjoin.ForkJoinTask;
import sun.misc.Unsafe;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/forkjoin/ForkJoinPool.class */
public class ForkJoinPool extends AbstractExecutorService {
    private static final int ABASE;
    private static final long AC_MASK = -281474976710656L;
    private static final int AC_SHIFT = 48;
    private static final long AC_UNIT = 281474976710656L;
    private static final int ASHIFT;
    private static final long CTL;
    private static final int EC_SHIFT = 16;
    private static final int EVENMASK = 65534;
    private static final int E_MASK = Integer.MAX_VALUE;
    private static final int E_SEQ = 65536;
    private static final long FAST_IDLE_TIMEOUT = 200000000;
    static final int FIFO_QUEUE = 1;
    private static final long IDLE_TIMEOUT = 2000000000;
    private static final long INDEXSEED;
    private static final int INT_SIGN = Integer.MIN_VALUE;
    static final int LIFO_QUEUE = 0;
    private static final int MAX_CAP = 32767;
    private static final int MAX_HELP = 64;
    private static final int MAX_SCAN = 131071;
    private static final int MIN_SCAN = 511;
    private static final long PARKBLOCKER;
    private static final long PLOCK;
    private static final int PL_LOCK = 2;
    private static final int PL_SIGNAL = 1;
    private static final int PL_SPINS = 256;
    private static final long QLOCK;
    private static final int SEED_INCREMENT = 1640531527;
    static final int SHARED_QUEUE = -1;
    private static final int SHORT_SIGN = 32768;
    private static final int SHUTDOWN = Integer.MIN_VALUE;
    private static final int SMASK = 65535;
    private static final int SQMASK = 126;
    private static final long STEALCOUNT;
    private static final long STOP_BIT = 2147483648L;
    private static final int ST_SHIFT = 31;
    private static final long TC_MASK = 281470681743360L;
    private static final int TC_SHIFT = 32;
    private static final long TC_UNIT = 4294967296L;
    private static final long TIMEOUT_SLOP = 2000000;

    /* renamed from: U */
    private static final Unsafe f1616U;
    private static final int UAC_MASK = -65536;
    private static final int UAC_SHIFT = 16;
    private static final int UAC_UNIT = 65536;
    private static final int UTC_MASK = 65535;
    private static final int UTC_SHIFT = 0;
    private static final int UTC_UNIT = 1;
    static final ForkJoinPool common;
    static final int commonParallelism;
    public static final ForkJoinWorkerThreadFactory defaultForkJoinWorkerThreadFactory;
    private static final RuntimePermission modifyThreadPermission;
    private static int poolNumberSequence;
    static final ThreadLocal<Submitter> submitters;
    final int config;
    volatile long ctl;
    final ForkJoinWorkerThreadFactory factory;
    volatile int indexSeed;
    volatile long pad00;
    volatile long pad01;
    volatile long pad02;
    volatile long pad03;
    volatile long pad04;
    volatile long pad05;
    volatile long pad06;
    volatile Object pad10;
    volatile Object pad11;
    volatile Object pad12;
    volatile Object pad13;
    volatile Object pad14;
    volatile Object pad15;
    volatile Object pad16;
    volatile Object pad17;
    volatile Object pad18;
    volatile Object pad19;
    volatile Object pad1a;
    volatile Object pad1b;
    volatile int plock;
    volatile long stealCount;
    final Thread.UncaughtExceptionHandler ueh;
    WorkQueue[] workQueues;
    final String workerNamePrefix;

    /* loaded from: classes3-dex2jar.jar:scala/concurrent/forkjoin/ForkJoinPool$DefaultForkJoinWorkerThreadFactory.class */
    static final class DefaultForkJoinWorkerThreadFactory implements ForkJoinWorkerThreadFactory {
        DefaultForkJoinWorkerThreadFactory() {
        }

        @Override // scala.concurrent.forkjoin.ForkJoinPool.ForkJoinWorkerThreadFactory
        public final ForkJoinWorkerThread newThread(ForkJoinPool forkJoinPool) {
            return new ForkJoinWorkerThread(forkJoinPool);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/concurrent/forkjoin/ForkJoinPool$EmptyTask.class */
    public static final class EmptyTask extends ForkJoinTask<Void> {
        private static final long serialVersionUID = -7721805057305804111L;

        EmptyTask() {
            this.status = -268435456;
        }

        @Override // scala.concurrent.forkjoin.ForkJoinTask
        public final boolean exec() {
            return true;
        }

        @Override // scala.concurrent.forkjoin.ForkJoinTask
        public final Void getRawResult() {
            return null;
        }

        public final void setRawResult(Void r2) {
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory.class */
    public interface ForkJoinWorkerThreadFactory {
        ForkJoinWorkerThread newThread(ForkJoinPool forkJoinPool);
    }

    /* loaded from: classes3-dex2jar.jar:scala/concurrent/forkjoin/ForkJoinPool$ManagedBlocker.class */
    public interface ManagedBlocker {
        boolean block() throws InterruptedException;

        boolean isReleasable();
    }

    /* loaded from: classes3-dex2jar.jar:scala/concurrent/forkjoin/ForkJoinPool$Submitter.class */
    public static final class Submitter {
        int seed;

        Submitter(int i) {
            this.seed = i;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/concurrent/forkjoin/ForkJoinPool$WorkQueue.class */
    public static final class WorkQueue {
        private static final int ABASE;
        private static final int ASHIFT;
        static final int INITIAL_QUEUE_CAPACITY = 8192;
        static final int MAXIMUM_QUEUE_CAPACITY = 67108864;
        private static final long QLOCK;

        /* renamed from: U */
        private static final Unsafe f1617U;
        ForkJoinTask<?>[] array;
        volatile ForkJoinTask<?> currentJoin;
        ForkJoinTask<?> currentSteal;
        volatile int eventCount;
        int hint;
        final int mode;
        int nextWait;
        int nsteals;
        final ForkJoinWorkerThread owner;
        volatile long pad00;
        volatile long pad01;
        volatile long pad02;
        volatile long pad03;
        volatile long pad04;
        volatile long pad05;
        volatile long pad06;
        volatile Object pad10;
        volatile Object pad11;
        volatile Object pad12;
        volatile Object pad13;
        volatile Object pad14;
        volatile Object pad15;
        volatile Object pad16;
        volatile Object pad17;
        volatile Object pad18;
        volatile Object pad19;
        volatile Object pad1a;
        volatile Object pad1b;
        volatile Object pad1c;
        volatile Object pad1d;
        volatile Thread parker;
        final ForkJoinPool pool;
        int poolIndex;
        volatile int qlock;
        int seed;
        int top = 4096;
        volatile int base = 4096;

        static {
            try {
                Unsafe unsafe = ForkJoinPool.getUnsafe();
                f1617U = unsafe;
                QLOCK = unsafe.objectFieldOffset(WorkQueue.class.getDeclaredField("qlock"));
                ABASE = unsafe.arrayBaseOffset(ForkJoinTask[].class);
                int arrayIndexScale = unsafe.arrayIndexScale(ForkJoinTask[].class);
                if (((arrayIndexScale - 1) & arrayIndexScale) != 0) {
                    throw new Error("data type scale not a power of two");
                }
                ASHIFT = 31 - Integer.numberOfLeadingZeros(arrayIndexScale);
            } catch (Exception e) {
                throw new Error(e);
            }
        }

        WorkQueue(ForkJoinPool forkJoinPool, ForkJoinWorkerThread forkJoinWorkerThread, int i, int i2) {
            this.pool = forkJoinPool;
            this.owner = forkJoinWorkerThread;
            this.mode = i;
            this.seed = i2;
        }

        private void pollAndExecAll() {
            while (true) {
                ForkJoinTask<?> poll = poll();
                if (poll != null) {
                    poll.doExec();
                } else {
                    return;
                }
            }
        }

        private void popAndExecAll() {
            int length;
            while (true) {
                ForkJoinTask<?>[] forkJoinTaskArr = this.array;
                if (forkJoinTaskArr == null || (length = forkJoinTaskArr.length - 1) < 0) {
                    return;
                }
                int i = this.top - 1;
                if (i - this.base < 0) {
                    return;
                }
                Unsafe unsafe = f1617U;
                long j = ((length & i) << ASHIFT) + ABASE;
                ForkJoinTask forkJoinTask = (ForkJoinTask) unsafe.getObject(forkJoinTaskArr, j);
                if (forkJoinTask == null) {
                    return;
                }
                if (unsafe.compareAndSwapObject(forkJoinTaskArr, j, forkJoinTask, (Object) null)) {
                    this.top = i;
                    forkJoinTask.doExec();
                }
            }
        }

        final void cancelAll() {
            ForkJoinTask.cancelIgnoringExceptions(this.currentJoin);
            ForkJoinTask.cancelIgnoringExceptions(this.currentSteal);
            while (true) {
                ForkJoinTask<?> poll = poll();
                if (poll != null) {
                    ForkJoinTask.cancelIgnoringExceptions(poll);
                } else {
                    return;
                }
            }
        }

        final ForkJoinTask<?>[] growArray() {
            int length;
            int i;
            ForkJoinTask<?>[] forkJoinTaskArr = this.array;
            int length2 = forkJoinTaskArr != null ? forkJoinTaskArr.length << 1 : 8192;
            if (length2 <= MAXIMUM_QUEUE_CAPACITY) {
                ForkJoinTask<?>[] forkJoinTaskArr2 = new ForkJoinTask[length2];
                this.array = forkJoinTaskArr2;
                if (forkJoinTaskArr != null && (length = forkJoinTaskArr.length - 1) >= 0) {
                    int i2 = this.top;
                    int i3 = this.base;
                    if (i2 - i3 > 0) {
                        do {
                            int i4 = ASHIFT;
                            int i5 = ABASE;
                            Unsafe unsafe = f1617U;
                            long j = ((i3 & length) << i4) + i5;
                            ForkJoinTask forkJoinTask = (ForkJoinTask) unsafe.getObjectVolatile(forkJoinTaskArr, j);
                            if (forkJoinTask != null && unsafe.compareAndSwapObject(forkJoinTaskArr, j, forkJoinTask, (Object) null)) {
                                unsafe.putObjectVolatile(forkJoinTaskArr2, ((i3 & (length2 - 1)) << i4) + i5, forkJoinTask);
                            }
                            i = i3 + 1;
                            i3 = i;
                        } while (i != i2);
                    }
                }
                return forkJoinTaskArr2;
            }
            throw new RejectedExecutionException("Queue capacity exceeded");
        }

        final boolean isApparentlyUnblocked() {
            ForkJoinWorkerThread forkJoinWorkerThread;
            Thread.State state;
            return (this.eventCount < 0 || (forkJoinWorkerThread = this.owner) == null || (state = forkJoinWorkerThread.getState()) == Thread.State.BLOCKED || state == Thread.State.WAITING || state == Thread.State.TIMED_WAITING) ? false : true;
        }

        final boolean isEmpty() {
            int i;
            int length;
            int i2 = this.base - this.top;
            boolean z = true;
            if (i2 < 0) {
                if (i2 == -1) {
                    ForkJoinTask<?>[] forkJoinTaskArr = this.array;
                    z = true;
                    if (forkJoinTaskArr != null) {
                        z = true;
                        if (forkJoinTaskArr.length - 1 >= 0) {
                            if (f1617U.getObject(forkJoinTaskArr, (((i - 1) & length) << ASHIFT) + ABASE) == null) {
                                z = true;
                            }
                        }
                    }
                }
                z = false;
            }
            return z;
        }

        public final ForkJoinTask<?> nextLocalTask() {
            return this.mode == 0 ? pop() : poll();
        }

        final int nextSeed() {
            int i = this.seed;
            int i2 = i ^ (i << 13);
            int i3 = i2 ^ (i2 >>> 17);
            int i4 = i3 ^ (i3 << 5);
            this.seed = i4;
            return i4;
        }

        public final ForkJoinTask<?> peek() {
            int length;
            ForkJoinTask<?>[] forkJoinTaskArr = this.array;
            if (forkJoinTaskArr == null || (length = forkJoinTaskArr.length - 1) < 0) {
                return null;
            }
            return (ForkJoinTask) f1617U.getObjectVolatile(forkJoinTaskArr, ((length & (this.mode == 0 ? this.top - 1 : this.base)) << ASHIFT) + ABASE);
        }

        final ForkJoinTask<?> poll() {
            ForkJoinTask<?>[] forkJoinTaskArr;
            while (true) {
                int i = this.base;
                if (i - this.top >= 0 || (forkJoinTaskArr = this.array) == null) {
                    return null;
                }
                int length = forkJoinTaskArr.length;
                int i2 = ASHIFT;
                int i3 = ABASE;
                Unsafe unsafe = f1617U;
                long j = (((length - 1) & i) << i2) + i3;
                ForkJoinTask<?> forkJoinTask = (ForkJoinTask) unsafe.getObjectVolatile(forkJoinTaskArr, j);
                if (forkJoinTask != null) {
                    if (this.base == i && unsafe.compareAndSwapObject(forkJoinTaskArr, j, forkJoinTask, (Object) null)) {
                        this.base = i + 1;
                        return forkJoinTask;
                    }
                } else if (this.base != i) {
                    continue;
                } else if (i + 1 == this.top) {
                    return null;
                } else {
                    Thread.yield();
                }
            }
        }

        final boolean pollAndExecCC(ForkJoinTask<?> forkJoinTask) {
            ForkJoinTask<?>[] forkJoinTaskArr;
            long j;
            Object object;
            while (true) {
                int i = this.base;
                if (i - this.top >= 0 || (forkJoinTaskArr = this.array) == null || (object = f1617U.getObject(forkJoinTaskArr, (((forkJoinTaskArr.length - 1) & i) << ASHIFT) + ABASE)) == null || !(object instanceof CountedCompleter)) {
                    return false;
                }
                CountedCompleter<?> countedCompleter = (CountedCompleter) object;
                CountedCompleter<?> countedCompleter2 = countedCompleter;
                while (countedCompleter2 != forkJoinTask) {
                    CountedCompleter<?> countedCompleter3 = countedCompleter2.completer;
                    countedCompleter2 = countedCompleter3;
                    if (countedCompleter3 == null) {
                        return false;
                    }
                }
                if (this.base == i && f1617U.compareAndSwapObject(forkJoinTaskArr, j, countedCompleter, (Object) null)) {
                    this.base = i + 1;
                    countedCompleter.doExec();
                    return true;
                }
            }
        }

        final ForkJoinTask<?> pollAt(int i) {
            ForkJoinTask<?>[] forkJoinTaskArr = this.array;
            if (forkJoinTaskArr != null) {
                int length = forkJoinTaskArr.length;
                int i2 = ASHIFT;
                int i3 = ABASE;
                Unsafe unsafe = f1617U;
                long j = (((length - 1) & i) << i2) + i3;
                ForkJoinTask<?> forkJoinTask = (ForkJoinTask) unsafe.getObjectVolatile(forkJoinTaskArr, j);
                if (forkJoinTask == null || this.base != i || !unsafe.compareAndSwapObject(forkJoinTaskArr, j, forkJoinTask, (Object) null)) {
                    return null;
                }
                this.base = i + 1;
                return forkJoinTask;
            }
            return null;
        }

        final ForkJoinTask<?> pop() {
            int length;
            int i;
            long j;
            Unsafe unsafe;
            ForkJoinTask<?> forkJoinTask;
            ForkJoinTask<?>[] forkJoinTaskArr = this.array;
            if (forkJoinTaskArr == null || (length = forkJoinTaskArr.length - 1) < 0) {
                return null;
            }
            do {
                i = this.top - 1;
                if (i - this.base < 0) {
                    return null;
                }
                j = ((length & i) << ASHIFT) + ABASE;
                unsafe = f1617U;
                forkJoinTask = (ForkJoinTask) unsafe.getObject(forkJoinTaskArr, j);
                if (forkJoinTask == null) {
                    return null;
                }
            } while (!unsafe.compareAndSwapObject(forkJoinTaskArr, j, forkJoinTask, (Object) null));
            this.top = i;
            return forkJoinTask;
        }

        public final void push(ForkJoinTask<?> forkJoinTask) {
            int i = this.top;
            ForkJoinTask<?>[] forkJoinTaskArr = this.array;
            if (forkJoinTaskArr != null) {
                int length = forkJoinTaskArr.length - 1;
                int i2 = ASHIFT;
                f1617U.putOrderedObject(forkJoinTaskArr, ((length & i) << i2) + ABASE, forkJoinTask);
                int i3 = i + 1;
                this.top = i3;
                int i4 = i3 - this.base;
                if (i4 > 2) {
                    if (i4 < length) {
                        return;
                    }
                    growArray();
                    return;
                }
                ForkJoinPool forkJoinPool = this.pool;
                if (forkJoinPool == null) {
                    return;
                }
                forkJoinPool.signalWork(this);
            }
        }

        public final int queueSize() {
            int i = this.base - this.top;
            return i >= 0 ? 0 : -i;
        }

        final void runSubtask(ForkJoinTask<?> forkJoinTask) {
            if (forkJoinTask != null) {
                ForkJoinTask<?> forkJoinTask2 = this.currentSteal;
                this.currentSteal = forkJoinTask;
                forkJoinTask.doExec();
                this.currentSteal = forkJoinTask2;
            }
        }

        final void runTask(ForkJoinTask<?> forkJoinTask) {
            if (forkJoinTask != null) {
                this.currentSteal = forkJoinTask;
                forkJoinTask.doExec();
                this.currentSteal = null;
                this.nsteals++;
                if (this.base - this.top >= 0) {
                    return;
                }
                if (this.mode == 0) {
                    popAndExecAll();
                } else {
                    pollAndExecAll();
                }
            }
        }

        final boolean tryRemoveAndExec(ForkJoinTask<?> forkJoinTask) {
            ForkJoinTask<?>[] forkJoinTaskArr = this.array;
            boolean z = false;
            boolean z2 = true;
            if (forkJoinTaskArr != null) {
                int length = forkJoinTaskArr.length - 1;
                z = false;
                z2 = true;
                if (length >= 0) {
                    int i = this.top;
                    int i2 = this.base;
                    int i3 = i - i2;
                    z = false;
                    z2 = true;
                    if (i3 > 0) {
                        boolean z3 = true;
                        while (true) {
                            i--;
                            int i4 = ASHIFT;
                            int i5 = ABASE;
                            Unsafe unsafe = f1617U;
                            long j = ((i & length) << i4) + i5;
                            ForkJoinTask<?> forkJoinTask2 = (ForkJoinTask) unsafe.getObjectVolatile(forkJoinTaskArr, j);
                            if (forkJoinTask2 == null) {
                                z = false;
                                z2 = true;
                                break;
                            } else if (forkJoinTask2 != forkJoinTask) {
                                if (forkJoinTask2.status >= 0) {
                                    z3 = false;
                                } else if (i + 1 == this.top) {
                                    z = false;
                                    z2 = true;
                                    if (unsafe.compareAndSwapObject(forkJoinTaskArr, j, forkJoinTask2, (Object) null)) {
                                        this.top = i;
                                        z = false;
                                        z2 = true;
                                    }
                                }
                                i3--;
                                if (i3 == 0) {
                                    z = false;
                                    z2 = true;
                                    if (!z3) {
                                        z = false;
                                        z2 = true;
                                        if (this.base == i2) {
                                            z2 = false;
                                            z = false;
                                        }
                                    }
                                }
                            } else if (i + 1 != this.top) {
                                z = false;
                                z2 = true;
                                if (this.base == i2) {
                                    z = unsafe.compareAndSwapObject(forkJoinTaskArr, j, forkJoinTask, new EmptyTask());
                                    z2 = true;
                                }
                            } else if (!unsafe.compareAndSwapObject(forkJoinTaskArr, j, forkJoinTask, (Object) null)) {
                                z = false;
                                z2 = true;
                            } else {
                                this.top = i;
                                z = true;
                                z2 = true;
                            }
                        }
                    }
                }
            }
            if (z) {
                forkJoinTask.doExec();
            }
            return z2;
        }

        public final boolean tryUnpush(ForkJoinTask<?> forkJoinTask) {
            ForkJoinTask<?>[] forkJoinTaskArr = this.array;
            if (forkJoinTaskArr != null) {
                int i = this.top;
                if (i == this.base) {
                    return false;
                }
                int i2 = i - 1;
                if (!f1617U.compareAndSwapObject(forkJoinTaskArr, (((forkJoinTaskArr.length - 1) & i2) << ASHIFT) + ABASE, forkJoinTask, (Object) null)) {
                    return false;
                }
                this.top = i2;
                return true;
            }
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v83, types: [scala.concurrent.forkjoin.ForkJoinPool$ForkJoinWorkerThreadFactory] */
    static {
        int i;
        try {
            Unsafe unsafe = getUnsafe();
            f1616U = unsafe;
            CTL = unsafe.objectFieldOffset(ForkJoinPool.class.getDeclaredField("ctl"));
            STEALCOUNT = unsafe.objectFieldOffset(ForkJoinPool.class.getDeclaredField("stealCount"));
            PLOCK = unsafe.objectFieldOffset(ForkJoinPool.class.getDeclaredField("plock"));
            INDEXSEED = unsafe.objectFieldOffset(ForkJoinPool.class.getDeclaredField("indexSeed"));
            PARKBLOCKER = unsafe.objectFieldOffset(Thread.class.getDeclaredField("parkBlocker"));
            QLOCK = unsafe.objectFieldOffset(WorkQueue.class.getDeclaredField("qlock"));
            ABASE = unsafe.arrayBaseOffset(ForkJoinTask[].class);
            int arrayIndexScale = unsafe.arrayIndexScale(ForkJoinTask[].class);
            if (((arrayIndexScale - 1) & arrayIndexScale) != 0) {
                throw new Error("data type scale not a power of two");
            }
            ASHIFT = 31 - Integer.numberOfLeadingZeros(arrayIndexScale);
            submitters = new ThreadLocal<>();
            DefaultForkJoinWorkerThreadFactory defaultForkJoinWorkerThreadFactory2 = new DefaultForkJoinWorkerThreadFactory();
            defaultForkJoinWorkerThreadFactory = defaultForkJoinWorkerThreadFactory2;
            modifyThreadPermission = new RuntimePermission("modifyThread");
            DefaultForkJoinWorkerThreadFactory defaultForkJoinWorkerThreadFactory3 = defaultForkJoinWorkerThreadFactory2;
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = null;
            try {
                String property = System.getProperty("java.util.concurrent.ForkJoinPool.common.parallelism");
                String property2 = System.getProperty("java.util.concurrent.ForkJoinPool.common.exceptionHandler");
                String property3 = System.getProperty("java.util.concurrent.ForkJoinPool.common.threadFactory");
                DefaultForkJoinWorkerThreadFactory defaultForkJoinWorkerThreadFactory4 = defaultForkJoinWorkerThreadFactory2;
                if (property3 != null) {
                    defaultForkJoinWorkerThreadFactory4 = (ForkJoinWorkerThreadFactory) ClassLoader.getSystemClassLoader().loadClass(property3).newInstance();
                }
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = null;
                if (property2 != null) {
                    uncaughtExceptionHandler2 = (Thread.UncaughtExceptionHandler) ClassLoader.getSystemClassLoader().loadClass(property2).newInstance();
                }
                defaultForkJoinWorkerThreadFactory3 = defaultForkJoinWorkerThreadFactory4;
                i = 0;
                uncaughtExceptionHandler = uncaughtExceptionHandler2;
                if (property != null) {
                    defaultForkJoinWorkerThreadFactory3 = defaultForkJoinWorkerThreadFactory4;
                    uncaughtExceptionHandler = uncaughtExceptionHandler2;
                    i = Integer.parseInt(property);
                    uncaughtExceptionHandler = uncaughtExceptionHandler2;
                    defaultForkJoinWorkerThreadFactory3 = defaultForkJoinWorkerThreadFactory4;
                }
            } catch (Exception e) {
                i = 0;
            }
            int i2 = i;
            if (i <= 0) {
                i2 = Runtime.getRuntime().availableProcessors();
            }
            if (i2 > 32767) {
                i2 = 32767;
            }
            commonParallelism = i2;
            long j = -i2;
            common = new ForkJoinPool(i2, ((j << 48) & AC_MASK) | ((j << 32) & TC_MASK), defaultForkJoinWorkerThreadFactory3, uncaughtExceptionHandler);
        } catch (Exception e2) {
            throw new Error(e2);
        }
    }

    public ForkJoinPool() {
        this(Math.min(32767, Runtime.getRuntime().availableProcessors()), defaultForkJoinWorkerThreadFactory, (Thread.UncaughtExceptionHandler) null, false);
    }

    public ForkJoinPool(int i) {
        this(i, defaultForkJoinWorkerThreadFactory, (Thread.UncaughtExceptionHandler) null, false);
    }

    ForkJoinPool(int i, long j, ForkJoinWorkerThreadFactory forkJoinWorkerThreadFactory, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.config = i;
        this.ctl = j;
        this.factory = forkJoinWorkerThreadFactory;
        this.ueh = uncaughtExceptionHandler;
        this.workerNamePrefix = "ForkJoinPool.commonPool-worker-";
    }

    public ForkJoinPool(int i, ForkJoinWorkerThreadFactory forkJoinWorkerThreadFactory, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, boolean z) {
        checkPermission();
        Objects.requireNonNull(forkJoinWorkerThreadFactory);
        if (i <= 0 || i > 32767) {
            throw new IllegalArgumentException();
        }
        this.factory = forkJoinWorkerThreadFactory;
        this.ueh = uncaughtExceptionHandler;
        this.config = (z ? 65536 : 0) | i;
        long j = -i;
        this.ctl = ((j << 32) & TC_MASK) | ((j << 48) & AC_MASK);
        int nextPoolId = nextPoolId();
        this.workerNamePrefix = "ForkJoinPool-" + Integer.toString(nextPoolId) + "-worker-";
    }

    private int acquirePlock() {
        WorkQueue workQueue;
        int i = 256;
        int i2 = 0;
        while (true) {
            int i3 = this.plock;
            if ((i3 & 2) == 0) {
                int i4 = i3 + 2;
                if (f1616U.compareAndSwapInt(this, PLOCK, i3, i4)) {
                    return i4;
                }
            }
            if (i2 == 0) {
                Thread currentThread = Thread.currentThread();
                if (!(currentThread instanceof ForkJoinWorkerThread) || (workQueue = ((ForkJoinWorkerThread) currentThread).workQueue) == null) {
                    Submitter submitter = submitters.get();
                    i2 = submitter != null ? submitter.seed : 1;
                } else {
                    i2 = workQueue.seed;
                }
            } else if (i >= 0) {
                int i5 = i2 ^ (i2 << 1);
                int i6 = i5 ^ (i5 >>> 3);
                int i7 = i6 ^ (i6 << 10);
                i2 = i7;
                if (i7 >= 0) {
                    i--;
                    i2 = i7;
                }
            } else if (f1616U.compareAndSwapInt(this, PLOCK, i3, i3 | 1)) {
                synchronized (this) {
                    if ((this.plock & 1) != 0) {
                        try {
                            wait();
                        } catch (InterruptedException e) {
                            try {
                                Thread.currentThread().interrupt();
                            } catch (SecurityException e2) {
                            }
                        }
                    } else {
                        notifyAll();
                    }
                }
            } else {
                continue;
            }
        }
    }

    private static void checkPermission() {
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            securityManager.checkPermission(modifyThreadPermission);
        }
    }

    public static ForkJoinPool commonPool() {
        return common;
    }

    public static WorkQueue commonSubmitterQueue() {
        ForkJoinPool forkJoinPool;
        WorkQueue[] workQueueArr;
        int length;
        Submitter submitter = submitters.get();
        return (submitter == null || (forkJoinPool = common) == null || (workQueueArr = forkJoinPool.workQueues) == null || (length = workQueueArr.length - 1) < 0) ? null : workQueueArr[submitter.seed & length & 126];
    }

    private void externalHelpComplete(WorkQueue workQueue, ForkJoinTask<?> forkJoinTask) {
        ForkJoinTask<?>[] forkJoinTaskArr;
        int length;
        CountedCompleter<?> countedCompleter;
        int i;
        if (workQueue == null || (forkJoinTaskArr = workQueue.array) == null || (length = forkJoinTaskArr.length - 1) < 0 || forkJoinTask == null || forkJoinTask.status < 0) {
            return;
        }
        do {
            int i2 = workQueue.top;
            countedCompleter = null;
            if (i2 - workQueue.base > 0) {
                int i3 = i2 - 1;
                long j = ((length & i3) << ASHIFT) + ABASE;
                Object object = f1616U.getObject(forkJoinTaskArr, j);
                countedCompleter = null;
                if (object != null) {
                    countedCompleter = null;
                    if (object instanceof CountedCompleter) {
                        CountedCompleter<?> countedCompleter2 = (CountedCompleter) object;
                        CountedCompleter<?> countedCompleter3 = countedCompleter2;
                        while (true) {
                            if (countedCompleter3 != forkJoinTask) {
                                CountedCompleter<?> countedCompleter4 = countedCompleter3.completer;
                                countedCompleter3 = countedCompleter4;
                                if (countedCompleter4 == null) {
                                    countedCompleter = null;
                                    break;
                                }
                            } else {
                                Unsafe unsafe = f1616U;
                                countedCompleter = null;
                                if (unsafe.compareAndSwapInt(workQueue, QLOCK, 0, 1)) {
                                    countedCompleter = null;
                                    if (workQueue.array == forkJoinTaskArr) {
                                        countedCompleter = null;
                                        if (workQueue.top == i2) {
                                            countedCompleter = null;
                                            if (unsafe.compareAndSwapObject(forkJoinTaskArr, j, countedCompleter2, (Object) null)) {
                                                workQueue.top = i3;
                                                countedCompleter = countedCompleter2;
                                            }
                                        }
                                    }
                                    workQueue.qlock = 0;
                                }
                            }
                        }
                    }
                }
            }
            if (countedCompleter != null) {
                countedCompleter.doExec();
            }
            if (forkJoinTask.status < 0 || (i = (int) (this.ctl >>> 32)) >= 0 || (i >> 16) >= 0) {
                return;
            }
        } while (countedCompleter != null);
        helpSignal(forkJoinTask, workQueue.poolIndex);
        if (forkJoinTask.status < 0) {
            return;
        }
        helpComplete(forkJoinTask, -1);
    }

    public static void externalHelpJoin(ForkJoinTask<?> forkJoinTask) {
        Submitter submitter;
        ForkJoinPool forkJoinPool;
        WorkQueue[] workQueueArr;
        int length;
        WorkQueue workQueue;
        ForkJoinTask<?>[] forkJoinTaskArr;
        if (forkJoinTask == null || (submitter = submitters.get()) == null || (forkJoinPool = common) == null || (workQueueArr = forkJoinPool.workQueues) == null || (length = workQueueArr.length - 1) < 0 || (workQueue = workQueueArr[submitter.seed & length & 126]) == null || (forkJoinTaskArr = workQueue.array) == null) {
            return;
        }
        int length2 = forkJoinTaskArr.length;
        int i = workQueue.top;
        if (i != workQueue.base) {
            int i2 = i - 1;
            long j = (((length2 - 1) & i2) << ASHIFT) + ABASE;
            Unsafe unsafe = f1616U;
            if (unsafe.getObject(forkJoinTaskArr, j) == forkJoinTask && unsafe.compareAndSwapInt(workQueue, QLOCK, 0, 1)) {
                if (workQueue.array == forkJoinTaskArr && workQueue.top == i && unsafe.compareAndSwapObject(forkJoinTaskArr, j, forkJoinTask, (Object) null)) {
                    workQueue.top = i2;
                    workQueue.qlock = 0;
                    forkJoinTask.doExec();
                } else {
                    workQueue.qlock = 0;
                }
            }
        }
        if (forkJoinTask.status < 0) {
            return;
        }
        if (forkJoinTask instanceof CountedCompleter) {
            forkJoinPool.externalHelpComplete(workQueue, forkJoinTask);
        } else {
            forkJoinPool.helpSignal(forkJoinTask, workQueue.poolIndex);
        }
    }

    private WorkQueue findNonEmptyStealQueue(int i) {
        int i2;
        int length;
        do {
            i2 = this.plock;
            WorkQueue[] workQueueArr = this.workQueues;
            if (workQueueArr != null && (length = workQueueArr.length - 1) >= 0) {
                for (int i3 = (length + 1) << 2; i3 >= 0; i3--) {
                    WorkQueue workQueue = workQueueArr[(((i + i3) << 1) | 1) & length];
                    if (workQueue != null && workQueue.base - workQueue.top < 0) {
                        return workQueue;
                    }
                }
            }
        } while (this.plock != i2);
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0107, code lost:
        if (r0.length <= ((r0 + 1) - r0.base)) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x019e, code lost:
        if (scala.concurrent.forkjoin.ForkJoinPool.f1616U.compareAndSwapInt(r7, scala.concurrent.forkjoin.ForkJoinPool.PLOCK, r0, r15) == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x027e, code lost:
        if (scala.concurrent.forkjoin.ForkJoinPool.f1616U.compareAndSwapInt(r7, scala.concurrent.forkjoin.ForkJoinPool.PLOCK, r0, r15) == false) goto L77;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0147 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x000a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void fullExternalPush(scala.concurrent.forkjoin.ForkJoinTask<?> r8) {
        /*
            Method dump skipped, instructions count: 728
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.concurrent.forkjoin.ForkJoinPool.fullExternalPush(scala.concurrent.forkjoin.ForkJoinTask):void");
    }

    public static int getCommonPoolParallelism() {
        return commonParallelism;
    }

    public static int getSurplusQueuedTaskCount() {
        Thread currentThread = Thread.currentThread();
        int i = 0;
        if (currentThread instanceof ForkJoinWorkerThread) {
            ForkJoinWorkerThread forkJoinWorkerThread = (ForkJoinWorkerThread) currentThread;
            ForkJoinPool forkJoinPool = forkJoinWorkerThread.pool;
            int i2 = forkJoinPool.config & 65535;
            WorkQueue workQueue = forkJoinWorkerThread.workQueue;
            int i3 = workQueue.top;
            int i4 = workQueue.base;
            int i5 = ((int) (forkJoinPool.ctl >> 48)) + i2;
            int i6 = i2 >>> 1;
            if (i5 <= i6) {
                int i7 = i6 >>> 1;
                if (i5 > i7) {
                    i = 1;
                } else {
                    int i8 = i7 >>> 1;
                    i = i5 > i8 ? 2 : i5 > (i8 >>> 1) ? 4 : 8;
                }
            }
            return (i3 - i4) - i;
        }
        return 0;
    }

    public static Unsafe getUnsafe() {
        return scala.concurrent.util.Unsafe.instance;
    }

    private int helpComplete(ForkJoinTask<?> forkJoinTask, int i) {
        WorkQueue[] workQueueArr;
        int i2;
        if (forkJoinTask == null || (workQueueArr = this.workQueues) == null) {
            return 0;
        }
        int i3 = 1;
        int length = workQueueArr.length - 1;
        if (length < 0) {
            return 0;
        }
        int i4 = 1;
        while (true) {
            int i5 = forkJoinTask.status;
            if (i5 < 0) {
                return i5;
            }
            WorkQueue workQueue = workQueueArr[i3 & length];
            if (workQueue == null || !workQueue.pollAndExecCC(forkJoinTask)) {
                int i6 = (i3 + 2) & length;
                i3 = i6;
                if (i6 == i4) {
                    return 0;
                }
            } else if (i == -1 && ((i2 = (int) (this.ctl >>> 32)) >= 0 || (i2 >> 16) >= 0)) {
                return 0;
            } else {
                i4 = i3;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x012f, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void helpSignal(scala.concurrent.forkjoin.ForkJoinTask<?> r13, int r14) {
        /*
            Method dump skipped, instructions count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.concurrent.forkjoin.ForkJoinPool.helpSignal(scala.concurrent.forkjoin.ForkJoinTask, int):void");
    }

    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    private void idleAwaitWork(WorkQueue workQueue, long j, long j2) {
        if (workQueue == null || workQueue.eventCount >= 0 || tryTerminate(false, false) || ((int) j2) == 0 || this.ctl != j) {
            return;
        }
        int i = -((short) (j >>> 32));
        char c = i < 0 ? (char) 49664 : (i + 1) * IDLE_TIMEOUT;
        long nanoTime = System.nanoTime();
        Thread currentThread = Thread.currentThread();
        while (this.ctl == j) {
            Thread.interrupted();
            Unsafe unsafe = f1616U;
            long j3 = PARKBLOCKER;
            unsafe.putObject(currentThread, j3, this);
            workQueue.parker = currentThread;
            if (this.ctl == j) {
                unsafe.park(false, c);
            }
            workQueue.parker = null;
            unsafe.putObject(currentThread, j3, (Object) null);
            if (this.ctl != j) {
                return;
            }
            if (((nanoTime + c) - TIMEOUT_SLOP) - System.nanoTime() <= 0 && unsafe.compareAndSwapLong(this, CTL, j, j2)) {
                workQueue.eventCount = (workQueue.eventCount + 65536) | Integer.MAX_VALUE;
                workQueue.hint = -1;
                workQueue.qlock = -1;
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x008d, code lost:
        if (r4.isReleasable() != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x009a, code lost:
        if (r4.block() == false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a4, code lost:
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a5, code lost:
        r0.incrementActiveCount();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00aa, code lost:
        throw r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00bd, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void managedBlock(scala.concurrent.forkjoin.ForkJoinPool.ManagedBlocker r4) throws java.lang.InterruptedException {
        /*
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r5 = r0
            r0 = r5
            boolean r0 = r0 instanceof scala.concurrent.forkjoin.ForkJoinWorkerThread
            if (r0 == 0) goto Lab
            r0 = r5
            scala.concurrent.forkjoin.ForkJoinWorkerThread r0 = (scala.concurrent.forkjoin.ForkJoinWorkerThread) r0
            scala.concurrent.forkjoin.ForkJoinPool r0 = r0.pool
            r5 = r0
        L13:
            r0 = r4
            boolean r0 = r0.isReleasable()
            if (r0 != 0) goto Lbd
            r0 = r5
            scala.concurrent.forkjoin.ForkJoinPool$WorkQueue[] r0 = r0.workQueues
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L80
            r0 = r6
            int r0 = r0.length
            r1 = 1
            int r0 = r0 - r1
            r7 = r0
            r0 = r7
            if (r0 < 0) goto L80
            r0 = 0
            r8 = r0
        L31:
            r0 = r8
            r1 = r7
            if (r0 > r1) goto L80
            r0 = r4
            boolean r0 = r0.isReleasable()
            if (r0 == 0) goto L41
            return
        L41:
            r0 = r6
            r1 = r8
            r0 = r0[r1]
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L7a
            r0 = r9
            int r0 = r0.base
            r1 = r9
            int r1 = r1.top
            int r0 = r0 - r1
            if (r0 >= 0) goto L7a
            r0 = r5
            r1 = r9
            r0.signalWork(r1)
            r0 = r5
            long r0 = r0.ctl
            r1 = 32
            long r0 = r0 >>> r1
            int r0 = (int) r0
            r10 = r0
            r0 = r10
            if (r0 >= 0) goto L80
            r0 = r10
            r1 = 16
            int r0 = r0 >> r1
            if (r0 < 0) goto L7a
            goto L80
        L7a:
            int r8 = r8 + 1
            goto L31
        L80:
            r0 = r5
            boolean r0 = r0.tryCompensate()
            if (r0 == 0) goto L13
        L87:
            r0 = r4
            boolean r0 = r0.isReleasable()     // Catch: java.lang.Throwable -> La4
            if (r0 != 0) goto L9d
            r0 = r4
            boolean r0 = r0.block()     // Catch: java.lang.Throwable -> La4
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L87
        L9d:
            r0 = r5
            r0.incrementActiveCount()
            goto Lbd
        La4:
            r4 = move-exception
            r0 = r5
            r0.incrementActiveCount()
            r0 = r4
            throw r0
        Lab:
            r0 = r4
            boolean r0 = r0.isReleasable()
            if (r0 != 0) goto Lbd
            r0 = r4
            boolean r0 = r0.block()
            if (r0 == 0) goto Lab
        Lbd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.concurrent.forkjoin.ForkJoinPool.managedBlock(scala.concurrent.forkjoin.ForkJoinPool$ManagedBlocker):void");
    }

    private static final int nextPoolId() {
        int i;
        synchronized (ForkJoinPool.class) {
            try {
                i = poolNumberSequence + 1;
                poolNumberSequence = i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }

    public static void quiesceCommonPool() {
        common.awaitQuiescence(LongCompanionObject.MAX_VALUE, TimeUnit.NANOSECONDS);
    }

    private void releasePlock(int i) {
        this.plock = i;
        synchronized (this) {
            notifyAll();
        }
    }

    private final ForkJoinTask<?> scan(WorkQueue workQueue) {
        WorkQueue[] workQueueArr;
        int length;
        WorkQueue workQueue2;
        int i;
        int i2;
        WorkQueue workQueue3;
        ForkJoinTask<?>[] forkJoinTaskArr;
        int i3 = this.plock;
        if (workQueue == null || (workQueueArr = this.workQueues) == null || (length = workQueueArr.length - 1) < 0) {
            return null;
        }
        int i4 = workQueue.eventCount;
        int i5 = workQueue.seed;
        int i6 = i5 ^ (i5 << 13);
        int i7 = i6 ^ (i6 >>> 17);
        int i8 = i7 ^ (i7 << 5);
        workQueue.seed = i8;
        workQueue.hint = -1;
        int i9 = ((length + length + 1) | 511) & MAX_SCAN;
        while (true) {
            int i10 = (i8 + i9) & length;
            WorkQueue workQueue4 = workQueueArr[i10];
            if (workQueue4 != null) {
                int i11 = workQueue4.base;
                if (i11 - workQueue4.top < 0 && (forkJoinTaskArr = workQueue4.array) != null) {
                    int length2 = forkJoinTaskArr.length;
                    int i12 = ASHIFT;
                    int i13 = ABASE;
                    Unsafe unsafe = f1616U;
                    long j = (((length2 - 1) & i11) << i12) + i13;
                    ForkJoinTask<?> forkJoinTask = (ForkJoinTask) unsafe.getObjectVolatile(forkJoinTaskArr, j);
                    if (workQueue4.base == i11 && i4 >= 0 && forkJoinTask != null && unsafe.compareAndSwapObject(forkJoinTaskArr, j, forkJoinTask, (Object) null)) {
                        int i14 = i11 + 1;
                        workQueue4.base = i14;
                        if (i14 - workQueue4.top < 0) {
                            signalWork(workQueue4);
                        }
                        return forkJoinTask;
                    } else if ((i4 < 0 || i9 < length) && ((int) (this.ctl >> 48)) <= 0) {
                        workQueue.hint = i10;
                        break;
                    }
                }
            }
            i9--;
            if (i9 < 0) {
                break;
            }
        }
        int i15 = workQueue.nsteals;
        if (i15 != 0) {
            Unsafe unsafe2 = f1616U;
            long j2 = STEALCOUNT;
            long j3 = this.stealCount;
            if (!unsafe2.compareAndSwapLong(this, j2, j3, i15 + j3)) {
                return null;
            }
            workQueue.nsteals = 0;
            return null;
        } else if (this.plock != i3) {
            return null;
        } else {
            long j4 = this.ctl;
            int i16 = (int) j4;
            if (i16 < 0) {
                workQueue.qlock = -1;
                return null;
            }
            int i17 = workQueue.hint;
            if (i17 < 0) {
                if (i4 >= 0) {
                    long j5 = i4 | ((j4 - AC_UNIT) & (-4294967296L));
                    workQueue.nextWait = i16;
                    workQueue.eventCount = i4 | Integer.MIN_VALUE;
                    if (this.ctl != j4 || !f1616U.compareAndSwapLong(this, CTL, j4, j5)) {
                        workQueue.eventCount = i4;
                    } else if (((int) (j4 >> 48)) == 1 - (this.config & 65535)) {
                        idleAwaitWork(workQueue, j5, j4);
                    }
                } else if (workQueue.eventCount < 0 && this.ctl == j4) {
                    Thread currentThread = Thread.currentThread();
                    Thread.interrupted();
                    Unsafe unsafe3 = f1616U;
                    long j6 = PARKBLOCKER;
                    unsafe3.putObject(currentThread, j6, this);
                    workQueue.parker = currentThread;
                    if (workQueue.eventCount < 0) {
                        unsafe3.park(false, 0L);
                    }
                    workQueue.parker = null;
                    unsafe3.putObject(currentThread, j6, (Object) null);
                }
            }
            int i18 = i17;
            if (i17 < 0) {
                i18 = workQueue.hint;
                if (i18 < 0) {
                    return null;
                }
            }
            WorkQueue[] workQueueArr2 = this.workQueues;
            if (workQueueArr2 == null || i18 >= workQueueArr2.length || (workQueue2 = workQueueArr2[i18]) == null) {
                return null;
            }
            int i19 = (this.config & 65535) - 1;
            do {
                int i20 = ((workQueue.eventCount < 0 ? 0 : -1) - workQueue2.base) + workQueue2.top;
                if (i20 <= i19) {
                    if (i20 <= 0) {
                        return null;
                    }
                    i19 = i20;
                }
                long j7 = this.ctl;
                int i21 = (int) (j7 >>> 32);
                if (i21 >= 0 || (i = (int) j7) <= 0 || length < (i2 = i & 65535) || (workQueue3 = workQueueArr2[i2]) == null) {
                    return null;
                }
                long j8 = workQueue3.nextWait & Integer.MAX_VALUE;
                long j9 = i21 + 65536;
                if (workQueue3.eventCount != (i | Integer.MIN_VALUE)) {
                    return null;
                }
                Unsafe unsafe4 = f1616U;
                if (!unsafe4.compareAndSwapLong(this, CTL, j7, j8 | (j9 << 32))) {
                    return null;
                }
                workQueue3.hint = i18;
                workQueue3.eventCount = (i + 65536) & Integer.MAX_VALUE;
                Thread thread = workQueue3.parker;
                if (thread != null) {
                    unsafe4.unpark(thread);
                }
                i19--;
            } while (i19 > 0);
            return null;
        }
    }

    private void tryAddWorker() {
        long j;
        int i;
        ForkJoinWorkerThread forkJoinWorkerThread;
        do {
            j = this.ctl;
            i = (int) (j >>> 32);
            if (i >= 0 || (32768 & i) == 0 || ((int) j) != 0) {
                return;
            }
        } while (!f1616U.compareAndSwapLong(this, CTL, j, (((i + 1) & 65535) | ((i + 65536) & (-65536))) << 32));
        Throwable th = null;
        try {
            ForkJoinWorkerThreadFactory forkJoinWorkerThreadFactory = this.factory;
            if (forkJoinWorkerThreadFactory != null) {
                ForkJoinWorkerThread newThread = forkJoinWorkerThreadFactory.newThread(this);
                forkJoinWorkerThread = newThread;
                if (newThread != null) {
                    try {
                        newThread.start();
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        forkJoinWorkerThread = newThread;
                    }
                }
            } else {
                forkJoinWorkerThread = null;
            }
        } catch (Throwable th3) {
            th = th3;
            forkJoinWorkerThread = null;
        }
        deregisterWorker(forkJoinWorkerThread, th);
    }

    public static boolean tryExternalUnpush(ForkJoinTask<?> forkJoinTask) {
        Submitter submitter;
        ForkJoinPool forkJoinPool;
        WorkQueue[] workQueueArr;
        int length;
        WorkQueue workQueue;
        int i;
        ForkJoinTask<?>[] forkJoinTaskArr;
        if (forkJoinTask == null || (submitter = submitters.get()) == null || (forkJoinPool = common) == null || (workQueueArr = forkJoinPool.workQueues) == null || (length = workQueueArr.length - 1) < 0 || (workQueue = workQueueArr[submitter.seed & length & 126]) == null || (i = workQueue.top) == workQueue.base || (forkJoinTaskArr = workQueue.array) == null) {
            return false;
        }
        int length2 = forkJoinTaskArr.length;
        int i2 = i - 1;
        long j = (((length2 - 1) & i2) << ASHIFT) + ABASE;
        Unsafe unsafe = f1616U;
        if (unsafe.getObject(forkJoinTaskArr, j) != forkJoinTask || !unsafe.compareAndSwapInt(workQueue, QLOCK, 0, 1)) {
            return false;
        }
        if (workQueue.array != forkJoinTaskArr || workQueue.top != i || !unsafe.compareAndSwapObject(forkJoinTaskArr, j, forkJoinTask, (Object) null)) {
            workQueue.qlock = 0;
            return false;
        }
        workQueue.top = i2;
        workQueue.qlock = 0;
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0087, code lost:
        if (r0.currentSteal != r15) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00fa, code lost:
        if (r15.status >= 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0100, code lost:
        r0 = r22.base;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x010f, code lost:
        if ((r0 - r22.top) >= 0) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0112, code lost:
        r0 = r22.array;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x011b, code lost:
        if (r0 == null) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x011e, code lost:
        r0 = r0.length;
        r0 = scala.concurrent.forkjoin.ForkJoinPool.ASHIFT;
        r0 = scala.concurrent.forkjoin.ForkJoinPool.ABASE;
        r0 = scala.concurrent.forkjoin.ForkJoinPool.f1616U;
        r0 = (((r0 - r11) & r0) << r0) + r0;
        r0 = (scala.concurrent.forkjoin.ForkJoinTask) r0.getObjectVolatile(r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0156, code lost:
        if (r15.status < 0) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0160, code lost:
        if (r14.currentJoin != r15) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x016a, code lost:
        if (r22.currentSteal == r15) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0172, code lost:
        if (r0 == null) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x017c, code lost:
        if (r22.base != r0) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x018b, code lost:
        if (r0.compareAndSwapObject(r0, r0, r0, (java.lang.Object) null) == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x018e, code lost:
        r22.base = r0 + 1;
        r8.runSubtask(r0);
        r13 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01a3, code lost:
        r13 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01ad, code lost:
        if (r22.base != r0) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01b0, code lost:
        r0 = r10 + 1;
        r13 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01bd, code lost:
        if (r0 != 64) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01c0, code lost:
        r13 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01c6, code lost:
        r11 = 1;
        r10 = r13;
        r13 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x01d6, code lost:
        r0 = r22.currentJoin;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01e2, code lost:
        if (r15.status < 0) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01ec, code lost:
        if (r14.currentJoin != r15) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01f6, code lost:
        if (r22.currentSteal == r15) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01fc, code lost:
        r11 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0202, code lost:
        if (r0 == null) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0205, code lost:
        r17 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x020e, code lost:
        if (r17 != 64) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0211, code lost:
        r11 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0019, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int tryHelpStealer(scala.concurrent.forkjoin.ForkJoinPool.WorkQueue r8, scala.concurrent.forkjoin.ForkJoinTask<?> r9) {
        /*
            Method dump skipped, instructions count: 593
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.concurrent.forkjoin.ForkJoinPool.tryHelpStealer(scala.concurrent.forkjoin.ForkJoinPool$WorkQueue, scala.concurrent.forkjoin.ForkJoinTask):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x004c, code lost:
        if (scala.concurrent.forkjoin.ForkJoinPool.f1616U.compareAndSwapInt(r13, scala.concurrent.forkjoin.ForkJoinPool.PLOCK, r0, r24) == false) goto L14;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:101:0x025b -> B:81:0x01a0). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean tryTerminate(boolean r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 608
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.concurrent.forkjoin.ForkJoinPool.tryTerminate(boolean, boolean):boolean");
    }

    public final int awaitJoin(WorkQueue workQueue, ForkJoinTask<?> forkJoinTask) {
        int i;
        Unsafe unsafe;
        long j;
        long j2;
        int i2 = 0;
        if (workQueue != null) {
            i2 = 0;
            if (forkJoinTask != null) {
                i2 = forkJoinTask.status;
                if (i2 >= 0) {
                    ForkJoinTask<?> forkJoinTask2 = workQueue.currentJoin;
                    workQueue.currentJoin = forkJoinTask;
                    do {
                        i = forkJoinTask.status;
                        if (i < 0 || workQueue.isEmpty()) {
                            break;
                        }
                    } while (workQueue.tryRemoveAndExec(forkJoinTask));
                    i2 = i;
                    if (i >= 0) {
                        int i3 = forkJoinTask.status;
                        i2 = i3;
                        if (i3 >= 0) {
                            helpSignal(forkJoinTask, workQueue.poolIndex);
                            int i4 = forkJoinTask.status;
                            i2 = i4;
                            if (i4 >= 0) {
                                i2 = i4;
                                if (forkJoinTask instanceof CountedCompleter) {
                                    i2 = helpComplete(forkJoinTask, 0);
                                }
                            }
                        }
                    }
                    while (i2 >= 0) {
                        int i5 = forkJoinTask.status;
                        i2 = i5;
                        if (i5 < 0) {
                            break;
                        }
                        if (workQueue.isEmpty()) {
                            int tryHelpStealer = tryHelpStealer(workQueue, forkJoinTask);
                            i2 = tryHelpStealer;
                            if (tryHelpStealer != 0) {
                                continue;
                            }
                        }
                        int i6 = forkJoinTask.status;
                        i2 = i6;
                        if (i6 >= 0) {
                            helpSignal(forkJoinTask, workQueue.poolIndex);
                            int i7 = forkJoinTask.status;
                            i2 = i7;
                            if (i7 >= 0) {
                                i2 = i7;
                                if (tryCompensate()) {
                                    i2 = i7;
                                    if (forkJoinTask.trySetSignal()) {
                                        i2 = forkJoinTask.status;
                                        if (i2 >= 0) {
                                            synchronized (forkJoinTask) {
                                                if (forkJoinTask.status >= 0) {
                                                    try {
                                                        forkJoinTask.wait();
                                                    } catch (InterruptedException e) {
                                                    }
                                                } else {
                                                    forkJoinTask.notifyAll();
                                                }
                                            }
                                        }
                                    }
                                    do {
                                        unsafe = f1616U;
                                        j = CTL;
                                        j2 = this.ctl;
                                    } while (!unsafe.compareAndSwapLong(this, j, j2, AC_UNIT + j2));
                                } else {
                                    continue;
                                }
                            } else {
                                continue;
                            }
                        } else {
                            continue;
                        }
                    }
                    workQueue.currentJoin = forkJoinTask2;
                }
            }
        }
        return i2;
    }

    public boolean awaitQuiescence(long j, TimeUnit timeUnit) {
        WorkQueue[] workQueueArr;
        int length;
        long nanos = timeUnit.toNanos(j);
        Thread currentThread = Thread.currentThread();
        if (currentThread instanceof ForkJoinWorkerThread) {
            ForkJoinWorkerThread forkJoinWorkerThread = (ForkJoinWorkerThread) currentThread;
            if (forkJoinWorkerThread.pool == this) {
                helpQuiescePool(forkJoinWorkerThread.workQueue);
                return true;
            }
        }
        long nanoTime = System.nanoTime();
        boolean z = true;
        int i = 0;
        while (!isQuiescent() && (workQueueArr = this.workQueues) != null && (length = workQueueArr.length - 1) >= 0) {
            if (!z) {
                if (System.nanoTime() - nanoTime > nanos) {
                    return false;
                }
                Thread.yield();
            }
            int i2 = (length + 1) << 2;
            while (true) {
                if (i2 < 0) {
                    z = false;
                    break;
                }
                int i3 = i + 1;
                WorkQueue workQueue = workQueueArr[i & length];
                if (workQueue != null) {
                    int i4 = workQueue.base;
                    if (i4 - workQueue.top < 0) {
                        ForkJoinTask<?> pollAt = workQueue.pollAt(i4);
                        if (pollAt != null) {
                            if (workQueue.base - workQueue.top < 0) {
                                signalWork(workQueue);
                            }
                            pollAt.doExec();
                        }
                        i = i3;
                        z = true;
                    }
                }
                i2--;
                i = i3;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0070 A[Catch: all -> 0x0083, LOOP:0: B:14:0x0033->B:32:0x0070, LOOP_END, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:15:0x0036, B:20:0x0047, B:29:0x006c, B:32:0x0070), top: B:40:0x0036 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x006b A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    @Override // java.util.concurrent.ExecutorService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean awaitTermination(long r8, java.util.concurrent.TimeUnit r10) throws java.lang.InterruptedException {
        /*
            r7 = this;
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto L88
            r0 = r7
            scala.concurrent.forkjoin.ForkJoinPool r1 = scala.concurrent.forkjoin.ForkJoinPool.common
            if (r0 != r1) goto L16
            r0 = r7
            r1 = r8
            r2 = r10
            boolean r0 = r0.awaitQuiescence(r1, r2)
            r0 = 0
            return r0
        L16:
            r0 = r10
            r1 = r8
            long r0 = r0.toNanos(r1)
            r11 = r0
            r0 = r7
            boolean r0 = r0.isTerminated()
            if (r0 == 0) goto L26
            r0 = 1
            return r0
        L26:
            long r0 = java.lang.System.nanoTime()
            r13 = r0
            r0 = r7
            monitor-enter(r0)
            r0 = r11
            r15 = r0
            r0 = 0
            r8 = r0
        L33:
            r0 = r8
            r17 = r0
            r0 = r7
            boolean r0 = r0.isTerminated()     // Catch: java.lang.Throwable -> L83
            if (r0 != 0) goto L60
            r0 = r8
            r17 = r0
            r0 = r15
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L60
            r0 = r10
            r1 = r15
            long r0 = r0.toMillis(r1)     // Catch: java.lang.Throwable -> L83
            r8 = r0
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L5a
            r0 = r8
            r17 = r0
            goto L60
        L5a:
            r0 = 0
            r19 = r0
            goto L66
        L60:
            r0 = 1
            r19 = r0
            r0 = r17
            r8 = r0
        L66:
            r0 = r19
            if (r0 == 0) goto L70
            r0 = r7
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L83
            r0 = r19
            return r0
        L70:
            r0 = r7
            r1 = r8
            r0.wait(r1)     // Catch: java.lang.Throwable -> L83
            r0 = r11
            long r1 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L83
            r2 = r13
            long r1 = r1 - r2
            long r0 = r0 - r1
            r15 = r0
            goto L33
        L83:
            r10 = move-exception
            r0 = r7
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L83
            r0 = r10
            throw r0
        L88:
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.concurrent.forkjoin.ForkJoinPool.awaitTermination(long, java.util.concurrent.TimeUnit):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0061, code lost:
        if (r0.compareAndSwapInt(r13, scala.concurrent.forkjoin.ForkJoinPool.PLOCK, r0, r25) == false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void deregisterWorker(scala.concurrent.forkjoin.ForkJoinWorkerThread r14, java.lang.Throwable r15) {
        /*
            Method dump skipped, instructions count: 478
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.concurrent.forkjoin.ForkJoinPool.deregisterWorker(scala.concurrent.forkjoin.ForkJoinWorkerThread, java.lang.Throwable):void");
    }

    protected int drainTasksTo(Collection<? super ForkJoinTask<?>> collection) {
        WorkQueue[] workQueueArr = this.workQueues;
        int i = 0;
        int i2 = 0;
        if (workQueueArr != null) {
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= workQueueArr.length) {
                    break;
                }
                WorkQueue workQueue = workQueueArr[i2];
                int i4 = i;
                if (workQueue != null) {
                    while (true) {
                        ForkJoinTask<?> poll = workQueue.poll();
                        i4 = i;
                        if (poll != null) {
                            collection.add(poll);
                            i++;
                        }
                    }
                }
                i2++;
                i3 = i4;
            }
        }
        return i;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        Objects.requireNonNull(runnable);
        externalPush(runnable instanceof ForkJoinTask ? (ForkJoinTask) runnable : new ForkJoinTask.AdaptedRunnableAction(runnable));
    }

    public void execute(ForkJoinTask<?> forkJoinTask) {
        Objects.requireNonNull(forkJoinTask);
        externalPush(forkJoinTask);
    }

    public final void externalPush(ForkJoinTask<?> forkJoinTask) {
        WorkQueue[] workQueueArr;
        int length;
        WorkQueue workQueue;
        int length2;
        int i;
        int i2;
        Submitter submitter = submitters.get();
        if (submitter != null && this.plock > 0 && (workQueueArr = this.workQueues) != null && (length = workQueueArr.length - 1) >= 0 && (workQueue = workQueueArr[submitter.seed & length & 126]) != null) {
            Unsafe unsafe = f1616U;
            if (unsafe.compareAndSwapInt(workQueue, QLOCK, 0, 1)) {
                int i3 = workQueue.base;
                int i4 = workQueue.top;
                ForkJoinTask<?>[] forkJoinTaskArr = workQueue.array;
                if (forkJoinTaskArr != null && (length2 = forkJoinTaskArr.length) > (i2 = (i = i4 + 1) - i3)) {
                    unsafe.putOrderedObject(forkJoinTaskArr, ((i4 & (length2 - 1)) << ASHIFT) + ABASE, forkJoinTask);
                    workQueue.top = i;
                    workQueue.qlock = 0;
                    if (i2 > 2) {
                        return;
                    }
                    signalWork(workQueue);
                    return;
                }
                workQueue.qlock = 0;
            }
        }
        fullExternalPush(forkJoinTask);
    }

    public int getActiveThreadCount() {
        int i = (this.config & 65535) + ((int) (this.ctl >> 48));
        int i2 = i;
        if (i <= 0) {
            i2 = 0;
        }
        return i2;
    }

    public boolean getAsyncMode() {
        boolean z = true;
        if ((this.config >>> 16) != 1) {
            z = false;
        }
        return z;
    }

    public ForkJoinWorkerThreadFactory getFactory() {
        return this.factory;
    }

    public int getParallelism() {
        return this.config & 65535;
    }

    public int getPoolSize() {
        return (this.config & 65535) + ((short) (this.ctl >>> 32));
    }

    public int getQueuedSubmissionCount() {
        WorkQueue[] workQueueArr = this.workQueues;
        int i = 0;
        int i2 = 0;
        if (workQueueArr != null) {
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= workQueueArr.length) {
                    break;
                }
                WorkQueue workQueue = workQueueArr[i2];
                int i4 = i;
                if (workQueue != null) {
                    i4 = i + workQueue.queueSize();
                }
                i2 += 2;
                i3 = i4;
            }
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    public long getQueuedTaskCount() {
        WorkQueue workQueue;
        WorkQueue[] workQueueArr = this.workQueues;
        char c = 0;
        char c2 = 0;
        if (workQueueArr != null) {
            int i = 1;
            while (true) {
                c2 = c;
                if (i >= workQueueArr.length) {
                    break;
                }
                char c3 = c;
                if (workQueueArr[i] != null) {
                    c3 = c + workQueue.queueSize();
                }
                i += 2;
                c = c3;
            }
        }
        return c2;
    }

    public int getRunningThreadCount() {
        WorkQueue[] workQueueArr = this.workQueues;
        int i = 0;
        int i2 = 0;
        if (workQueueArr != null) {
            int i3 = 1;
            while (true) {
                i = i2;
                if (i3 >= workQueueArr.length) {
                    break;
                }
                WorkQueue workQueue = workQueueArr[i3];
                int i4 = i2;
                if (workQueue != null) {
                    i4 = i2;
                    if (workQueue.isApparentlyUnblocked()) {
                        i4 = i2 + 1;
                    }
                }
                i3 += 2;
                i2 = i4;
            }
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    public long getStealCount() {
        WorkQueue workQueue;
        char c = this.stealCount;
        WorkQueue[] workQueueArr = this.workQueues;
        char c2 = c;
        if (workQueueArr != null) {
            int i = 1;
            while (true) {
                c2 = c;
                if (i >= workQueueArr.length) {
                    break;
                }
                char c3 = c;
                if (workQueueArr[i] != null) {
                    c3 = c + workQueue.nsteals;
                }
                i += 2;
                c = c3;
            }
        }
        return c2;
    }

    public Thread.UncaughtExceptionHandler getUncaughtExceptionHandler() {
        return this.ueh;
    }

    public boolean hasQueuedSubmissions() {
        WorkQueue[] workQueueArr = this.workQueues;
        if (workQueueArr != null) {
            for (int i = 0; i < workQueueArr.length; i += 2) {
                WorkQueue workQueue = workQueueArr[i];
                if (workQueue != null && !workQueue.isEmpty()) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public final void helpJoinOnce(WorkQueue workQueue, ForkJoinTask<?> forkJoinTask) {
        int i;
        if (workQueue == null || forkJoinTask == null || forkJoinTask.status < 0) {
            return;
        }
        ForkJoinTask<?> forkJoinTask2 = workQueue.currentJoin;
        workQueue.currentJoin = forkJoinTask;
        do {
            i = forkJoinTask.status;
            if (i < 0 || workQueue.isEmpty()) {
                break;
            }
        } while (workQueue.tryRemoveAndExec(forkJoinTask));
        int i2 = i;
        if (i >= 0) {
            int i3 = forkJoinTask.status;
            i2 = i3;
            if (i3 >= 0) {
                helpSignal(forkJoinTask, workQueue.poolIndex);
                int i4 = forkJoinTask.status;
                i2 = i4;
                if (i4 >= 0) {
                    i2 = i4;
                    if (forkJoinTask instanceof CountedCompleter) {
                        i2 = helpComplete(forkJoinTask, 0);
                    }
                }
            }
        }
        if (i2 >= 0 && workQueue.isEmpty()) {
            while (forkJoinTask.status >= 0 && tryHelpStealer(workQueue, forkJoinTask) > 0) {
            }
        }
        workQueue.currentJoin = forkJoinTask2;
    }

    public final void helpQuiescePool(WorkQueue workQueue) {
        Unsafe unsafe;
        long j;
        long j2;
        boolean z = true;
        while (true) {
            ForkJoinTask<?> nextLocalTask = workQueue.nextLocalTask();
            if (nextLocalTask != null) {
                if (workQueue.base - workQueue.top < 0) {
                    signalWork(workQueue);
                }
                nextLocalTask.doExec();
            } else {
                WorkQueue findNonEmptyStealQueue = findNonEmptyStealQueue(workQueue.nextSeed());
                if (findNonEmptyStealQueue != null) {
                    boolean z2 = z;
                    if (!z) {
                        do {
                            unsafe = f1616U;
                            j = CTL;
                            j2 = this.ctl;
                        } while (!unsafe.compareAndSwapLong(this, j, j2, j2 + AC_UNIT));
                        z2 = true;
                    }
                    int i = findNonEmptyStealQueue.base;
                    z = z2;
                    if (i - findNonEmptyStealQueue.top < 0) {
                        ForkJoinTask<?> pollAt = findNonEmptyStealQueue.pollAt(i);
                        z = z2;
                        if (pollAt != null) {
                            if (findNonEmptyStealQueue.base - findNonEmptyStealQueue.top < 0) {
                                signalWork(findNonEmptyStealQueue);
                            }
                            workQueue.runSubtask(pollAt);
                            z = z2;
                        }
                    }
                } else if (z) {
                    long j3 = this.ctl;
                    long j4 = j3 - AC_UNIT;
                    if (((int) (j4 >> 48)) + (65535 & this.config) == 0) {
                        return;
                    }
                    if (f1616U.compareAndSwapLong(this, CTL, j3, j4)) {
                        z = false;
                    }
                } else {
                    long j5 = this.ctl;
                    if (((int) (j5 >> 48)) + (65535 & this.config) == 0 && f1616U.compareAndSwapLong(this, CTL, j5, j5 + AC_UNIT)) {
                        return;
                    }
                }
            }
        }
    }

    public final void incrementActiveCount() {
        Unsafe unsafe;
        long j;
        long j2;
        do {
            unsafe = f1616U;
            j = CTL;
            j2 = this.ctl;
        } while (!unsafe.compareAndSwapLong(this, j, j2, AC_UNIT + j2));
    }

    public <T> T invoke(ForkJoinTask<T> forkJoinTask) {
        Objects.requireNonNull(forkJoinTask);
        externalPush(forkJoinTask);
        return forkJoinTask.join();
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        try {
            for (Callable<T> callable : collection) {
                ForkJoinTask.AdaptedCallable adaptedCallable = new ForkJoinTask.AdaptedCallable(callable);
                arrayList.add(adaptedCallable);
                externalPush(adaptedCallable);
            }
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((ForkJoinTask) arrayList.get(i)).quietlyJoin();
            }
            return arrayList;
        } catch (Throwable th) {
            int size2 = arrayList.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ((Future) arrayList.get(i2)).cancel(false);
            }
            throw th;
        }
    }

    public boolean isQuiescent() {
        return ((int) (this.ctl >> 48)) + (this.config & 65535) == 0;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return this.plock < 0;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        long j = this.ctl;
        return (STOP_BIT & j) != 0 && ((short) ((int) (j >>> 32))) == (-(this.config & 65535));
    }

    public boolean isTerminating() {
        long j = this.ctl;
        return ((STOP_BIT & j) == 0 || ((short) ((int) (j >>> 32))) == (-(this.config & 65535))) ? false : true;
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
        return new ForkJoinTask.AdaptedRunnable(runnable, t);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return new ForkJoinTask.AdaptedCallable(callable);
    }

    public final ForkJoinTask<?> nextTaskFor(WorkQueue workQueue) {
        ForkJoinTask<?> pollAt;
        while (true) {
            ForkJoinTask<?> nextLocalTask = workQueue.nextLocalTask();
            if (nextLocalTask != null) {
                return nextLocalTask;
            }
            WorkQueue findNonEmptyStealQueue = findNonEmptyStealQueue(workQueue.nextSeed());
            if (findNonEmptyStealQueue == null) {
                return null;
            }
            int i = findNonEmptyStealQueue.base;
            if (i - findNonEmptyStealQueue.top < 0 && (pollAt = findNonEmptyStealQueue.pollAt(i)) != null) {
                if (findNonEmptyStealQueue.base - findNonEmptyStealQueue.top < 0) {
                    signalWork(findNonEmptyStealQueue);
                }
                return pollAt;
            }
        }
    }

    protected ForkJoinTask<?> pollSubmission() {
        ForkJoinTask<?> poll;
        WorkQueue[] workQueueArr = this.workQueues;
        if (workQueueArr != null) {
            for (int i = 0; i < workQueueArr.length; i += 2) {
                WorkQueue workQueue = workQueueArr[i];
                if (workQueue != null && (poll = workQueue.poll()) != null) {
                    return poll;
                }
            }
            return null;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0073, code lost:
        if (r0.compareAndSwapInt(r7, scala.concurrent.forkjoin.ForkJoinPool.PLOCK, r0, r0) == false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final scala.concurrent.forkjoin.ForkJoinPool.WorkQueue registerWorker(scala.concurrent.forkjoin.ForkJoinWorkerThread r8) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.concurrent.forkjoin.ForkJoinPool.registerWorker(scala.concurrent.forkjoin.ForkJoinWorkerThread):scala.concurrent.forkjoin.ForkJoinPool$WorkQueue");
    }

    public final void runWorker(WorkQueue workQueue) {
        workQueue.growArray();
        do {
            workQueue.runTask(scan(workQueue));
        } while (workQueue.qlock >= 0);
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        checkPermission();
        tryTerminate(false, true);
    }

    @Override // java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        checkPermission();
        tryTerminate(true, true);
        return Collections.emptyList();
    }

    final void signalWork(WorkQueue workQueue) {
        WorkQueue workQueue2;
        int i = workQueue.poolIndex;
        do {
            long j = this.ctl;
            int i2 = (int) (j >>> 32);
            if (i2 >= 0) {
                return;
            }
            int i3 = (int) j;
            if (i3 <= 0) {
                if (((short) i2) >= 0) {
                    return;
                }
                tryAddWorker();
                return;
            }
            WorkQueue[] workQueueArr = this.workQueues;
            if (workQueueArr == null) {
                return;
            }
            int length = workQueueArr.length;
            int i4 = 65535 & i3;
            if (length <= i4 || (workQueue2 = workQueueArr[i4]) == null || workQueue2.eventCount != (Integer.MIN_VALUE | i3)) {
                return;
            }
            long j2 = workQueue2.nextWait & Integer.MAX_VALUE;
            long j3 = i2 + 65536;
            Unsafe unsafe = f1616U;
            if (unsafe.compareAndSwapLong(this, CTL, j, j2 | (j3 << 32))) {
                workQueue2.hint = i;
                workQueue2.eventCount = (i3 + 65536) & Integer.MAX_VALUE;
                Thread thread = workQueue2.parker;
                if (thread == null) {
                    return;
                }
                unsafe.unpark(thread);
                return;
            }
        } while (workQueue.top - workQueue.base > 0);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public ForkJoinTask<?> submit(Runnable runnable) {
        Objects.requireNonNull(runnable);
        ForkJoinTask.AdaptedRunnableAction adaptedRunnableAction = runnable instanceof ForkJoinTask ? (ForkJoinTask) runnable : new ForkJoinTask.AdaptedRunnableAction(runnable);
        externalPush(adaptedRunnableAction);
        return adaptedRunnableAction;
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public <T> ForkJoinTask<T> submit(Runnable runnable, T t) {
        ForkJoinTask.AdaptedRunnable adaptedRunnable = new ForkJoinTask.AdaptedRunnable(runnable, t);
        externalPush(adaptedRunnable);
        return adaptedRunnable;
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public <T> ForkJoinTask<T> submit(Callable<T> callable) {
        ForkJoinTask.AdaptedCallable adaptedCallable = new ForkJoinTask.AdaptedCallable(callable);
        externalPush(adaptedCallable);
        return adaptedCallable;
    }

    public <T> ForkJoinTask<T> submit(ForkJoinTask<T> forkJoinTask) {
        Objects.requireNonNull(forkJoinTask);
        externalPush(forkJoinTask);
        return forkJoinTask;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v101, types: [long] */
    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v116, types: [long] */
    public String toString() {
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4 = this.stealCount;
        long j = this.ctl;
        WorkQueue[] workQueueArr = this.workQueues;
        if (workQueueArr != null) {
            int i2 = 0;
            boolean z5 = false;
            boolean z6 = false;
            int i3 = 0;
            boolean z7 = z4;
            while (true) {
                int i4 = i3;
                z3 = z7;
                z2 = z5;
                z = z6;
                i = i4;
                if (i2 >= workQueueArr.length) {
                    break;
                }
                WorkQueue workQueue = workQueueArr[i2];
                boolean z8 = z7;
                boolean z9 = z5;
                boolean z10 = z6;
                int i5 = i4;
                if (workQueue != null) {
                    int queueSize = workQueue.queueSize();
                    if ((i2 & 1) == 0) {
                        z10 = (z6 ? 1L : 0L) + queueSize;
                        z8 = z7;
                        z9 = z5;
                        i5 = i4;
                    } else {
                        ?? r0 = (z5 ? 1L : 0L) + queueSize;
                        ?? r02 = (z7 ? 1L : 0L) + workQueue.nsteals;
                        z8 = r02;
                        z9 = r0;
                        z10 = z6;
                        i5 = i4;
                        if (workQueue.isApparentlyUnblocked()) {
                            i5 = i4 + 1;
                            z10 = z6;
                            z9 = r0;
                            z8 = r02;
                        }
                    }
                }
                i2++;
                z7 = z8;
                z5 = z9;
                z6 = z10;
                i3 = i5;
            }
        } else {
            z2 = false;
            z = false;
            i = 0;
            z3 = z4;
        }
        int i6 = this.config & 65535;
        int i7 = ((short) (j >>> 32)) + i6;
        int i8 = ((int) (j >> 48)) + i6;
        int i9 = i8;
        if (i8 < 0) {
            i9 = 0;
        }
        return super.toString() + "[" + ((j & STOP_BIT) != 0 ? i7 == 0 ? "Terminated" : "Terminating" : this.plock < 0 ? "Shutting down" : "Running") + ", parallelism = " + i6 + ", size = " + i7 + ", active = " + i9 + ", running = " + i + ", steals = " + (z3 ? 1L : 0L) + ", tasks = " + (z2 ? 1L : 0L) + ", submissions = " + (z ? 1L : 0L) + "]";
    }

    public final boolean tryCompensate() {
        long j;
        int i;
        ForkJoinWorkerThread forkJoinWorkerThread;
        int i2;
        WorkQueue workQueue;
        int i3 = this.config & 65535;
        WorkQueue[] workQueueArr = this.workQueues;
        if (workQueueArr == null || (i = (int) (j = this.ctl)) < 0) {
            return false;
        }
        if (i != 0 && (i2 = 65535 & i) < workQueueArr.length && (workQueue = workQueueArr[i2]) != null && workQueue.eventCount == (Integer.MIN_VALUE | i)) {
            long j2 = workQueue.nextWait & Integer.MAX_VALUE;
            Unsafe unsafe = f1616U;
            if (!unsafe.compareAndSwapLong(this, CTL, j, j2 | ((-4294967296L) & j))) {
                return false;
            }
            workQueue.eventCount = Integer.MAX_VALUE & (i + 65536);
            Thread thread = workQueue.parker;
            if (thread == null) {
                return true;
            }
            unsafe.unpark(thread);
            return true;
        }
        short s = (short) (j >>> 32);
        if (s >= 0 && ((int) (j >> 48)) + i3 > 1) {
            return f1616U.compareAndSwapLong(this, CTL, j, ((j - AC_UNIT) & AC_MASK) | (281474976710655L & j));
        } else if (s + i3 >= 32767 || !f1616U.compareAndSwapLong(this, CTL, j, ((TC_UNIT + j) & TC_MASK) | ((-281470681743361L) & j))) {
            return false;
        } else {
            Throwable th = null;
            try {
                ForkJoinWorkerThreadFactory forkJoinWorkerThreadFactory = this.factory;
                if (forkJoinWorkerThreadFactory != null) {
                    ForkJoinWorkerThread newThread = forkJoinWorkerThreadFactory.newThread(this);
                    forkJoinWorkerThread = newThread;
                    if (newThread != null) {
                        try {
                            newThread.start();
                            return true;
                        } catch (Throwable th2) {
                            th = th2;
                            forkJoinWorkerThread = newThread;
                        }
                    }
                } else {
                    forkJoinWorkerThread = null;
                }
            } catch (Throwable th3) {
                th = th3;
                forkJoinWorkerThread = null;
            }
            deregisterWorker(forkJoinWorkerThread, th);
            return false;
        }
    }
}
