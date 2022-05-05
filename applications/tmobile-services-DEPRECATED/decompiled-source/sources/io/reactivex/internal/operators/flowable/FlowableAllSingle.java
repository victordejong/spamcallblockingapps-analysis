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
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableAllSingle.class */
public final class FlowableAllSingle<T> extends Single<Boolean> implements FuseToFlowable<Boolean> {

    /* renamed from: f */
    final Flowable<T> f15445f;

    /* renamed from: g */
    final Predicate<? super T> f15446g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableAllSingle$AllSubscriber.class */
    static final class AllSubscriber<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super Boolean> f15447f;

        /* renamed from: g */
        final Predicate<? super T> f15448g;

        /* renamed from: h */
        Subscription f15449h;

        /* renamed from: i */
        boolean f15450i;

        AllSubscriber(SingleObserver<? super Boolean> singleObserver, Predicate<? super T> predicate) {
            this.f15447f = singleObserver;
            this.f15448g = predicate;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f15449h.cancel();
            this.f15449h = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15449h == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f15450i) {
                this.f15450i = true;
                this.f15449h = SubscriptionHelper.CANCELLED;
                this.f15447f.onSuccess(Boolean.TRUE);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f15450i) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f15450i = true;
            this.f15449h = SubscriptionHelper.CANCELLED;
            this.f15447f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f15450i) {
                try {
                    if (!this.f15448g.mo3191a(t)) {
                        this.f15450i = true;
                        this.f15449h.cancel();
                        this.f15449h = SubscriptionHelper.CANCELLED;
                        this.f15447f.onSuccess(Boolean.FALSE);
                    }
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f15449h.cancel();
                    this.f15449h = SubscriptionHelper.CANCELLED;
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15449h, subscription)) {
                this.f15449h = subscription;
                this.f15447f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super Boolean> singleObserver) {
        this.f15445f.m4493v(new AllSubscriber(singleObserver, this.f15446g));
    }
}
