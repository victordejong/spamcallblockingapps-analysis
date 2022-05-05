package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.FuseToFlowable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Collection;
import java.util.concurrent.Callable;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableToListSingle.class */
public final class FlowableToListSingle<T, U extends Collection<? super T>> extends Single<U> implements FuseToFlowable<U> {

    /* renamed from: f */
    final Flowable<T> f16759f;

    /* renamed from: g */
    final Callable<U> f16760g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber.class */
    static final class ToListSubscriber<T, U extends Collection<? super T>> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super U> f16761f;

        /* renamed from: g */
        Subscription f16762g;

        /* renamed from: h */
        U f16763h;

        ToListSubscriber(SingleObserver<? super U> singleObserver, U u) {
            this.f16761f = singleObserver;
            this.f16763h = u;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f16762g.cancel();
            this.f16762g = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f16762g == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16762g = SubscriptionHelper.CANCELLED;
            this.f16761f.onSuccess(this.f16763h);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16763h = null;
            this.f16762g = SubscriptionHelper.CANCELLED;
            this.f16761f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f16763h.add(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16762g, subscription)) {
                this.f16762g = subscription;
                this.f16761f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super U> singleObserver) {
        try {
            U call = this.f16760g.call();
            ObjectHelper.m4363e(call, "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.");
            this.f16759f.m4493v(new ToListSubscriber(singleObserver, call));
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptyDisposable.error(th, singleObserver);
        }
    }
}
