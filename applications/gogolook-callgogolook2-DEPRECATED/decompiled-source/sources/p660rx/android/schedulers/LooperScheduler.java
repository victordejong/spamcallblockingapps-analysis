package p660rx.android.schedulers;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.concurrent.TimeUnit;
import p660rx.Scheduler;
import p660rx.Subscription;
import p660rx.android.plugins.RxAndroidPlugins;
import p660rx.android.plugins.RxAndroidSchedulersHook;
import p660rx.exceptions.OnErrorNotImplementedException;
import p660rx.functions.Action0;
import p660rx.plugins.RxJavaPlugins;
import p660rx.subscriptions.Subscriptions;
/* renamed from: rx.android.schedulers.LooperScheduler */
/* loaded from: classes3-dex2jar.jar:rx/android/schedulers/LooperScheduler.class */
public class LooperScheduler extends Scheduler {
    public final Handler handler;

    /* renamed from: rx.android.schedulers.LooperScheduler$HandlerWorker */
    /* loaded from: classes3-dex2jar.jar:rx/android/schedulers/LooperScheduler$HandlerWorker.class */
    public static class HandlerWorker extends Scheduler.Worker {
        public final Handler handler;
        public final RxAndroidSchedulersHook hook = RxAndroidPlugins.getInstance().getSchedulersHook();
        public volatile boolean unsubscribed;

        public HandlerWorker(Handler handler) {
            this.handler = handler;
        }

        @Override // p660rx.Subscription
        public boolean isUnsubscribed() {
            return this.unsubscribed;
        }

        @Override // p660rx.Scheduler.Worker
        public Subscription schedule(Action0 action0) {
            return schedule(action0, 0L, TimeUnit.MILLISECONDS);
        }

        @Override // p660rx.Scheduler.Worker
        public Subscription schedule(Action0 action0, long j, TimeUnit timeUnit) {
            if (this.unsubscribed) {
                return Subscriptions.unsubscribed();
            }
            this.hook.onSchedule(action0);
            ScheduledAction scheduledAction = new ScheduledAction(action0, this.handler);
            Message obtain = Message.obtain(this.handler, scheduledAction);
            obtain.obj = this;
            this.handler.sendMessageDelayed(obtain, timeUnit.toMillis(j));
            if (!this.unsubscribed) {
                return scheduledAction;
            }
            this.handler.removeCallbacks(scheduledAction);
            return Subscriptions.unsubscribed();
        }

        @Override // p660rx.Subscription
        public void unsubscribe() {
            this.unsubscribed = true;
            this.handler.removeCallbacksAndMessages(this);
        }
    }

    /* renamed from: rx.android.schedulers.LooperScheduler$ScheduledAction */
    /* loaded from: classes3-dex2jar.jar:rx/android/schedulers/LooperScheduler$ScheduledAction.class */
    public static final class ScheduledAction implements Runnable, Subscription {
        public final Action0 action;
        public final Handler handler;
        public volatile boolean unsubscribed;

        public ScheduledAction(Action0 action0, Handler handler) {
            this.action = action0;
            this.handler = handler;
        }

        @Override // p660rx.Subscription
        public boolean isUnsubscribed() {
            return this.unsubscribed;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.action.call();
            } catch (Throwable th) {
                IllegalStateException illegalStateException = th instanceof OnErrorNotImplementedException ? new IllegalStateException("Exception thrown on Scheduler.Worker thread. Add `onError` handling.", th) : new IllegalStateException("Fatal Exception thrown on Scheduler.Worker thread.", th);
                RxJavaPlugins.getInstance().getErrorHandler().handleError(illegalStateException);
                Thread currentThread = Thread.currentThread();
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, illegalStateException);
            }
        }

        @Override // p660rx.Subscription
        public void unsubscribe() {
            this.unsubscribed = true;
            this.handler.removeCallbacks(this);
        }
    }

    public LooperScheduler(Looper looper) {
        this.handler = new Handler(looper);
    }

    @Override // p660rx.Scheduler
    public Scheduler.Worker createWorker() {
        return new HandlerWorker(this.handler);
    }
}
