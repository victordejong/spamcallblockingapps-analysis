package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.FuseToFlowable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCountSingle.class */
public final class FlowableCountSingle<T> extends Single<Long> implements FuseToFlowable<Long> {

    /* renamed from: f */
    final Flowable<T> f15704f;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCountSingle$CountSubscriber.class */
    static final class CountSubscriber implements FlowableSubscriber<Object>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super Long> f15705f;

        /* renamed from: g */
        Subscription f15706g;

        /* renamed from: h */
        long f15707h;

        CountSubscriber(SingleObserver<? super Long> singleObserver) {
            this.f15705f = singleObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f15706g.cancel();
            this.f15706g = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15706g == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f15706g = SubscriptionHelper.CANCELLED;
            this.f15705f.onSuccess(Long.valueOf(this.f15707h));
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f15706g = SubscriptionHelper.CANCELLED;
            this.f15705f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            this.f15707h++;
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15706g, subscription)) {
                this.f15706g = subscription;
                this.f15705f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super Long> singleObserver) {
        this.f15704f.m4493v(new CountSubscriber(singleObserver));
    }
}
