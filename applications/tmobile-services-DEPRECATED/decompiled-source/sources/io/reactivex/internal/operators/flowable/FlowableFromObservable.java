package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFromObservable.class */
public final class FlowableFromObservable<T> extends Flowable<T> {

    /* renamed from: g */
    private final Observable<T> f15981g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver.class */
    static final class SubscriberObserver<T> implements Observer<T>, Subscription {

        /* renamed from: f */
        final Subscriber<? super T> f15982f;

        /* renamed from: g */
        Disposable f15983g;

        SubscriberObserver(Subscriber<? super T> subscriber) {
            this.f15982f = subscriber;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f15983g.dispose();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f15982f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f15982f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f15982f.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f15983g = disposable;
            this.f15982f.onSubscribe(this);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
        }
    }

    public FlowableFromObservable(Observable<T> observable) {
        this.f15981g = observable;
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15981g.subscribe(new SubscriberObserver(subscriber));
    }
}
