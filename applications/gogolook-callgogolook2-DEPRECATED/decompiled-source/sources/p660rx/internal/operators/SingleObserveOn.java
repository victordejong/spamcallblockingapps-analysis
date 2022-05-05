package p660rx.internal.operators;

import p660rx.Scheduler;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.functions.Action0;
/* renamed from: rx.internal.operators.SingleObserveOn */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/SingleObserveOn.class */
public final class SingleObserveOn<T> implements Single.OnSubscribe<T> {
    public final Scheduler scheduler;
    public final Single.OnSubscribe<T> source;

    /* renamed from: rx.internal.operators.SingleObserveOn$ObserveOnSingleSubscriber */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/SingleObserveOn$ObserveOnSingleSubscriber.class */
    public static final class ObserveOnSingleSubscriber<T> extends SingleSubscriber<T> implements Action0 {
        public final SingleSubscriber<? super T> actual;
        public Throwable error;
        public T value;

        /* renamed from: w */
        public final Scheduler.Worker f33470w;

        public ObserveOnSingleSubscriber(SingleSubscriber<? super T> singleSubscriber, Scheduler.Worker worker) {
            this.actual = singleSubscriber;
            this.f33470w = worker;
        }

        @Override // p660rx.functions.Action0
        public void call() {
            try {
                Throwable th = this.error;
                if (th != null) {
                    this.error = null;
                    this.actual.onError(th);
                } else {
                    T t = this.value;
                    this.value = null;
                    this.actual.onSuccess(t);
                }
            } finally {
                this.f33470w.unsubscribe();
            }
        }

        @Override // p660rx.SingleSubscriber
        public void onError(Throwable th) {
            this.error = th;
            this.f33470w.schedule(this);
        }

        @Override // p660rx.SingleSubscriber
        public void onSuccess(T t) {
            this.value = t;
            this.f33470w.schedule(this);
        }
    }

    public SingleObserveOn(Single.OnSubscribe<T> onSubscribe, Scheduler scheduler) {
        this.source = onSubscribe;
        this.scheduler = scheduler;
    }

    @Override // p660rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object obj) {
        call((SingleSubscriber) ((SingleSubscriber) obj));
    }

    public void call(SingleSubscriber<? super T> singleSubscriber) {
        Scheduler.Worker createWorker = this.scheduler.createWorker();
        ObserveOnSingleSubscriber observeOnSingleSubscriber = new ObserveOnSingleSubscriber(singleSubscriber, createWorker);
        singleSubscriber.add(createWorker);
        singleSubscriber.add(observeOnSingleSubscriber);
        this.source.call(observeOnSingleSubscriber);
    }
}
