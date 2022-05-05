package io.reactivex.internal.operators.observable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFromPublisher.class */
public final class ObservableFromPublisher<T> extends Observable<T> {

    /* renamed from: f */
    final Publisher<? extends T> f17981f;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFromPublisher$PublisherSubscriber.class */
    static final class PublisherSubscriber<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: f */
        final Observer<? super T> f17982f;

        /* renamed from: g */
        Subscription f17983g;

        PublisherSubscriber(Observer<? super T> observer) {
            this.f17982f = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17983g.cancel();
            this.f17983g = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17983g == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f17982f.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f17982f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f17982f.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f17983g, subscription)) {
                this.f17983g = subscription;
                this.f17982f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public ObservableFromPublisher(Publisher<? extends T> publisher) {
        this.f17981f = publisher;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        this.f17981f.mo5c(new PublisherSubscriber(observer));
    }
}
