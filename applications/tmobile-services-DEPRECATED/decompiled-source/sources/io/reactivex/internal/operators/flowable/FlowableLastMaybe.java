package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableLastMaybe.class */
public final class FlowableLastMaybe<T> extends Maybe<T> {

    /* renamed from: f */
    final Publisher<T> f16131f;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber.class */
    static final class LastSubscriber<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: f */
        final MaybeObserver<? super T> f16132f;

        /* renamed from: g */
        Subscription f16133g;

        /* renamed from: h */
        T f16134h;

        LastSubscriber(MaybeObserver<? super T> maybeObserver) {
            this.f16132f = maybeObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f16133g.cancel();
            this.f16133g = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f16133g == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16133g = SubscriptionHelper.CANCELLED;
            T t = this.f16134h;
            if (t != null) {
                this.f16134h = null;
                this.f16132f.onSuccess(t);
                return;
            }
            this.f16132f.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16133g = SubscriptionHelper.CANCELLED;
            this.f16134h = null;
            this.f16132f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f16134h = t;
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16133g, subscription)) {
                this.f16133g = subscription;
                this.f16132f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f16131f.mo5c(new LastSubscriber(maybeObserver));
    }
}
