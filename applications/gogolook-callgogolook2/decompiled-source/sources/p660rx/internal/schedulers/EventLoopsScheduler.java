package p660rx.internal.schedulers;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import p660rx.Scheduler;
import p660rx.Subscription;
import p660rx.functions.Action0;
import p660rx.internal.util.SubscriptionList;
import p660rx.subscriptions.CompositeSubscription;
import p660rx.subscriptions.Subscriptions;
/* renamed from: rx.internal.schedulers.EventLoopsScheduler */
/* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/EventLoopsScheduler.class */
public final class EventLoopsScheduler extends Scheduler implements SchedulerLifecycle {
    public static final int MAX_THREADS;
    public static final FixedSchedulerPool NONE;
    public static final PoolWorker SHUTDOWN_WORKER;
    public final AtomicReference<FixedSchedulerPool> pool = new AtomicReference<>(NONE);
    public final ThreadFactory threadFactory;

    /* renamed from: rx.internal.schedulers.EventLoopsScheduler$EventLoopWorker */
    /* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/EventLoopsScheduler$EventLoopWorker.class */
    public static final class EventLoopWorker extends Scheduler.Worker {
        public final PoolWorker poolWorker;
        public final SubscriptionList serial = new SubscriptionList();
        public final CompositeSubscription timed = new CompositeSubscription();
        public final SubscriptionList both = new SubscriptionList(this.serial, this.timed);

        public EventLoopWorker(PoolWorker poolWorker) {
            this.poolWorker = poolWorker;
        }

        @Override // p660rx.Subscription
        public boolean isUnsubscribed() {
            return this.both.isUnsubscribed();
        }

        @Override // p660rx.Scheduler.Worker
        public Subscription schedule(final Action0 action0) {
            return isUnsubscribed() ? Subscriptions.unsubscribed() : this.poolWorker.scheduleActual(new Action0() { // from class: rx.internal.schedulers.EventLoopsScheduler.EventLoopWorker.1
                @Override // p660rx.functions.Action0
                public void call() {
                    if (!EventLoopWorker.this.isUnsubscribed()) {
                        action0.call();
                    }
                }
            }, 0L, (TimeUnit) null, this.serial);
        }

        @Override // p660rx.Scheduler.Worker
        public Subscription schedule(final Action0 action0, long j, TimeUnit timeUnit) {
            return isUnsubscribed() ? Subscriptions.unsubscribed() : this.poolWorker.scheduleActual(new Action0() { // from class: rx.internal.schedulers.EventLoopsScheduler.EventLoopWorker.2
                @Override // p660rx.functions.Action0
                public void call() {
                    if (!EventLoopWorker.this.isUnsubscribed()) {
                        action0.call();
                    }
                }
            }, j, timeUnit, this.timed);
        }

        @Override // p660rx.Subscription
        public void unsubscribe() {
            this.both.unsubscribe();
        }
    }

    /* renamed from: rx.internal.schedulers.EventLoopsScheduler$FixedSchedulerPool */
    /* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool.class */
    public static final class FixedSchedulerPool {
        public final int cores;
        public final PoolWorker[] eventLoops;

        /* renamed from: n */
        public long f33471n;

        public FixedSchedulerPool(ThreadFactory threadFactory, int i) {
            this.cores = i;
            this.eventLoops = new PoolWorker[i];
            for (int i2 = 0; i2 < i; i2++) {
                this.eventLoops[i2] = new PoolWorker(threadFactory);
            }
        }

        public PoolWorker getEventLoop() {
            int i = this.cores;
            if (i == 0) {
                return EventLoopsScheduler.SHUTDOWN_WORKER;
            }
            PoolWorker[] poolWorkerArr = this.eventLoops;
            long j = this.f33471n;
            this.f33471n = 1 + j;
            return poolWorkerArr[(int) (j % i)];
        }

        public void shutdown() {
            for (PoolWorker poolWorker : this.eventLoops) {
                poolWorker.unsubscribe();
            }
        }
    }

    /* renamed from: rx.internal.schedulers.EventLoopsScheduler$PoolWorker */
    /* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/EventLoopsScheduler$PoolWorker.class */
    public static final class PoolWorker extends NewThreadWorker {
        public PoolWorker(ThreadFactory threadFactory) {
            super(threadFactory);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0019, code lost:
        if (r0 > r0) goto L_0x001c;
     */
    static {
        /*
            java.lang.String r0 = "rx.scheduler.max-computation-threads"
            r1 = 0
            java.lang.Integer r0 = java.lang.Integer.getInteger(r0, r1)
            int r0 = r0.intValue()
            r5 = r0
            java.lang.Runtime r0 = java.lang.Runtime.getRuntime()
            int r0 = r0.availableProcessors()
            r6 = r0
            r0 = r5
            if (r0 <= 0) goto L_0x001c
            r0 = r5
            r7 = r0
            r0 = r5
            r1 = r6
            if (r0 <= r1) goto L_0x001e
        L_0x001c:
            r0 = r6
            r7 = r0
        L_0x001e:
            r0 = r7
            p660rx.internal.schedulers.EventLoopsScheduler.MAX_THREADS = r0
            rx.internal.schedulers.EventLoopsScheduler$PoolWorker r0 = new rx.internal.schedulers.EventLoopsScheduler$PoolWorker
            r1 = r0
            java.util.concurrent.ThreadFactory r2 = p660rx.internal.util.RxThreadFactory.NONE
            r1.<init>(r2)
            p660rx.internal.schedulers.EventLoopsScheduler.SHUTDOWN_WORKER = r0
            rx.internal.schedulers.EventLoopsScheduler$PoolWorker r0 = p660rx.internal.schedulers.EventLoopsScheduler.SHUTDOWN_WORKER
            r0.unsubscribe()
            rx.internal.schedulers.EventLoopsScheduler$FixedSchedulerPool r0 = new rx.internal.schedulers.EventLoopsScheduler$FixedSchedulerPool
            r1 = r0
            r2 = 0
            r3 = 0
            r1.<init>(r2, r3)
            p660rx.internal.schedulers.EventLoopsScheduler.NONE = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p660rx.internal.schedulers.EventLoopsScheduler.m42085clinit():void");
    }

    public EventLoopsScheduler(ThreadFactory threadFactory) {
        this.threadFactory = threadFactory;
        start();
    }

    @Override // p660rx.Scheduler
    public Scheduler.Worker createWorker() {
        return new EventLoopWorker(this.pool.get().getEventLoop());
    }

    public Subscription scheduleDirect(Action0 action0) {
        return this.pool.get().getEventLoop().scheduleActual(action0, -1L, TimeUnit.NANOSECONDS);
    }

    @Override // p660rx.internal.schedulers.SchedulerLifecycle
    public void shutdown() {
        FixedSchedulerPool fixedSchedulerPool;
        FixedSchedulerPool fixedSchedulerPool2;
        do {
            fixedSchedulerPool = this.pool.get();
            fixedSchedulerPool2 = NONE;
            if (fixedSchedulerPool == fixedSchedulerPool2) {
                return;
            }
        } while (!this.pool.compareAndSet(fixedSchedulerPool, fixedSchedulerPool2));
        fixedSchedulerPool.shutdown();
    }

    public void start() {
        FixedSchedulerPool fixedSchedulerPool = new FixedSchedulerPool(this.threadFactory, MAX_THREADS);
        if (!this.pool.compareAndSet(NONE, fixedSchedulerPool)) {
            fixedSchedulerPool.shutdown();
        }
    }
}
