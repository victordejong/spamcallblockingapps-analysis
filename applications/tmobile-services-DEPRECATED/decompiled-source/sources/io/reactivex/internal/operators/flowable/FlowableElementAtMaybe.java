package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.FuseToFlowable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableElementAtMaybe.class */
public final class FlowableElementAtMaybe<T> extends Maybe<T> implements FuseToFlowable<T> {

    /* renamed from: f */
    final Flowable<T> f15839f;

    /* renamed from: g */
    final long f15840g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableElementAtMaybe$ElementAtSubscriber.class */
    static final class ElementAtSubscriber<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: f */
        final MaybeObserver<? super T> f15841f;

        /* renamed from: g */
        final long f15842g;

        /* renamed from: h */
        Subscription f15843h;

        /* renamed from: i */
        long f15844i;

        /* renamed from: j */
        boolean f15845j;

        ElementAtSubscriber(MaybeObserver<? super T> maybeObserver, long j) {
            this.f15841f = maybeObserver;
            this.f15842g = j;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f15843h.cancel();
            this.f15843h = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15843h == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f15843h = SubscriptionHelper.CANCELLED;
            if (!this.f15845j) {
                this.f15845j = true;
                this.f15841f.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f15845j) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f15845j = true;
            this.f15843h = SubscriptionHelper.CANCELLED;
            this.f15841f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f15845j) {
                long j = this.f15844i;
                if (j == this.f15842g) {
                    this.f15845j = true;
                    this.f15843h.cancel();
                    this.f15843h = SubscriptionHelper.CANCELLED;
                    this.f15841f.onSuccess(t);
                    return;
                }
                this.f15844i = j + 1;
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15843h, subscription)) {
                this.f15843h = subscription;
                this.f15841f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f15839f.m4493v(new ElementAtSubscriber(maybeObserver, this.f15840g));
    }
}
