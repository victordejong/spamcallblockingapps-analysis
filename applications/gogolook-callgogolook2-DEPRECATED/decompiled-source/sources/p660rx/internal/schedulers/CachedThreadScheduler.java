package p660rx.internal.schedulers;

import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import p660rx.Scheduler;
import p660rx.Subscription;
import p660rx.functions.Action0;
import p660rx.internal.util.RxThreadFactory;
import p660rx.subscriptions.CompositeSubscription;
import p660rx.subscriptions.Subscriptions;
/* renamed from: rx.internal.schedulers.CachedThreadScheduler */
/* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/CachedThreadScheduler.class */
public final class CachedThreadScheduler extends Scheduler implements SchedulerLifecycle {
    public final AtomicReference<CachedWorkerPool> pool = new AtomicReference<>(NONE);
    public final ThreadFactory threadFactory;
    public static final TimeUnit KEEP_ALIVE_UNIT = TimeUnit.SECONDS;
    public static final ThreadWorker SHUTDOWN_THREADWORKER = new ThreadWorker(RxThreadFactory.NONE);
    public static final CachedWorkerPool NONE = new CachedWorkerPool(null, 0, null);
    public static final long KEEP_ALIVE_TIME = Integer.getInteger("rx.io-scheduler.keepalive", 60).intValue();

    /* renamed from: rx.internal.schedulers.CachedThreadScheduler$CachedWorkerPool */
    /* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool.class */
    public static final class CachedWorkerPool {
        public final CompositeSubscription allWorkers;
        public final ScheduledExecutorService evictorService;
        public final Future<?> evictorTask;
        public final ConcurrentLinkedQueue<ThreadWorker> expiringWorkerQueue;
        public final long keepAliveTime;
        public final ThreadFactory threadFactory;

        public CachedWorkerPool(final ThreadFactory threadFactory, long j, TimeUnit timeUnit) {
            ScheduledExecutorService scheduledExecutorService;
            this.threadFactory = threadFactory;
            this.keepAliveTime = timeUnit != null ? timeUnit.toNanos(j) : 0L;
            this.expiringWorkerQueue = new ConcurrentLinkedQueue<>();
            this.allWorkers = new CompositeSubscription();
            ScheduledFuture<?> scheduledFuture = null;
            if (timeUnit != null) {
                scheduledExecutorService = Executors.newScheduledThreadPool(1, new ThreadFactory(this) { // from class: rx.internal.schedulers.CachedThreadScheduler.CachedWorkerPool.1
                    @Override // java.util.concurrent.ThreadFactory
                    public Thread newThread(Runnable runnable) {
                        Thread newThread = threadFactory.newThread(runnable);
                        newThread.setName(newThread.getName() + " (Evictor)");
                        return newThread;
                    }
                });
                NewThreadWorker.tryEnableCancelPolicy(scheduledExecutorService);
                Runnable runnable = new Runnable() { // from class: rx.internal.schedulers.CachedThreadScheduler.CachedWorkerPool.2
                    @Override // java.lang.Runnable
                    public void run() {
                        CachedWorkerPool.this.evictExpiredWorkers();
                    }
                };
                long j2 = this.keepAliveTime;
                scheduledFuture = scheduledExecutorService.scheduleWithFixedDelay(runnable, j2, j2, TimeUnit.NANOSECONDS);
            } else {
                scheduledExecutorService = null;
            }
            this.evictorService = scheduledExecutorService;
            this.evictorTask = scheduledFuture;
        }

        public void evictExpiredWorkers() {
            if (!this.expiringWorkerQueue.isEmpty()) {
                long now = now();
                Iterator<ThreadWorker> it = this.expiringWorkerQueue.iterator();
                while (it.hasNext()) {
                    ThreadWorker next = it.next();
                    if (next.getExpirationTime() > now) {
                        return;
                    }
                    if (this.expiringWorkerQueue.remove(next)) {
                        this.allWorkers.remove(next);
                    }
                }
            }
        }

        public ThreadWorker get() {
            if (this.allWorkers.isUnsubscribed()) {
                return CachedThreadScheduler.SHUTDOWN_THREADWORKER;
            }
            while (!this.expiringWorkerQueue.isEmpty()) {
                ThreadWorker poll = this.expiringWorkerQueue.poll();
                if (poll != null) {
                    return poll;
                }
            }
            ThreadWorker threadWorker = new ThreadWorker(this.threadFactory);
            this.allWorkers.add(threadWorker);
            return threadWorker;
        }

