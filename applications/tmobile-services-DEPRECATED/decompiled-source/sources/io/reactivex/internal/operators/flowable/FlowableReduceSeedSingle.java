package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReduceSeedSingle.class */
public final class FlowableReduceSeedSingle<T, R> extends Single<R> {

    /* renamed from: f */
    final Publisher<T> f16353f;

    /* renamed from: g */
    final R f16354g;

    /* renamed from: h */
    final BiFunction<R, ? super T, R> f16355h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver.class */
    static final class ReduceSeedObserver<T, R> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super R> f16356f;

        /* renamed from: g */
        final BiFunction<R, ? super T, R> f16357g;

        /* renamed from: h */
        R f16358h;

        /* renamed from: i */
        Subscription f16359i;

        /* JADX INFO: Access modifiers changed from: package-private */
        public ReduceSeedObserver(SingleObserver<? super R> singleObserver, BiFunction<R, ? super T, R> biFunction, R r) {
            this.f16356f = singleObserver;
            this.f16358h = r;
            this.f16357g = biFunction;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f16359i.cancel();
            this.f16359i = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f16359i == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            R r = this.f16358h;
            if (r != null) {
                this.f16358h = null;
                this.f16359i = SubscriptionHelper.CANCELLED;
                this.f16356f.onSuccess(r);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16358h != null) {
                this.f16358h = null;
                this.f16359i = SubscriptionHelper.CANCELLED;
                this.f16356f.onError(th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            R r = this.f16358h;
            if (r != null) {
                try {
                    R apply = this.f16357g.apply(r, t);
                    ObjectHelper.m4363e(apply, "The reducer returned a null value");
                    this.f16358h = apply;
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f16359i.cancel();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16359i, subscription)) {
                this.f16359i = subscription;
                this.f16356f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super R> singleObserver) {
        this.f16353f.mo5c(new ReduceSeedObserver(singleObserver, this.f16355h, this.f16354g));
    }
}
