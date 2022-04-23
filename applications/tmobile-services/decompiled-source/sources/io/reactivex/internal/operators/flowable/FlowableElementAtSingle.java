package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.FuseToFlowable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.NoSuchElementException;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableElementAtSingle.class */
public final class FlowableElementAtSingle<T> extends Single<T> implements FuseToFlowable<T> {

    /* renamed from: f */
    final Flowable<T> f15846f;

    /* renamed from: g */
    final long f15847g;

    /* renamed from: h */
    final T f15848h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableElementAtSingle$ElementAtSubscriber.class */
    static final class ElementAtSubscriber<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super T> f15849f;

        /* renamed from: g */
        final long f15850g;

        /* renamed from: h */
        final T f15851h;

        /* renamed from: i */
        Subscription f15852i;

        /* renamed from: j */
        long f15853j;

        /* renamed from: k */
        boolean f15854k;

        ElementAtSubscriber(SingleObserver<? super T> singleObserver, long j, T t) {
            this.f15849f = singleObserver;
            this.f15850g = j;
            this.f15851h = t;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f15852i.cancel();
            this.f15852i = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15852i == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f15852i = SubscriptionHelper.CANCELLED;
            if (!this.f15854k) {
                this.f15854k = true;
                T t = this.f15851h;
                if (t != null) {
                    this.f15849f.onSuccess(t);
                } else {
                    this.f15849f.onError(new NoSuchElementException());
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f15854k) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f15854k = true;
            this.f15852i = SubscriptionHelper.CANCELLED;
            this.f15849f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f15854k) {
                long j = this.f15853j;
                if (j == this.f15850g) {
                    this.f15854k = true;
                    this.f15852i.cancel();
                    this.f15852i = SubscriptionHelper.CANCELLED;
                    this.f15849f.onSuccess(t);
                    return;
                }
                this.f15853j = j + 1;
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15852i, subscription)) {
                this.f15852i = subscription;
                this.f15849f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f15846f.m4493v(new ElementAtSubscriber(singleObserver, this.f15847g, this.f15848h));
    }
}
