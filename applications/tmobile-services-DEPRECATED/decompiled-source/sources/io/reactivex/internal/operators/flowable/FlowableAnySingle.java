package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.fuseable.FuseToFlowable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableAnySingle.class */
public final class FlowableAnySingle<T> extends Single<Boolean> implements FuseToFlowable<Boolean> {

    /* renamed from: f */
    final Flowable<T> f15465f;

    /* renamed from: g */
    final Predicate<? super T> f15466g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber.class */
    static final class AnySubscriber<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super Boolean> f15467f;

        /* renamed from: g */
        final Predicate<? super T> f15468g;

        /* renamed from: h */
        Subscription f15469h;

        /* renamed from: i */
        boolean f15470i;

        AnySubscriber(SingleObserver<? super Boolean> singleObserver, Predicate<? super T> predicate) {
            this.f15467f = singleObserver;
            this.f15468g = predicate;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f15469h.cancel();
            this.f15469h = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15469h == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f15470i) {
                this.f15470i = true;
                this.f15469h = SubscriptionHelper.CANCELLED;
                this.f15467f.onSuccess(Boolean.FALSE);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f15470i) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f15470i = true;
            this.f15469h = SubscriptionHelper.CANCELLED;
            this.f15467f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f15470i) {
                try {
                    if (this.f15468g.mo3191a(t)) {
                        this.f15470i = true;
                        this.f15469h.cancel();
                        this.f15469h = SubscriptionHelper.CANCELLED;
                        this.f15467f.onSuccess(Boolean.TRUE);
                    }
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f15469h.cancel();
                    this.f15469h = SubscriptionHelper.CANCELLED;
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15469h, subscription)) {
                this.f15469h = subscription;
                this.f15467f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super Boolean> singleObserver) {
        this.f15465f.m4493v(new AnySubscriber(singleObserver, this.f15466g));
    }
}
