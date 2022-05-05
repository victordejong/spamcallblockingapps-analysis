package io.reactivex.internal.operators.mixed;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/MaybeFlatMapPublisher.class */
public final class MaybeFlatMapPublisher<T, R> extends Flowable<R> {

    /* renamed from: g */
    final MaybeSource<T> f17399g;

    /* renamed from: h */
    final Function<? super T, ? extends Publisher<? extends R>> f17400h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/MaybeFlatMapPublisher$FlatMapPublisherSubscriber.class */
    static final class FlatMapPublisherSubscriber<T, R> extends AtomicReference<Subscription> implements FlowableSubscriber<R>, MaybeObserver<T>, Subscription {
        private static final long serialVersionUID = -8948264376121066672L;

        /* renamed from: f */
        final Subscriber<? super R> f17401f;

        /* renamed from: g */
        final Function<? super T, ? extends Publisher<? extends R>> f17402g;

        /* renamed from: h */
        Disposable f17403h;

        /* renamed from: i */
        final AtomicLong f17404i = new AtomicLong();

        FlatMapPublisherSubscriber(Subscriber<? super R> subscriber, Function<? super T, ? extends Publisher<? extends R>> function) {
            this.f17401f = subscriber;
            this.f17402g = function;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f17403h.dispose();
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f17401f.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f17401f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(R r) {
            this.f17401f.onNext(r);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17403h, disposable)) {
                this.f17403h = disposable;
                this.f17401f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.deferredSetOnce(this, this.f17404i, subscription);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            try {
                Object apply = this.f17402g.apply(t);
                ObjectHelper.m4363e(apply, "The mapper returned a null Publisher");
                ((Publisher) apply).mo5c(this);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f17401f.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            SubscriptionHelper.deferredRequest(this, this.f17404i, j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super R> subscriber) {
        this.f17399g.mo4485b(new FlatMapPublisherSubscriber(subscriber, this.f17400h));
    }
}
