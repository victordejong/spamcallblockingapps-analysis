package io.reactivex.internal.schedulers;

import io.reactivex.Scheduler;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.EmptyDisposable;
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
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/IoScheduler.class */
public final class IoScheduler extends Scheduler {

    /* renamed from: i */
    static final RxThreadFactory f19271i;

    /* renamed from: j */
    static final RxThreadFactory f19272j;

    /* renamed from: m */
    static final ThreadWorker f19275m;

    /* renamed from: n */
    static final CachedWorkerPool f19276n;

    /* renamed from: g */
    final ThreadFactory f19277g;

    /* renamed from: h */
    final AtomicReference<CachedWorkerPool> f19278h;

    /* renamed from: l */
    private static final TimeUnit f19274l = TimeUnit.SECONDS;

    /* renamed from: k */
    private static final long f19273k = Long.getLong("rx2.io-keep-alive-time", 60).longValue();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool.class */
    public static final class CachedWorkerPool implements Runnable {

        /* renamed from: f */
        private final long f19279f;

        /* renamed from: g */
        private final ConcurrentLinkedQueue<ThreadWorker> f19280g;

        /* renamed from: h */
        final CompositeDisposable f19281h;

        /* renamed from: i */
        private final ScheduledExecutorService f19282i;

        /* renamed from: j */
        private final Future<?> f19283j;

        /* renamed from: k */
        private final ThreadFactory f19284k;

        CachedWorkerPool(long j, TimeUnit timeUnit, ThreadFactory threadFactory) {
            ScheduledFuture<?> scheduledFuture;
            this.f19279f = timeUnit != null ? timeUnit.toNanos(j) : 0L;
            this.f19280g = new ConcurrentLinkedQueue<>();
            this.f19281h = new CompositeDisposable();
            this.f19284k = threadFactory;
            ScheduledExecutorService scheduledExecutorService = null;
            if (timeUnit != null) {
                scheduledExecutorService = Executors.newScheduledThreadPool(1, IoScheduler.f19272j);
                long j2 = this.f19279f;
                scheduledFuture = scheduledExecutorService.scheduleWithFixedDelay(this, j2, j2, TimeUnit.NANOSECONDS);
            } else {
                scheduledFuture = null;
            }
            this.f19282i = scheduledExecutorService;
            this.f19283j = scheduledFuture;
        }

        /* renamed from: a */
        void m3526a() {
            if (!this.f19280g.isEmpty()) {
                long c = m3524c();
                Iterator<ThreadWorker> it = this.f19280g.iterator();
                while (it.hasNext()) {
                    ThreadWorker next = it.next();
                    if (next.m3521i() > c) {
                        return;
                    }
                    if (this.f19280g.remove(next)) {
                        this.f19281h.mo4426a(next);
                    }
                }
            }
        }

        /* renamed from: b */
        ThreadWorker m3525b() {
            if (this.f19281h.isDisposed()) {
                return IoScheduler.f19275m;
            }
            while (!this.f19280g.isEmpty()) {
                ThreadWorker poll = this.f19280g.poll();
                if (poll != null) {
                    return poll;
                }
            }
            ThreadWorker threadWorker = new ThreadWorker(this.f19284k);
            this.f19281h.mo4425b(threadWorker);
            return threadWorker;
        }

        /* renamed from: c */
        long m3524c() {
            return System.nanoTime();
        }

        /* renamed from: d */
        void m3523d(ThreadWorker threadWorker) {
            threadWorker.m3520j(m3524c() + this.f19279f);
            this.f19280g.offer(threadWorker);
        }

        /* renamed from: e */
        void m3522e() {
            this.f19281h.dispose();
            Future<?> future = this.f19283j;
            if (future != null) {
                future.cancel(true);
            }
            ScheduledExecutorService scheduledExecutorService = this.f19282i;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdownNow();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            m3526a();
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/IoScheduler$EventLoopWorker.class */
    static final class EventLoopWorker extends Scheduler.Worker {

        /* renamed from: g */
        private final CachedWorkerPool f19286g;

        /* renamed from: h */
        private final ThreadWorker f19287h;

        /* renamed from: i */
        final AtomicBoolean f19288i = new AtomicBoolean();

        /* renamed from: f */
        private final CompositeDisposable f19285f = new CompositeDisposable();

        EventLoopWorker(CachedWorkerPool cachedWorkerPool) {
            this.f19286g = cachedWorkerPool;
            this.f19287h = cachedWorkerPool.m3525b();
        }

        @Override // io.reactivex.Scheduler.Worker
        @NonNull
        /* renamed from: c */
        public Disposable mo3228c(@NonNull Runnable runnable, long j, @NonNull TimeUnit timeUnit) {
            return this.f19285f.isDisposed() ? EmptyDisposable.INSTANCE : this.f19287h.m3519e(runnable, j, timeUnit, this.f19285f);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.f19288i.compareAndSet(false, true)) {
                this.f19285f.dispose();
                this.f19286g.m3523d(this.f19287h);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f19288i.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/IoScheduler$ThreadWorker.class */
    public static final class ThreadWorker extends NewThreadWorker {

        /* renamed from: h */
        private long f19289h = 0;

        ThreadWorker(ThreadFactory threadFactory) {
            super(threadFactory);
        }

        /* renamed from: i */
        public long m3521i() {
            return this.f19289h;
        }

        /* renamed from: j */
        public void m3520j(long j) {
            this.f19289h = j;
        }
    }

    static {
        ThreadWorker threadWorker = new ThreadWorker(new RxThreadFactory("RxCachedThreadSchedulerShutdown"));
        f19275m = threadWorker;
        threadWorker.dispose();
        int max = Math.max(1, Math.min(10, Integer.getInteger("rx2.io-priority", 5).intValue()));
        f19271i = new RxThreadFactory("RxCachedThreadScheduler", max);
        f19272j = new RxThreadFactory("RxCachedWorkerPoolEvictor", max);
        CachedWorkerPool cachedWorkerPool = new CachedWorkerPool(0L, null, f19271i);
        f19276n = cachedWorkerPool;
        cachedWorkerPool.m3522e();
    }

    public IoScheduler() {
        this(f19271i);
    }

    public IoScheduler(ThreadFactory threadFactory) {
        this.f19277g = threadFactory;
        this.f19278h = new AtomicReference<>(f19276n);
        m3527g();
    }

    @Override // io.reactivex.Scheduler
    @NonNull
    /* renamed from: b */
    public Scheduler.Worker mo3232b() {
        return new EventLoopWorker(this.f19278h.get());
    }

    /* renamed from: g */
    public void m3527g() {
        CachedWorkerPool cachedWorkerPool = new CachedWorkerPool(f19273k, f19274l, this.f19277g);
        if (!this.f19278h.compareAndSet(f19276n, cachedWorkerPool)) {
            cachedWorkerPool.m3522e();
        }
    }
}
