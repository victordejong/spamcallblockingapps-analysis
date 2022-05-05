package io.reactivex.internal.schedulers;

import io.reactivex.Scheduler;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableContainer;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.schedulers.SchedulerRunnableIntrospection;
import io.reactivex.schedulers.Schedulers;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/ExecutorScheduler.class */
public final class ExecutorScheduler extends Scheduler {

    /* renamed from: i */
    static final Scheduler f19243i = Schedulers.m3238c();

    /* renamed from: g */
    final boolean f19244g;
    @NonNull

    /* renamed from: h */
    final Executor f19245h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/ExecutorScheduler$DelayedDispose.class */
    final class DelayedDispose implements Runnable {

        /* renamed from: f */
        private final DelayedRunnable f19246f;

        DelayedDispose(DelayedRunnable delayedRunnable) {
            this.f19246f = delayedRunnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            DelayedRunnable delayedRunnable = this.f19246f;
            delayedRunnable.f19249g.m4422a(ExecutorScheduler.this.mo3499d(delayedRunnable));
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable.class */
    static final class DelayedRunnable extends AtomicReference<Runnable> implements Runnable, Disposable, SchedulerRunnableIntrospection {
        private static final long serialVersionUID = -4101336210206799084L;

        /* renamed from: f */
        final SequentialDisposable f19248f = new SequentialDisposable();

        /* renamed from: g */
        final SequentialDisposable f19249g = new SequentialDisposable();

        DelayedRunnable(Runnable runnable) {
            super(runnable);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (getAndSet(null) != null) {
                this.f19248f.dispose();
                this.f19249g.dispose();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == null;
        }

        @Override // java.lang.Runnable
        public void run() {
            Runnable runnable = get();
            if (runnable != null) {
                try {
                    runnable.run();
                } finally {
                    lazySet(false);
                    this.f19248f.lazySet(DisposableHelper.DISPOSED);
                    this.f19249g.lazySet(DisposableHelper.DISPOSED);
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker.class */
    public static final class ExecutorWorker extends Scheduler.Worker implements Runnable {

        /* renamed from: f */
        final boolean f19250f;

        /* renamed from: g */
        final Executor f19251g;

        /* renamed from: i */
        volatile boolean f19253i;

        /* renamed from: j */
        final AtomicInteger f19254j = new AtomicInteger();

        /* renamed from: k */
        final CompositeDisposable f19255k = new CompositeDisposable();

        /* renamed from: h */
        final MpscLinkedQueue<Runnable> f19252h = new MpscLinkedQueue<>();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$BooleanRunnable.class */
        public static final class BooleanRunnable extends AtomicBoolean implements Runnable, Disposable {
            private static final long serialVersionUID = -2421395018820541164L;

            /* renamed from: f */
            final Runnable f19256f;

            BooleanRunnable(Runnable runnable) {
                this.f19256f = runnable;
            }

            @Override // io.reactivex.disposables.Disposable
            public void dispose() {
                lazySet(true);
            }

            @Override // io.reactivex.disposables.Disposable
            public boolean isDisposed() {
                return get();
            }

            @Override // java.lang.Runnable
            public void run() {
                if (!get()) {
                    try {
                        this.f19256f.run();
                    } finally {
                        lazySet(true);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$InterruptibleRunnable.class */
        public static final class InterruptibleRunnable extends AtomicInteger implements Runnable, Disposable {
            private static final long serialVersionUID = -3603436687413320876L;

            /* renamed from: f */
            final Runnable f19257f;

            /* renamed from: g */
            final DisposableContainer f19258g;

            /* renamed from: h */
            volatile Thread f19259h;

            InterruptibleRunnable(Runnable runnable, DisposableContainer disposableContainer) {
                this.f19257f = runnable;
                this.f19258g = disposableContainer;
            }

            /* renamed from: a */
            void m3532a() {
                DisposableContainer disposableContainer = this.f19258g;
                if (disposableContainer != null) {
                    disposableContainer.mo4424c(this);
                }
            }

            @Override // io.reactivex.disposables.Disposable
            public void dispose() {
                while (true) {
                    int i = get();
                    if (i < 2) {
                        if (i == 0) {
                            if (compareAndSet(0, 4)) {
                                m3532a();
                                return;
                            }
                        } else if (compareAndSet(1, 3)) {
                            Thread thread = this.f19259h;
                            if (thread != null) {
                                thread.interrupt();
                                this.f19259h = null;
                            }
                            set(4);
                            m3532a();
                            return;
                        }
                    } else {
                        return;
                    }
                }
            }

            @Override // io.reactivex.disposables.Disposable
            public boolean isDisposed() {
                return get() >= 2;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (get() == 0) {
                    this.f19259h = Thread.currentThread();
                    if (compareAndSet(0, 1)) {
                        try {
                            this.f19257f.run();
                            this.f19259h = null;
                            if (compareAndSet(1, 2)) {
                                m3532a();
                                return;
                            }
                            while (get() == 3) {
                                Thread.yield();
                            }
                            Thread.interrupted();
                        } catch (Throwable th) {
                            this.f19259h = null;
                            if (!compareAndSet(1, 2)) {
                                while (get() == 3) {
                                    Thread.yield();
                                }
                                Thread.interrupted();
                            } else {
                                m3532a();
                            }
                            throw th;
                        }
                    } else {
                        this.f19259h = null;
                    }
                }
            }
        }

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$SequentialDispose.class */
        final class SequentialDispose implements Runnable {

            /* renamed from: f */
            private final SequentialDisposable f19260f;

            /* renamed from: g */
            private final Runnable f19261g;

            SequentialDispose(SequentialDisposable sequentialDisposable, Runnable runnable) {
                this.f19260f = sequentialDisposable;
                this.f19261g = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f19260f.m4422a(ExecutorWorker.this.mo3229b(this.f19261g));
            }
        }

        public ExecutorWorker(Executor executor, boolean z) {
            this.f19251g = executor;
            this.f19250f = z;
        }

        @Override // io.reactivex.Scheduler.Worker
        @NonNull
        /* renamed from: b */
        public Disposable mo3229b(@NonNull Runnable runnable) {
            Disposable disposable;
            if (this.f19253i) {
                return EmptyDisposable.INSTANCE;
            }
            Runnable v = RxJavaPlugins.m3352v(runnable);
            if (this.f19250f) {
                disposable = new InterruptibleRunnable(v, this.f19255k);
                this.f19255k.mo4425b(disposable);
            } else {
                disposable = new BooleanRunnable(v);
            }
            this.f19252h.offer(disposable);
            if (this.f19254j.getAndIncrement() == 0) {
                try {
                    this.f19251g.execute(this);
                } catch (RejectedExecutionException e) {
                    this.f19253i = true;
                    this.f19252h.clear();
                    RxJavaPlugins.m3354t(e);
                    return EmptyDisposable.INSTANCE;
                }
            }
            return disposable;
        }

        @Override // io.reactivex.Scheduler.Worker
        @NonNull
        /* renamed from: c */
        public Disposable mo3228c(@NonNull Runnable runnable, long j, @NonNull TimeUnit timeUnit) {
            if (j <= 0) {
                return mo3229b(runnable);
            }
            if (this.f19253i) {
                return EmptyDisposable.INSTANCE;
            }
            SequentialDisposable sequentialDisposable = new SequentialDisposable();
            SequentialDisposable sequentialDisposable2 = new SequentialDisposable(sequentialDisposable);
            ScheduledRunnable scheduledRunnable = new ScheduledRunnable(new SequentialDispose(sequentialDisposable2, RxJavaPlugins.m3352v(runnable)), this.f19255k);
            this.f19255k.mo4425b(scheduledRunnable);
            Executor executor = this.f19251g;
            if (executor instanceof ScheduledExecutorService) {
                try {
                    scheduledRunnable.m3514a(((ScheduledExecutorService) executor).schedule((Callable) scheduledRunnable, j, timeUnit));
                } catch (RejectedExecutionException e) {
                    this.f19253i = true;
                    RxJavaPlugins.m3354t(e);
                    return EmptyDisposable.INSTANCE;
                }
            } else {
                scheduledRunnable.m3514a(new DisposeOnCancel(ExecutorScheduler.f19243i.mo3498e(scheduledRunnable, j, timeUnit)));
            }
            sequentialDisposable.m4422a(scheduledRunnable);
            return sequentialDisposable2;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.f19253i) {
                this.f19253i = true;
                this.f19255k.dispose();
                if (this.f19254j.getAndIncrement() == 0) {
                    this.f19252h.clear();
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f19253i;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0023, code lost:
            if (r3.f19253i == false) goto L_0x002b;
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x0026, code lost:
            r0.clear();
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x002a, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x002b, code lost:
            r0 = r3.f19254j.addAndGet(-r5);
            r5 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x003b, code lost:
            if (r0 != 0) goto L_0x0007;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x003e, code lost:
            return;
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r3 = this;
                r0 = r3
                io.reactivex.internal.queue.MpscLinkedQueue<java.lang.Runnable> r0 = r0.f19252h
                r4 = r0
                r0 = 1
                r5 = r0
            L_0x0007:
                r0 = r3
                boolean r0 = r0.f19253i
                if (r0 == 0) goto L_0x0013
                r0 = r4
                r0.clear()
                return
            L_0x0013:
                r0 = r4
                java.lang.Object r0 = r0.poll()
                java.lang.Runnable r0 = (java.lang.Runnable) r0
                r6 = r0
                r0 = r6
                if (r0 != 0) goto L_0x003f
                r0 = r3
                boolean r0 = r0.f19253i
                if (r0 == 0) goto L_0x002b
                r0 = r4
                r0.clear()
                return
            L_0x002b:
                r0 = r3
                java.util.concurrent.atomic.AtomicInteger r0 = r0.f19254j
                r1 = r5
                int r1 = -r1
                int r0 = r0.addAndGet(r1)
                r7 = r0
                r0 = r7
                r5 = r0
                r0 = r7
                if (r0 != 0) goto L_0x0007
                return
            L_0x003f:
                r0 = r6
                r0.run()
                r0 = r3
                boolean r0 = r0.f19253i
                if (r0 == 0) goto L_0x0013
                r0 = r4
                r0.clear()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.schedulers.ExecutorScheduler.ExecutorWorker.run():void");
        }
    }

    @Override // io.reactivex.Scheduler
    @NonNull
    /* renamed from: b */
    public Scheduler.Worker mo3232b() {
        return new ExecutorWorker(this.f19245h, this.f19244g);
    }

    @Override // io.reactivex.Scheduler
    @NonNull
    /* renamed from: d */
    public Disposable mo3499d(@NonNull Runnable runnable) {
        Runnable v = RxJavaPlugins.m3352v(runnable);
        try {
            if (this.f19245h instanceof ExecutorService) {
                ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(v);
                scheduledDirectTask.m3537a(((ExecutorService) this.f19245h).submit(scheduledDirectTask));
                return scheduledDirectTask;
            } else if (this.f19244g) {
                ExecutorWorker.InterruptibleRunnable interruptibleRunnable = new ExecutorWorker.InterruptibleRunnable(v, null);
                this.f19245h.execute(interruptibleRunnable);
                return interruptibleRunnable;
            } else {
                ExecutorWorker.BooleanRunnable booleanRunnable = new ExecutorWorker.BooleanRunnable(v);
                this.f19245h.execute(booleanRunnable);
                return booleanRunnable;
            }
        } catch (RejectedExecutionException e) {
            RxJavaPlugins.m3354t(e);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override // io.reactivex.Scheduler
    @NonNull
    /* renamed from: e */
    public Disposable mo3498e(@NonNull Runnable runnable, long j, TimeUnit timeUnit) {
        Runnable v = RxJavaPlugins.m3352v(runnable);
        if (this.f19245h instanceof ScheduledExecutorService) {
            try {
                ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(v);
                scheduledDirectTask.m3537a(((ScheduledExecutorService) this.f19245h).schedule(scheduledDirectTask, j, timeUnit));
                return scheduledDirectTask;
            } catch (RejectedExecutionException e) {
                RxJavaPlugins.m3354t(e);
                return EmptyDisposable.INSTANCE;
            }
        } else {
            DelayedRunnable delayedRunnable = new DelayedRunnable(v);
            delayedRunnable.f19248f.m4422a(f19243i.mo3498e(new DelayedDispose(delayedRunnable), j, timeUnit));
            return delayedRunnable;
        }
    }

    @Override // io.reactivex.Scheduler
    @NonNull
    /* renamed from: f */
    public Disposable mo3501f(@NonNull Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        if (!(this.f19245h instanceof ScheduledExecutorService)) {
            return super.mo3501f(runnable, j, j2, timeUnit);
        }
        try {
            ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(RxJavaPlugins.m3352v(runnable));
            scheduledDirectPeriodicTask.m3537a(((ScheduledExecutorService) this.f19245h).scheduleAtFixedRate(scheduledDirectPeriodicTask, j, j2, timeUnit));
            return scheduledDirectPeriodicTask;
        } catch (RejectedExecutionException e) {
            RxJavaPlugins.m3354t(e);
            return EmptyDisposable.INSTANCE;
        }
    }
}
