package io.reactivex.schedulers;

import io.reactivex.Scheduler;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.reactivex.disposables.Disposables;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.Queue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:io/reactivex/schedulers/TestScheduler.class */
public final class TestScheduler extends Scheduler {

    /* renamed from: g */
    final Queue<TimedRunnable> f19676g = new PriorityBlockingQueue(11);

    /* renamed from: h */
    long f19677h;

    /* renamed from: i */
    volatile long f19678i;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/schedulers/TestScheduler$TestWorker.class */
    final class TestWorker extends Scheduler.Worker {

        /* renamed from: f */
        volatile boolean f19679f;

        /* loaded from: classes2-dex2jar.jar:io/reactivex/schedulers/TestScheduler$TestWorker$QueueRemove.class */
        final class QueueRemove implements Runnable {

            /* renamed from: f */
            final TimedRunnable f19681f;

            QueueRemove(TimedRunnable timedRunnable) {
                this.f19681f = timedRunnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                TestScheduler.this.f19676g.remove(this.f19681f);
            }
        }

        TestWorker() {
        }

        @Override // io.reactivex.Scheduler.Worker
        /* renamed from: a */
        public long mo3230a(@NonNull TimeUnit timeUnit) {
            return TestScheduler.this.mo3231c(timeUnit);
        }

        @Override // io.reactivex.Scheduler.Worker
        @NonNull
        /* renamed from: b */
        public Disposable mo3229b(@NonNull Runnable runnable) {
            if (this.f19679f) {
                return EmptyDisposable.INSTANCE;
            }
            TestScheduler testScheduler = TestScheduler.this;
            long j = testScheduler.f19677h;
            testScheduler.f19677h = 1 + j;
            TimedRunnable timedRunnable = new TimedRunnable(this, 0L, runnable, j);
            TestScheduler.this.f19676g.add(timedRunnable);
            return Disposables.m4439c(new QueueRemove(timedRunnable));
        }

        @Override // io.reactivex.Scheduler.Worker
        @NonNull
        /* renamed from: c */
        public Disposable mo3228c(@NonNull Runnable runnable, long j, @NonNull TimeUnit timeUnit) {
            if (this.f19679f) {
                return EmptyDisposable.INSTANCE;
            }
            long j2 = TestScheduler.this.f19678i;
            long nanos = timeUnit.toNanos(j);
            TestScheduler testScheduler = TestScheduler.this;
            long j3 = testScheduler.f19677h;
            testScheduler.f19677h = 1 + j3;
            TimedRunnable timedRunnable = new TimedRunnable(this, j2 + nanos, runnable, j3);
            TestScheduler.this.f19676g.add(timedRunnable);
            return Disposables.m4439c(new QueueRemove(timedRunnable));
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f19679f = true;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f19679f;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/schedulers/TestScheduler$TimedRunnable.class */
    static final class TimedRunnable implements Comparable<TimedRunnable> {

        /* renamed from: f */
        final long f19683f;

        /* renamed from: g */
        final Runnable f19684g;

        /* renamed from: h */
        final long f19685h;

        TimedRunnable(TestWorker testWorker, long j, Runnable runnable, long j2) {
            this.f19683f = j;
            this.f19684g = runnable;
            this.f19685h = j2;
        }

        /* renamed from: a */
        public int compareTo(TimedRunnable timedRunnable) {
            long j = this.f19683f;
            long j2 = timedRunnable.f19683f;
            return j == j2 ? ObjectHelper.m4366b(this.f19685h, timedRunnable.f19685h) : ObjectHelper.m4366b(j, j2);
        }

        public String toString() {
            return String.format("TimedRunnable(time = %d, run = %s)", Long.valueOf(this.f19683f), this.f19684g.toString());
        }
    }

    @Override // io.reactivex.Scheduler
    @NonNull
    /* renamed from: b */
    public Scheduler.Worker mo3232b() {
        return new TestWorker();
    }

    @Override // io.reactivex.Scheduler
    /* renamed from: c */
    public long mo3231c(@NonNull TimeUnit timeUnit) {
        return timeUnit.convert(this.f19678i, TimeUnit.NANOSECONDS);
    }
}
