package p660rx.internal.util;

import p660rx.Scheduler;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.Subscription;
import p660rx.functions.Action0;
import p660rx.functions.Func1;
import p660rx.internal.schedulers.EventLoopsScheduler;
/* renamed from: rx.internal.util.ScalarSynchronousSingle */
/* loaded from: classes3-dex2jar.jar:rx/internal/util/ScalarSynchronousSingle.class */
public final class ScalarSynchronousSingle<T> extends Single<T> {
    public final T value;

    /* renamed from: rx.internal.util.ScalarSynchronousSingle$DirectScheduledEmission */
    /* loaded from: classes3-dex2jar.jar:rx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission.class */
    public static final class DirectScheduledEmission<T> implements Single.OnSubscribe<T> {

        /* renamed from: es */
        public final EventLoopsScheduler f33476es;
        public final T value;

        public DirectScheduledEmission(EventLoopsScheduler eventLoopsScheduler, T t) {
            this.f33476es = eventLoopsScheduler;
            this.value = t;
        }

        @Override // p660rx.functions.Action1
        public /* bridge */ /* synthetic */ void call(Object obj) {
            call((SingleSubscriber) ((SingleSubscriber) obj));
        }

        public void call(SingleSubscriber<? super T> singleSubscriber) {
            singleSubscriber.add(this.f33476es.scheduleDirect(new ScalarSynchronousSingleAction(singleSubscriber, this.value)));
        }
    }

    /* renamed from: rx.internal.util.ScalarSynchronousSingle$NormalScheduledEmission */
    /* loaded from: classes3-dex2jar.jar:rx/internal/util/ScalarSynchronousSingle$NormalScheduledEmission.class */
    public static final class NormalScheduledEmission<T> implements Single.OnSubscribe<T> {
        public final Scheduler scheduler;
        public final T value;

        public NormalScheduledEmission(Scheduler scheduler, T t) {
            this.scheduler = scheduler;
            this.value = t;
        }

        @Override // p660rx.functions.Action1
        public /* bridge */ /* synthetic */ void call(Object obj) {
            call((SingleSubscriber) ((SingleSubscriber) obj));
        }

        public void call(SingleSubscriber<? super T> singleSubscriber) {
            Scheduler.Worker createWorker = this.scheduler.createWorker();
            singleSubscriber.add(createWorker);
            createWorker.schedule(new ScalarSynchronousSingleAction(singleSubscriber, this.value));
        }
    }

    /* renamed from: rx.internal.util.ScalarSynchronousSingle$ScalarSynchronousSingleAction */
    /* loaded from: classes3-dex2jar.jar:rx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction.class */
    public static final class ScalarSynchronousSingleAction<T> implements Action0 {
        public final SingleSubscriber<? super T> subscriber;
        public final T value;

        public ScalarSynchronousSingleAction(SingleSubscriber<? super T> singleSubscriber, T t) {
            this.subscriber = singleSubscriber;
            this.value = t;
        }

        @Override // p660rx.functions.Action0
        public void call() {
            try {
                this.subscriber.onSuccess((T) this.value);
            } catch (Throwable th) {
                this.subscriber.onError(th);
            }
        }
    }

    public ScalarSynchronousSingle(final T t) {
        super(new Single.OnSubscribe<T>() { // from class: rx.internal.util.ScalarSynchronousSingle.1
            @Override // p660rx.functions.Action1
            public /* bridge */ /* synthetic */ void call(Object obj) {
                call((SingleSubscriber) ((SingleSubscriber) obj));
            }

            public void call(SingleSubscriber<? super T> singleSubscriber) {
                singleSubscriber.onSuccess((Object) t);
            }
        });
        this.value = t;
    }

    public static <T> ScalarSynchronousSingle<T> create(T t) {
        return new ScalarSynchronousSingle<>(t);
    }

    public <R> Single<R> scalarFlatMap(final Func1<? super T, ? extends Single<? extends R>> func1) {
        return Single.create(new Single.OnSubscribe<R>() { // from class: rx.internal.util.ScalarSynchronousSingle.2
            /* JADX WARN: Multi-variable type inference failed */
            public void call(final SingleSubscriber<? super R> singleSubscriber) {
                Single single = (Single) func1.call(ScalarSynchronousSingle.this.value);
                if (single instanceof ScalarSynchronousSingle) {
                    singleSubscriber.onSuccess(((ScalarSynchronousSingle) single).value);
                    return;
                }
                Subscription subscription = new SingleSubscriber<R>(this) { // from class: rx.internal.util.ScalarSynchronousSingle.2.1
                    @Override // p660rx.SingleSubscriber
                    public void onError(Throwable th) {
                        singleSubscriber.onError(th);
                    }

                    @Override // p660rx.SingleSubscriber
                    public void onSuccess(R r) {
                        singleSubscriber.onSuccess(r);
                    }
                };
                singleSubscriber.add(subscription);
                single.subscribe((SingleSubscriber) subscription);
            }
        });
    }

    public Single<T> scalarScheduleOn(Scheduler scheduler) {
        return scheduler instanceof EventLoopsScheduler ? Single.create(new DirectScheduledEmission((EventLoopsScheduler) scheduler, this.value)) : Single.create(new NormalScheduledEmission(scheduler, this.value));
    }
}
