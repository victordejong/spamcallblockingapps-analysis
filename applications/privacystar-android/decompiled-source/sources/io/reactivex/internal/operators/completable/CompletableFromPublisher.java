package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableFromPublisher.class */
public final class CompletableFromPublisher<T> extends Completable {
    final Publisher<T> flowable;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableFromPublisher$FromPublisherSubscriber.class */
    static final class FromPublisherSubscriber<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: cs */
        final CompletableObserver f368cs;

        /* renamed from: s */
        Subscription f369s;

        FromPublisherSubscriber(CompletableObserver completableObserver) {
            this.f368cs = completableObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f369s.cancel();
            this.f369s = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f369s == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f368cs.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f368cs.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f369s, subscription)) {
                this.f369s = subscription;
                this.f368cs.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public CompletableFromPublisher(Publisher<T> publisher) {
        this.flowable = publisher;
    }

    @Override // io.reactivex.Completable
    protected void subscribeActual(CompletableObserver completableObserver) {
        this.flowable.subscribe(new FromPublisherSubscriber(completableObserver));
    }
}
