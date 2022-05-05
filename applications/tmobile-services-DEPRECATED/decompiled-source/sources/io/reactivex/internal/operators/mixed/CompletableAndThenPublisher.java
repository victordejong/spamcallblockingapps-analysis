package io.reactivex.internal.operators.mixed;

import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/CompletableAndThenPublisher.class */
public final class CompletableAndThenPublisher<R> extends Flowable<R> {

    /* renamed from: g */
    final CompletableSource f17286g;

    /* renamed from: h */
    final Publisher<? extends R> f17287h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/CompletableAndThenPublisher$AndThenPublisherSubscriber.class */
    static final class AndThenPublisherSubscriber<R> extends AtomicReference<Subscription> implements FlowableSubscriber<R>, CompletableObserver, Subscription {
        private static final long serialVersionUID = -8948264376121066672L;

        /* renamed from: f */
        final Subscriber<? super R> f17288f;

        /* renamed from: g */
        Publisher<? extends R> f17289g;

        /* renamed from: h */
        Disposable f17290h;

        /* renamed from: i */
        final AtomicLong f17291i = new AtomicLong();

        AndThenPublisherSubscriber(Subscriber<? super R> subscriber, Publisher<? extends R> publisher) {
            this.f17288f = subscriber;
            this.f17289g = publisher;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f17290h.dispose();
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            Publisher<? extends R> publisher = this.f17289g;
            if (publisher == null) {
                this.f17288f.onComplete();
                return;
            }
            this.f17289g = null;
            publisher.mo5c(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f17288f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(R r) {
            this.f17288f.onNext(r);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17290h, disposable)) {
                this.f17290h = disposable;
                this.f17288f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.deferredSetOnce(this, this.f17291i, subscription);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            SubscriptionHelper.deferredRequest(this, this.f17291i, j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super R> subscriber) {
        this.f17286g.mo4514b(new AndThenPublisherSubscriber(subscriber, this.f17287h));
    }
}
