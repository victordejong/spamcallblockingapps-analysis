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
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSingleMaybe.class */
public final class FlowableSingleMaybe<T> extends Maybe<T> implements FuseToFlowable<T> {

    /* renamed from: f */
    final Flowable<T> f16538f;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSingleMaybe$SingleElementSubscriber.class */
    static final class SingleElementSubscriber<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: f */
        final MaybeObserver<? super T> f16539f;

        /* renamed from: g */
        Subscription f16540g;

        /* renamed from: h */
        boolean f16541h;

        /* renamed from: i */
        T f16542i;

        SingleElementSubscriber(MaybeObserver<? super T> maybeObserver) {
            this.f16539f = maybeObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f16540g.cancel();
            this.f16540g = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f16540g == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f16541h) {
                this.f16541h = true;
                this.f16540g = SubscriptionHelper.CANCELLED;
                T t = this.f16542i;
                this.f16542i = null;
                if (t == null) {
                    this.f16539f.onComplete();
                } else {
                    this.f16539f.onSuccess(t);
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16541h) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f16541h = true;
            this.f16540g = SubscriptionHelper.CANCELLED;
            this.f16539f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f16541h) {
                if (this.f16542i != null) {
                    this.f16541h = true;
                    this.f16540g.cancel();
                    this.f16540g = SubscriptionHelper.CANCELLED;
                    this.f16539f.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                    return;
                }
                this.f16542i = t;
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16540g, subscription)) {
                this.f16540g = subscription;
                this.f16539f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f16538f.m4493v(new SingleElementSubscriber(maybeObserver));
    }
}