        public long now() {
            return System.nanoTime();
        }

        public void release(ThreadWorker threadWorker) {
            threadWorker.setExpirationTime(now() + this.keepAliveTime);
            this.expiringWorkerQueue.offer(threadWorker);
        }

        public void shutdown() {
            try {
                if (this.evictorTask != null) {
                    this.evictorTask.cancel(true);
                }
                if (this.evictorService != null) {
                    this.evictorService.shutdownNow();
                }
            } finally {
                this.allWorkers.unsubscribe();
            }
        }
    }

    /* renamed from: rx.internal.schedulers.CachedThreadScheduler$EventLoopWorker */
    /* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/CachedThreadScheduler$EventLoopWorker.class */
    public static final class EventLoopWorker extends Scheduler.Worker implements Action0 {
        public final CompositeSubscription innerSubscription = new CompositeSubscription();
        public final AtomicBoolean once = new AtomicBoolean();
        public final CachedWorkerPool pool;
        public final ThreadWorker threadWorker;

        public EventLoopWorker(CachedWorkerPool cachedWorkerPool) {
            this.pool = cachedWorkerPool;
            this.threadWorker = cachedWorkerPool.get();
        }

        @Override // p660rx.functions.Action0
        public void call() {
            this.pool.release(this.threadWorker);
        }

        @Override // p660rx.Subscription
        public boolean isUnsubscribed() {
            return this.innerSubscription.isUnsubscribed();
        }

        @Override // p660rx.Scheduler.Worker
        public Subscription schedule(Action0 action0) {
            return schedule(action0, 0L, null);
        }

        @Override // p660rx.Scheduler.Worker
        public Subscription schedule(final Action0 action0, long j, TimeUnit timeUnit) {
            if (this.innerSubscription.isUnsubscribed()) {
                return Subscriptions.unsubscribed();
            }
            ScheduledAction scheduleActual = this.threadWorker.scheduleActual(new Action0() { // from class: rx.internal.schedulers.CachedThreadScheduler.EventLoopWorker.1
                @Override // p660rx.functions.Action0
                public void call() {
                    if (!EventLoopWorker.this.isUnsubscribed()) {
                        action0.call();
                    }
                }
            }, j, timeUnit);
            this.innerSubscription.add(scheduleActual);
            scheduleActual.addParent(this.innerSubscription);
            return scheduleActual;
        }

        @Override // p660rx.Subscription
        public void unsubscribe() {
            if (this.once.compareAndSet(false, true)) {
                this.threadWorker.schedule(this);
            }
            this.innerSubscription.unsubscribe();
        }
    }

    /* renamed from: rx.internal.schedulers.CachedThreadScheduler$ThreadWorker */
    /* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/CachedThreadScheduler$ThreadWorker.class */
    public static final class ThreadWorker extends NewThreadWorker {
        public long expirationTime = 0;

        public ThreadWorker(ThreadFactory threadFactory) {
            super(threadFactory);
        }

        public long getExpirationTime() {
            return this.expirationTime;
        }

        public void setExpirationTime(long j) {
            this.expirationTime = j;
        }
    }

    static {
        SHUTDOWN_THREADWORKER.unsubscribe();
        NONE.shutdown();
    }

    public CachedThreadScheduler(ThreadFactory threadFactory) {
        this.threadFactory = threadFactory;
        start();
    }

    @Override // p660rx.Scheduler
    public Scheduler.Worker createWorker() {
        return new EventLoopWorker(this.pool.get());
    }

    @Override // p660rx.internal.schedulers.SchedulerLifecycle
    public void shutdown() {
        CachedWorkerPool cachedWorkerPool;
        CachedWorkerPool cachedWorkerPool2;
        do {
            cachedWorkerPool = this.pool.get();
            cachedWorkerPool2 = NONE;
            if (cachedWorkerPool == cachedWorkerPool2) {
                return;
            }
        } while (!this.pool.compareAndSet(cachedWorkerPool, cachedWorkerPool2));
        cachedWorkerPool.shutdown();
    }

    public void start() {
        CachedWorkerPool cachedWorkerPool = new CachedWorkerPool(this.threadFactory, KEEP_ALIVE_TIME, KEEP_ALIVE_UNIT);
        if (!this.pool.compareAndSet(NONE, cachedWorkerPool)) {
            cachedWorkerPool.shutdown();
        }
    }
}
