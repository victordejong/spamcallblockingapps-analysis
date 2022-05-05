package io.reactivex;

import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.schedulers.NewThreadWorker;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.schedulers.SchedulerRunnableIntrospection;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:io/reactivex/Scheduler.class */
public abstract class Scheduler {

    /* renamed from: f */
    static final long f15089f = TimeUnit.MINUTES.toNanos(Long.getLong("rx2.scheduler.drift-tolerance", 15).longValue());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/Scheduler$DisposeTask.class */
    public static final class DisposeTask implements Disposable, Runnable, SchedulerRunnableIntrospection {
        @NonNull

        /* renamed from: f */
        final Runnable f15090f;
        @NonNull

        /* renamed from: g */
        final Worker f15091g;
        @Nullable

        /* renamed from: h */
        Thread f15092h;

        DisposeTask(@NonNull Runnable runnable, @NonNull Worker worker) {
            this.f15090f = runnable;
            this.f15091g = worker;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.f15092h == Thread.currentThread()) {
                Worker worker = this.f15091g;
                if (worker instanceof NewThreadWorker) {
                    ((NewThreadWorker) worker).m3516h();
                    return;
                }
            }
            this.f15091g.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15091g.isDisposed();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f15092h = Thread.currentThread();
            try {
                this.f15090f.run();
            } finally {
                dispose();
                this.f15092h = null;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/Scheduler$PeriodicDirectTask.class */
    static final class PeriodicDirectTask implements Disposable, Runnable, SchedulerRunnableIntrospection {
        @NonNull

        /* renamed from: f */
        final Runnable f15093f;
        @NonNull

        /* renamed from: g */
        final Worker f15094g;

        /* renamed from: h */
        volatile boolean f15095h;

        PeriodicDirectTask(@NonNull Runnable runnable, @NonNull Worker worker) {
            this.f15093f = runnable;
            this.f15094g = worker;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f15095h = true;
            this.f15094g.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15095h;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f15095h) {
                try {
                    this.f15093f.run();
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f15094g.dispose();
                    throw ExceptionHelper.m3434e(th);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/Scheduler$Worker.class */
    public static abstract class Worker implements Disposable {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:io/reactivex/Scheduler$Worker$PeriodicTask.class */
        public final class PeriodicTask implements Runnable, SchedulerRunnableIntrospection {
            @NonNull

            /* renamed from: f */
            final Runnable f15096f;
            @NonNull

            /* renamed from: g */
            final SequentialDisposable f15097g;

            /* renamed from: h */
            final long f15098h;

            /* renamed from: i */
            long f15099i;

            /* renamed from: j */
            long f15100j;

            /* renamed from: k */
            long f15101k;

            PeriodicTask(long j, @NonNull Runnable runnable, long j2, @NonNull SequentialDisposable sequentialDisposable, long j3) {
                this.f15096f = runnable;
                this.f15097g = sequentialDisposable;
                this.f15098h = j3;
                this.f15100j = j2;
                this.f15101k = j;
            }

            @Override // java.lang.Runnable
            public void run() {
                long j;
                this.f15096f.run();
                if (!this.f15097g.isDisposed()) {
                    long a = Worker.this.mo3230a(TimeUnit.NANOSECONDS);
                    long j2 = Scheduler.f15089f;
                    long j3 = this.f15100j;
                    if (a + j2 >= j3) {
                        long j4 = this.f15098h;
                        if (a < j3 + j4 + j2) {
                            long j5 = this.f15101k;
                            long j6 = this.f15099i + 1;
                            this.f15099i = j6;
                            j = j5 + (j6 * j4);
                            this.f15100j = a;
                            this.f15097g.m4422a(Worker.this.mo3228c(this, j - a, TimeUnit.NANOSECONDS));
                        }
                    }
                    long j7 = this.f15098h;
                    j = a + j7;
                    long j8 = this.f15099i + 1;
                    this.f15099i = j8;
                    this.f15101k = j - (j7 * j8);
                    this.f15100j = a;
                    this.f15097g.m4422a(Worker.this.mo3228c(this, j - a, TimeUnit.NANOSECONDS));
                }
            }
        }

        /* renamed from: a */
        public long mo3230a(@NonNull TimeUnit timeUnit) {
            return timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
        }

        @NonNull
        /* renamed from: b */
        public Disposable mo3229b(@NonNull Runnable runnable) {
            return mo3228c(runnable, 0L, TimeUnit.NANOSECONDS);
        }

        @NonNull
        /* renamed from: c */
        public abstract Disposable mo3228c(@NonNull Runnable runnable, long j, @NonNull TimeUnit timeUnit);

        @NonNull
        /* renamed from: d */
        public Disposable mo3531d(@NonNull Runnable runnable, long j, long j2, @NonNull TimeUnit timeUnit) {
            SequentialDisposable sequentialDisposable = new SequentialDisposable();
            SequentialDisposable sequentialDisposable2 = new SequentialDisposable(sequentialDisposable);
            Runnable v = RxJavaPlugins.m3352v(runnable);
            long nanos = timeUnit.toNanos(j2);
            long a = mo3230a(TimeUnit.NANOSECONDS);
            Disposable c = mo3228c(new PeriodicTask(a + timeUnit.toNanos(j), v, a, sequentialDisposable2, nanos), j, timeUnit);
            if (c == EmptyDisposable.INSTANCE) {
                return c;
            }
            sequentialDisposable.m4422a(c);
            return sequentialDisposable2;
        }
    }

    @NonNull
    /* renamed from: b */
    public abstract Worker mo3232b();

    /* renamed from: c */
    public long mo3231c(@NonNull TimeUnit timeUnit) {
        return timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
    }

    @NonNull
    /* renamed from: d */
    public Disposable mo3499d(@NonNull Runnable runnable) {
        return mo3498e(runnable, 0L, TimeUnit.NANOSECONDS);
    }

    @NonNull
    /* renamed from: e */
    public Disposable mo3498e(@NonNull Runnable runnable, long j, @NonNull TimeUnit timeUnit) {
        Worker b = mo3232b();
        DisposeTask disposeTask = new DisposeTask(RxJavaPlugins.m3352v(runnable), b);
        b.mo3228c(disposeTask, j, timeUnit);
        return disposeTask;
    }

    @NonNull
    /* renamed from: f */
    public Disposable mo3501f(@NonNull Runnable runnable, long j, long j2, @NonNull TimeUnit timeUnit) {
        Worker b = mo3232b();
        PeriodicDirectTask periodicDirectTask = new PeriodicDirectTask(RxJavaPlugins.m3352v(runnable), b);
        Disposable d = b.mo3531d(periodicDirectTask, j, j2, timeUnit);
        return d == EmptyDisposable.INSTANCE ? d : periodicDirectTask;
    }
}
