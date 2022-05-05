package io.reactivex.internal.schedulers;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.Flowable;
import io.reactivex.Scheduler;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.reactivex.disposables.Disposables;
import io.reactivex.functions.Function;
import io.reactivex.processors.FlowableProcessor;
import io.reactivex.processors.UnicastProcessor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/SchedulerWhen.class */
public class SchedulerWhen extends Scheduler implements Disposable {

    /* renamed from: j */
    static final Disposable f19306j = new SubscribedDisposable();

    /* renamed from: k */
    static final Disposable f19307k = Disposables.m4441a();

    /* renamed from: g */
    private final Scheduler f19308g;

    /* renamed from: h */
    private final FlowableProcessor<Flowable<Completable>> f19309h;

    /* renamed from: i */
    private Disposable f19310i;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/SchedulerWhen$CreateWorkerFunction.class */
    static final class CreateWorkerFunction implements Function<ScheduledAction, Completable> {

        /* renamed from: f */
        final Scheduler.Worker f19311f;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/SchedulerWhen$CreateWorkerFunction$WorkerCompletable.class */
        public final class WorkerCompletable extends Completable {

            /* renamed from: f */
            final ScheduledAction f19312f;

            WorkerCompletable(ScheduledAction scheduledAction) {
                this.f19312f = scheduledAction;
            }

            @Override // io.reactivex.Completable
            /* renamed from: d */
            protected void mo3214d(CompletableObserver completableObserver) {
                completableObserver.onSubscribe(this.f19312f);
                this.f19312f.m3503a(CreateWorkerFunction.this.f19311f, completableObserver);
            }
        }

        CreateWorkerFunction(Scheduler.Worker worker) {
            this.f19311f = worker;
        }

        /* renamed from: a */
        public Completable apply(ScheduledAction scheduledAction) {
            return new WorkerCompletable(scheduledAction);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/SchedulerWhen$DelayedAction.class */
    static class DelayedAction extends ScheduledAction {

        /* renamed from: f */
        private final Runnable f19314f;

        /* renamed from: g */
        private final long f19315g;

        /* renamed from: h */
        private final TimeUnit f19316h;

        DelayedAction(Runnable runnable, long j, TimeUnit timeUnit) {
            this.f19314f = runnable;
            this.f19315g = j;
            this.f19316h = timeUnit;
        }

        @Override // io.reactivex.internal.schedulers.SchedulerWhen.ScheduledAction
        /* renamed from: b */
        protected Disposable mo3502b(Scheduler.Worker worker, CompletableObserver completableObserver) {
            return worker.mo3228c(new OnCompletedAction(this.f19314f, completableObserver), this.f19315g, this.f19316h);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/SchedulerWhen$ImmediateAction.class */
    static class ImmediateAction extends ScheduledAction {

        /* renamed from: f */
        private final Runnable f19317f;

        ImmediateAction(Runnable runnable) {
            this.f19317f = runnable;
        }

        @Override // io.reactivex.internal.schedulers.SchedulerWhen.ScheduledAction
        /* renamed from: b */
        protected Disposable mo3502b(Scheduler.Worker worker, CompletableObserver completableObserver) {
            return worker.mo3229b(new OnCompletedAction(this.f19317f, completableObserver));
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/SchedulerWhen$OnCompletedAction.class */
    static class OnCompletedAction implements Runnable {

        /* renamed from: f */
        final CompletableObserver f19318f;

        /* renamed from: g */
        final Runnable f19319g;

        OnCompletedAction(Runnable runnable, CompletableObserver completableObserver) {
            this.f19319g = runnable;
            this.f19318f = completableObserver;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f19319g.run();
            } finally {
                this.f19318f.onComplete();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/SchedulerWhen$QueueWorker.class */
    static final class QueueWorker extends Scheduler.Worker {

        /* renamed from: f */
        private final AtomicBoolean f19320f = new AtomicBoolean();

        /* renamed from: g */
        private final FlowableProcessor<ScheduledAction> f19321g;

        /* renamed from: h */
        private final Scheduler.Worker f19322h;

        QueueWorker(FlowableProcessor<ScheduledAction> flowableProcessor, Scheduler.Worker worker) {
            this.f19321g = flowableProcessor;
            this.f19322h = worker;
        }

        @Override // io.reactivex.Scheduler.Worker
        @NonNull
        /* renamed from: b */
        public Disposable mo3229b(@NonNull Runnable runnable) {
            ImmediateAction immediateAction = new ImmediateAction(runnable);
            this.f19321g.onNext(immediateAction);
            return immediateAction;
        }

        @Override // io.reactivex.Scheduler.Worker
        @NonNull
        /* renamed from: c */
        public Disposable mo3228c(@NonNull Runnable runnable, long j, @NonNull TimeUnit timeUnit) {
            DelayedAction delayedAction = new DelayedAction(runnable, j, timeUnit);
            this.f19321g.onNext(delayedAction);
            return delayedAction;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.f19320f.compareAndSet(false, true)) {
                this.f19321g.onComplete();
                this.f19322h.dispose();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f19320f.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction.class */
    public static abstract class ScheduledAction extends AtomicReference<Disposable> implements Disposable {
        ScheduledAction() {
            super(SchedulerWhen.f19306j);
        }

        /* renamed from: a */
        void m3503a(Scheduler.Worker worker, CompletableObserver completableObserver) {
            Disposable disposable = get();
            if (disposable != SchedulerWhen.f19307k && disposable == SchedulerWhen.f19306j) {
                Disposable b = mo3502b(worker, completableObserver);
                if (!compareAndSet(SchedulerWhen.f19306j, b)) {
                    b.dispose();
                }
            }
        }

        /* renamed from: b */
        protected abstract Disposable mo3502b(Scheduler.Worker worker, CompletableObserver completableObserver);

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            Disposable disposable;
            Disposable disposable2 = SchedulerWhen.f19307k;
            do {
                disposable = get();
                if (disposable == SchedulerWhen.f19307k) {
                    return;
                }
            } while (!compareAndSet(disposable, disposable2));
            if (disposable != SchedulerWhen.f19306j) {
                disposable.dispose();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get().isDisposed();
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/SchedulerWhen$SubscribedDisposable.class */
    static final class SubscribedDisposable implements Disposable {
        SubscribedDisposable() {
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return false;
        }
    }

    @Override // io.reactivex.Scheduler
    @NonNull
    /* renamed from: b */
    public Scheduler.Worker mo3232b() {
        Scheduler.Worker b = this.f19308g.mo3232b();
        FlowableProcessor<T> C = UnicastProcessor.m3312E().m3338C();
        Flowable<Completable> i = C.m4505i(new CreateWorkerFunction(b));
        QueueWorker queueWorker = new QueueWorker(C, b);
        this.f19309h.onNext(i);
        return queueWorker;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        this.f19310i.dispose();
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f19310i.isDisposed();
    }
}
