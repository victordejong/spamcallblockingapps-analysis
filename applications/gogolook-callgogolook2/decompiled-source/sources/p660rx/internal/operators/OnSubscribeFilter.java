package p660rx.internal.operators;

import p660rx.Observable;
import p660rx.Producer;
import p660rx.Subscriber;
import p660rx.exceptions.Exceptions;
import p660rx.exceptions.OnErrorThrowable;
import p660rx.functions.Func1;
import p660rx.plugins.RxJavaHooks;
/* renamed from: rx.internal.operators.OnSubscribeFilter */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/OnSubscribeFilter.class */
public final class OnSubscribeFilter<T> implements Observable.OnSubscribe<T> {
    public final Func1<? super T, Boolean> predicate;
    public final Observable<T> source;

    /* renamed from: rx.internal.operators.OnSubscribeFilter$FilterSubscriber */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OnSubscribeFilter$FilterSubscriber.class */
    public static final class FilterSubscriber<T> extends Subscriber<T> {
        public final Subscriber<? super T> actual;
        public boolean done;
        public final Func1<? super T, Boolean> predicate;

        public FilterSubscriber(Subscriber<? super T> subscriber, Func1<? super T, Boolean> func1) {
            this.actual = subscriber;
            this.predicate = func1;
            request(0L);
        }

        @Override // p660rx.Observer
        public void onCompleted() {
            if (!this.done) {
                this.actual.onCompleted();
            }
        }

        @Override // p660rx.Observer
        public void onError(Throwable th) {
            if (this.done) {
                RxJavaHooks.onError(th);
                return;
            }
            this.done = true;
            this.actual.onError(th);
        }

        @Override // p660rx.Observer
        public void onNext(T t) {
            try {
                if (this.predicate.call(t).booleanValue()) {
                    this.actual.onNext(t);
                } else {
                    request(1L);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                unsubscribe();
                onError(OnErrorThrowable.addValueAsLastCause(th, t));
            }
        }

        @Override // p660rx.Subscriber
        public void setProducer(Producer producer) {
            super.setProducer(producer);
            this.actual.setProducer(producer);
        }
    }

    public OnSubscribeFilter(Observable<T> observable, Func1<? super T, Boolean> func1) {
        this.source = observable;
        this.predicate = func1;
    }

    @Override // p660rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object obj) {
        call((Subscriber) ((Subscriber) obj));
    }

    public void call(Subscriber<? super T> subscriber) {
        FilterSubscriber filterSubscriber = new FilterSubscriber(subscriber, this.predicate);
        subscriber.add(filterSubscriber);
        this.source.unsafeSubscribe(filterSubscriber);
    }
}
