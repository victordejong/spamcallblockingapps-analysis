package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.NoSuchElementException;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableLastSingle.class */
public final class FlowableLastSingle<T> extends Single<T> {

    /* renamed from: f */
    final Publisher<T> f16135f;

    /* renamed from: g */
    final T f16136g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableLastSingle$LastSubscriber.class */
    static final class LastSubscriber<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super T> f16137f;

        /* renamed from: g */
        final T f16138g;

        /* renamed from: h */
        Subscription f16139h;

        /* renamed from: i */
        T f16140i;

        LastSubscriber(SingleObserver<? super T> singleObserver, T t) {
            this.f16137f = singleObserver;
            this.f16138g = t;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f16139h.cancel();
            this.f16139h = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f16139h == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16139h = SubscriptionHelper.CANCELLED;
            T t = this.f16140i;
            if (t != null) {
                this.f16140i = null;
                this.f16137f.onSuccess(t);
                return;
            }
            T t2 = this.f16138g;
            if (t2 != null) {
                this.f16137f.onSuccess(t2);
            } else {
                this.f16137f.onError(new NoSuchElementException());
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16139h = SubscriptionHelper.CANCELLED;
            this.f16140i = null;
            this.f16137f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f16140i = t;
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16139h, subscription)) {
                this.f16139h = subscription;
                this.f16137f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f16135f.mo5c(new LastSubscriber(singleObserver, this.f16136g));
    }
}
