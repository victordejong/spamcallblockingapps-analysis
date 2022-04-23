package io.reactivex.internal.schedulers;

import io.reactivex.Scheduler;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.disposables.ListCompositeDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.schedulers.SchedulerMultiWorkerSupport;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/ComputationScheduler.class */
public final class ComputationScheduler extends Scheduler implements SchedulerMultiWorkerSupport {

    /* renamed from: i */
    static final FixedSchedulerPool f19228i;

    /* renamed from: j */
    static final RxThreadFactory f19229j;

    /* renamed from: k */
    static final int f19230k = m3536g(Runtime.getRuntime().availableProcessors(), Integer.getInteger("rx2.computation-threads", 0).intValue());

    /* renamed from: l */
    static final PoolWorker f19231l;

    /* renamed from: g */
    final ThreadFactory f19232g;

    /* renamed from: h */
    final AtomicReference<FixedSchedulerPool> f19233h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker.class */
    public static final class EventLoopWorker extends Scheduler.Worker {

        /* renamed from: f */
        private final ListCompositeDisposable f19234f = new ListCompositeDisposable();

        /* renamed from: g */
        private final CompositeDisposable f19235g = new CompositeDisposable();

        /* renamed from: h */
        private final ListCompositeDisposable f19236h;

        /* renamed from: i */
        private final PoolWorker f19237i;

        /* renamed from: j */
        volatile boolean f19238j;

        EventLoopWorker(PoolWorker poolWorker) {
            this.f19237i = poolWorker;
            ListCompositeDisposable listCompositeDisposable = new ListCompositeDisposable();
            this.f19236h = listCompositeDisposable;
            listCompositeDisposable.mo4425b(this.f19234f);
            this.f19236h.mo4425b(this.f19235g);
        }

        @Override // io.reactivex.Scheduler.Worker
        @NonNull
        /* renamed from: b */
        public Disposable mo3229b(@NonNull Runnable runnable) {
            return this.f19238j ? EmptyDisposable.INSTANCE : this.f19237i.m3519e(runnable, 0L, TimeUnit.MILLISECONDS, this.f19234f);
        }

        @Override // io.reactivex.Scheduler.Worker
        @NonNull
        /* renamed from: c */
        public Disposable mo3228c(@NonNull Runnable runnable, long j, @NonNull TimeUnit timeUnit) {
            return this.f19238j ? EmptyDisposable.INSTANCE : this.f19237i.m3519e(runnable, j, timeUnit, this.f19235g);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.f19238j) {
                this.f19238j = true;
                this.f19236h.dispose();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f19238j;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool.class */
    public static final class FixedSchedulerPool implements SchedulerMultiWorkerSupport {

        /* renamed from: f */
        final int f19239f;

        /* renamed from: g */
        final PoolWorker[] f19240g;

        /* renamed from: h */
        long f19241h;

        FixedSchedulerPool(int i, ThreadFactory threadFactory) {
            this.f19239f = i;
            this.f19240g = new PoolWorker[i];
            for (int i2 = 0; i2 < i; i2++) {
                this.f19240g[i2] = new PoolWorker(threadFactory);
            }
        }

        @Override // io.reactivex.internal.schedulers.SchedulerMultiWorkerSupport
        /* renamed from: a */
        public void mo3513a(int i, SchedulerMultiWorkerSupport.WorkerCallback workerCallback) {
            int i2 = this.f19239f;
            if (i2 == 0) {
                for (int i3 = 0; i3 < i; i3++) {
                    workerCallback.mo3512a(i3, ComputationScheduler.f19231l);
                }
                return;
            }
            int i4 = ((int) this.f19241h) % i2;
            for (int i5 = 0; i5 < i; i5++) {
                workerCallback.mo3512a(i5, new EventLoopWorker(this.f19240g[i4]));
                int i6 = i4 + 1;
                i4 = i6;
                if (i6 == i2) {
                    i4 = 0;
                }
            }
            this.f19241h = i4;
        }

        /* renamed from: b */
        public PoolWorker m3534b() {
            int i = this.f19239f;
            if (i == 0) {
                return ComputationScheduler.f19231l;
            }
            PoolWorker[] poolWorkerArr = this.f19240g;
            long j = this.f19241h;
            this.f19241h = 1 + j;
            return poolWorkerArr[(int) (j % i)];
        }

        /* renamed from: c */
        public void m3533c() {
            for (PoolWorker poolWorker : this.f19240g) {
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
        PoolWorker poolWorker = new PoolWorker(new RxThreadFactory("RxComputationShutdown"));
        f19231l = poolWorker;
        poolWorker.dispose();
        RxThreadFactory rxThreadFactory = new RxThreadFactory("RxComputationThreadPool", Math.max(1, Math.min(10, Integer.getInteger("rx2.computation-priority", 5).intValue())), true);
        f19229j = rxThreadFactory;
        FixedSchedulerPool fixedSchedulerPool = new FixedSchedulerPool(0, rxThreadFactory);
        f19228i = fixedSchedulerPool;
        fixedSchedulerPool.m3533c();
    }

    public ComputationScheduler() {
        this(f19229j);
    }

    public ComputationScheduler(ThreadFactory threadFactory) {
        this.f19232g = threadFactory;
        this.f19233h = new AtomicReference<>(f19228i);
        m3535h();
    }

    /* renamed from: g */
    static int m3536g(int i, int i2) {
        int i3 = i;
        if (i2 > 0) {
            i3 = i2 > i ? i : i2;
        }
        return i3;
    }

    @Override // io.reactivex.internal.schedulers.SchedulerMultiWorkerSupport
    /* renamed from: a */
    public void mo3513a(int i, SchedulerMultiWorkerSupport.WorkerCallback workerCallback) {
        ObjectHelper.m4362f(i, "number > 0 required");
        this.f19233h.get().mo3513a(i, workerCallback);
    }

    @Override // io.reactivex.Scheduler
    @NonNull
    /* renamed from: b */
    public Scheduler.Worker mo3232b() {
        return new EventLoopWorker(this.f19233h.get().m3534b());
    }

    @Override // io.reactivex.Scheduler
    @NonNull
    /* renamed from: e */
    public Disposable mo3498e(@NonNull Runnable runnable, long j, TimeUnit timeUnit) {
        return this.f19233h.get().m3534b().m3518f(runnable, j, timeUnit);
    }

    @Override // io.reactivex.Scheduler
    @NonNull
    /* renamed from: f */
    public Disposable mo3501f(@NonNull Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        return this.f19233h.get().m3534b().m3517g(runnable, j, j2, timeUnit);
    }

    /* renamed from: h */
    public void m3535h() {
        FixedSchedulerPool fixedSchedulerPool = new FixedSchedulerPool(f19230k, this.f19232g);
        if (!this.f19233h.compareAndSet(f19228i, fixedSchedulerPool)) {
            fixedSchedulerPool.m3533c();
        }
    }
}
