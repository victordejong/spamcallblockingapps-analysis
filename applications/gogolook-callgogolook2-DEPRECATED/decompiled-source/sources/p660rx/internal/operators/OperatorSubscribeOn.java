package p660rx.internal.operators;

import p660rx.Observable;
import p660rx.Producer;
import p660rx.Scheduler;
import p660rx.Subscriber;
import p660rx.functions.Action0;
/* renamed from: rx.internal.operators.OperatorSubscribeOn */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorSubscribeOn.class */
public final class OperatorSubscribeOn<T> implements Observable.OnSubscribe<T> {
    public final boolean requestOn;
    public final Scheduler scheduler;
    public final Observable<T> source;

    /* renamed from: rx.internal.operators.OperatorSubscribeOn$SubscribeOnSubscriber */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber.class */
    public static final class SubscribeOnSubscriber<T> extends Subscriber<T> implements Action0 {
        public final Subscriber<? super T> actual;
        public final boolean requestOn;
        public Observable<T> source;

        /* renamed from: t */
        public Thread f33468t;
        public final Scheduler.Worker worker;

        public SubscribeOnSubscriber(Subscriber<? super T> subscriber, boolean z, Scheduler.Worker worker, Observable<T> observable) {
            this.actual = subscriber;
            this.requestOn = z;
            this.worker = worker;
            this.source = observable;
        }

        @Override // p660rx.functions.Action0
        public void call() {
            Observable<T> observable = this.source;
            this.source = null;
            this.f33468t = Thread.currentThread();
            observable.unsafeSubscribe(this);
        }

        @Override // p660rx.Observer
        public void onCompleted() {
            try {
                this.actual.onCompleted();
            } finally {
                this.worker.unsubscribe();
            }
        }

        @Override // p660rx.Observer
        public void onError(Throwable th) {
            try {
                this.actual.onError(th);
            } finally {
                this.worker.unsubscribe();
            }
        }

        @Override // p660rx.Observer
        public void onNext(T t) {
            this.actual.onNext(t);
        }

        @Override // p660rx.Subscriber
        public void setProducer(final Producer producer) {
            this.actual.setProducer(new Producer() { // from class: rx.internal.operators.OperatorSubscribeOn.SubscribeOnSubscriber.1
                @Override // p660rx.Producer
                public void request(final long j) {
                    if (SubscribeOnSubscriber.this.f33468t != Thread.currentThread()) {
                        SubscribeOnSubscriber subscribeOnSubscriber = SubscribeOnSubscriber.this;
                        if (subscribeOnSubscriber.requestOn) {
                            subscribeOnSubscriber.worker.schedule(new Action0() { // from class: rx.internal.operators.OperatorSubscribeOn.SubscribeOnSubscriber.1.1
                                @Override // p660rx.functions.Action0
                                public void call() {
                                    producer.request(j);
                                }
                            });
                            return;
                        }
                    }
                    producer.request(j);
                }
            });
        }
    }

    public OperatorSubscribeOn(Observable<T> observable, Scheduler scheduler, boolean z) {
        this.scheduler = scheduler;
        this.source = observable;
        this.requestOn = z;
    }

    @Override // p660rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object obj) {
        call((Subscriber) ((Subscriber) obj));
    }

    public void call(Subscriber<? super T> subscriber) {
        Scheduler.Worker createWorker = this.scheduler.createWorker();
        SubscribeOnSubscriber subscribeOnSubscriber = new SubscribeOnSubscriber(subscriber, this.requestOn, createWorker, this.source);
        subscriber.add(subscribeOnSubscriber);
        subscriber.add(createWorker);
        createWorker.schedule(subscribeOnSubscriber);
    }
}
