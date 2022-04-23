package io.reactivex.internal.schedulers;

import io.reactivex.Scheduler;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.disposables.ListCompositeDisposable;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/ComputationScheduler.class */
public final class ComputationScheduler extends Scheduler {
    final AtomicReference<FixedSchedulerPool> pool;
    final ThreadFactory threadFactory;
    static final String KEY_MAX_THREADS = "rx2.computation-threads";
    static final int MAX_THREADS = cap(Runtime.getRuntime().availableProcessors(), Integer.getInteger(KEY_MAX_THREADS, 0).intValue());
    static final PoolWorker SHUTDOWN_WORKER = new PoolWorker(new RxThreadFactory("RxComputationShutdown"));
    private static final String THREAD_NAME_PREFIX = "RxComputationThreadPool";
    private static final String KEY_COMPUTATION_PRIORITY = "rx2.computation-priority";
    static final RxThreadFactory THREAD_FACTORY = new RxThreadFactory(THREAD_NAME_PREFIX, Math.max(1, Math.min(10, Integer.getInteger(KEY_COMPUTATION_PRIORITY, 5).intValue())), true);
    static final FixedSchedulerPool NONE = new FixedSchedulerPool(0, THREAD_FACTORY);

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker.class */
    static final class EventLoopWorker extends Scheduler.Worker {
        volatile boolean disposed;
        private final PoolWorker poolWorker;
        private final ListCompositeDisposable serial = new ListCompositeDisposable();
        private final CompositeDisposable timed = new CompositeDisposable();
        private final ListCompositeDisposable both = new ListCompositeDisposable();

        EventLoopWorker(PoolWorker poolWorker) {
            this.poolWorker = poolWorker;
            this.both.add(this.serial);
            this.both.add(this.timed);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.disposed) {
                this.disposed = true;
                this.both.dispose();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.disposed;
        }

        @Override // io.reactivex.Scheduler.Worker
        @NonNull
        public Disposable schedule(@NonNull Runnable runnable) {
            return this.disposed ? EmptyDisposable.INSTANCE : this.poolWorker.scheduleActual(runnable, 0L, TimeUnit.MILLISECONDS, this.serial);
        }

        @Override // io.reactivex.Scheduler.Worker
        @NonNull
        public Disposable schedule(@NonNull Runnable runnable, long j, @NonNull TimeUnit timeUnit) {
            return this.disposed ? EmptyDisposable.INSTANCE : this.poolWorker.scheduleActual(runnable, j, timeUnit, this.timed);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool.class */
    public static final class FixedSchedulerPool {
        final int cores;
        final PoolWorker[] eventLoops;

        /* renamed from: n */
        long f697n;

        FixedSchedulerPool(int i, ThreadFactory threadFactory) {
            this.cores = i;
            this.eventLoops = new PoolWorker[i];
            for (int i2 = 0; i2 < i; i2++) {
                this.eventLoops[i2] = new PoolWorker(threadFactory);
            }
        }

        public PoolWorker getEventLoop() {
            int i = this.cores;
            if (i == 0) {
                return ComputationScheduler.SHUTDOWN_WORKER;
            }
            PoolWorker[] poolWorkerArr = this.eventLoops;
            long j = this.f697n;
            this.f697n = 1 + j;
            return poolWorkerArr[(int) (j % i)];
        }

        public void shutdown() {
            for (PoolWorker poolWorker : this.eventLoops) {
                poolWorker.dispose();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/ComputationScheduler$PoolWorker.class */
    public static final class PoolWorker extends NewThreadWorker {
        PoolWorker(ThreadFactory threadFactory) {
            super(threadFactory);
        }
    }

    static {
        SHUTDOWN_WORKER.dispose();
        NONE.shutdown();
    }

    public ComputationScheduler() {
        this(THREAD_FACTORY);
    }

    public ComputationScheduler(ThreadFactory threadFactory) {
        this.threadFactory = threadFactory;
        this.pool = new AtomicReference<>(NONE);
        start();
    }

    static int cap(int i, int i2) {
        int i3 = i;
        if (i2 > 0) {
            i3 = i2 > i ? i : i2;
        }
        return i3;
    }

    @Override // io.reactivex.Scheduler
    @NonNull
    public Scheduler.Worker createWorker() {
        return new EventLoopWorker(this.pool.get().getEventLoop());
    }

    @Override // io.reactivex.Scheduler
    @NonNull
    public Disposable scheduleDirect(@NonNull Runnable runnable, long j, TimeUnit timeUnit) {
        return this.pool.get().getEventLoop().scheduleDirect(runnable, j, timeUnit);
    }

    @Override // io.reactivex.Scheduler
    @NonNull
    public Disposable schedulePeriodicallyDirect(@NonNull Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        return this.pool.get().getEventLoop().schedulePeriodicallyDirect(runnable, j, j2, timeUnit);
    }

    @Override // io.reactivex.Scheduler
    public void shutdown() {
        FixedSchedulerPool fixedSchedulerPool;
        do {
            fixedSchedulerPool = this.pool.get();
            if (fixedSchedulerPool == NONE) {
                return;
            }
        } while (!this.pool.compareAndSet(fixedSchedulerPool, NONE));
        fixedSchedulerPool.shutdown();
    }

    @Override // io.reactivex.Scheduler
    public void start() {
        FixedSchedulerPool fixedSchedulerPool = new FixedSchedulerPool(MAX_THREADS, this.threadFactory);
        if (!this.pool.compareAndSet(NONE, fixedSchedulerPool)) {
            fixedSchedulerPool.shutdown();
        }
    }
}
