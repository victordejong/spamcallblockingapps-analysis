package io.reactivex.android.schedulers;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Message;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.disposables.Disposables;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:io/reactivex/android/schedulers/HandlerScheduler.class */
final class HandlerScheduler extends Scheduler {

    /* renamed from: g */
    private final Handler f15109g;

    /* renamed from: h */
    private final boolean f15110h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/android/schedulers/HandlerScheduler$HandlerWorker.class */
    private static final class HandlerWorker extends Scheduler.Worker {

        /* renamed from: f */
        private final Handler f15111f;

        /* renamed from: g */
        private final boolean f15112g;

        /* renamed from: h */
        private volatile boolean f15113h;

        HandlerWorker(Handler handler, boolean z) {
            this.f15111f = handler;
            this.f15112g = z;
        }

        @Override // io.reactivex.Scheduler.Worker
        @SuppressLint({"NewApi"})
        /* renamed from: c */
        public Disposable mo3228c(Runnable runnable, long j, TimeUnit timeUnit) {
            if (runnable == null) {
                throw new NullPointerException("run == null");
            } else if (timeUnit == null) {
                throw new NullPointerException("unit == null");
            } else if (this.f15113h) {
                return Disposables.m4441a();
            } else {
                ScheduledRunnable scheduledRunnable = new ScheduledRunnable(this.f15111f, RxJavaPlugins.m3352v(runnable));
                Message obtain = Message.obtain(this.f15111f, scheduledRunnable);
                obtain.obj = this;
                if (this.f15112g) {
                    obtain.setAsynchronous(true);
                }
                this.f15111f.sendMessageDelayed(obtain, timeUnit.toMillis(j));
                if (!this.f15113h) {
                    return scheduledRunnable;
                }
                this.f15111f.removeCallbacks(scheduledRunnable);
                return Disposables.m4441a();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f15113h = true;
            this.f15111f.removeCallbacksAndMessages(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15113h;
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable.class */
    private static final class ScheduledRunnable implements Runnable, Disposable {

        /* renamed from: f */
        private final Handler f15114f;

        /* renamed from: g */
        private final Runnable f15115g;

        /* renamed from: h */
        private volatile boolean f15116h;

        ScheduledRunnable(Handler handler, Runnable runnable) {
            this.f15114f = handler;
            this.f15115g = runnable;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f15114f.removeCallbacks(this);
            this.f15116h = true;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15116h;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f15115g.run();
            } catch (Throwable th) {
                RxJavaPlugins.m3354t(th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HandlerScheduler(Handler handler, boolean z) {
        this.f15109g = handler;
        this.f15110h = z;
    }

    @Override // io.reactivex.Scheduler
    /* renamed from: b */
    public Scheduler.Worker mo3232b() {
        return new HandlerWorker(this.f15109g, this.f15110h);
    }

    @Override // io.reactivex.Scheduler
    @SuppressLint({"NewApi"})
    /* renamed from: e */
    public Disposable mo3498e(Runnable runnable, long j, TimeUnit timeUnit) {
        if (runnable == null) {
            throw new NullPointerException("run == null");
        } else if (timeUnit != null) {
            ScheduledRunnable scheduledRunnable = new ScheduledRunnable(this.f15109g, RxJavaPlugins.m3352v(runnable));
            Message obtain = Message.obtain(this.f15109g, scheduledRunnable);
            if (this.f15110h) {
                obtain.setAsynchronous(true);
            }
            this.f15109g.sendMessageDelayed(obtain, timeUnit.toMillis(j));
            return scheduledRunnable;
        } else {
            throw new NullPointerException("unit == null");
        }
    }
}
