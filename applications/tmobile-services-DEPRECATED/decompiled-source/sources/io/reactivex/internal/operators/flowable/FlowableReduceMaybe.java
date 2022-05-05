package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.FuseToFlowable;
import io.reactivex.internal.fuseable.HasUpstreamPublisher;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReduceMaybe.class */
public final class FlowableReduceMaybe<T> extends Maybe<T> implements HasUpstreamPublisher<T>, FuseToFlowable<T> {

    /* renamed from: f */
    final Flowable<T> f16346f;

    /* renamed from: g */
    final BiFunction<T, T, T> f16347g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber.class */
    static final class ReduceSubscriber<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: f */
        final MaybeObserver<? super T> f16348f;

        /* renamed from: g */
        final BiFunction<T, T, T> f16349g;

        /* renamed from: h */
        T f16350h;

        /* renamed from: i */
        Subscription f16351i;

        /* renamed from: j */
        boolean f16352j;

        ReduceSubscriber(MaybeObserver<? super T> maybeObserver, BiFunction<T, T, T> biFunction) {
            this.f16348f = maybeObserver;
            this.f16349g = biFunction;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f16351i.cancel();
            this.f16352j = true;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f16352j;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f16352j) {
                this.f16352j = true;
                T t = this.f16350h;
                if (t != null) {
                    this.f16348f.onSuccess(t);
                } else {
                    this.f16348f.onComplete();
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16352j) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f16352j = true;
            this.f16348f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f16352j) {
                T t2 = this.f16350h;
                if (t2 == null) {
                    this.f16350h = t;
                    return;
                }
                try {
                    T apply = this.f16349g.apply(t2, t);
                    ObjectHelper.m4363e(apply, "The reducer returned a null value");
                    this.f16350h = apply;
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f16351i.cancel();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16351i, subscription)) {
                this.f16351i = subscription;
                this.f16348f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f16346f.m4493v(new ReduceSubscriber(maybeObserver, this.f16347g));
    }
}
