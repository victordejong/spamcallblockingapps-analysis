package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableUsing.class */
public final class FlowableUsing<T, D> extends Flowable<T> {

    /* renamed from: g */
    final Callable<? extends D> f16769g;

    /* renamed from: h */
    final Function<? super D, ? extends Publisher<? extends T>> f16770h;

    /* renamed from: i */
    final Consumer<? super D> f16771i;

    /* renamed from: j */
    final boolean f16772j;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber.class */
    static final class UsingSubscriber<T, D> extends AtomicBoolean implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = 5904473792286235046L;

        /* renamed from: f */
        final Subscriber<? super T> f16773f;

        /* renamed from: g */
        final D f16774g;

        /* renamed from: h */
        final Consumer<? super D> f16775h;

        /* renamed from: i */
        final boolean f16776i;

        /* renamed from: j */
        Subscription f16777j;

        UsingSubscriber(Subscriber<? super T> subscriber, D d, Consumer<? super D> consumer, boolean z) {
            this.f16773f = subscriber;
            this.f16774g = d;
            this.f16775h = consumer;
            this.f16776i = z;
        }

        /* renamed from: a */
        void m4046a() {
            if (compareAndSet(false, true)) {
                try {
                    this.f16775h.accept((D) this.f16774g);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    RxJavaPlugins.m3354t(th);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            m4046a();
            this.f16777j.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f16776i) {
                if (compareAndSet(false, true)) {
                    try {
                        this.f16775h.accept((D) this.f16774g);
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        this.f16773f.onError(th);
                        return;
                    }
                }
                this.f16777j.cancel();
                this.f16773f.onComplete();
                return;
            }
            this.f16773f.onComplete();
            this.f16777j.cancel();
            m4046a();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16776i) {
                Throwable th2 = null;
                if (compareAndSet(false, true)) {
                    try {
                        this.f16775h.accept((D) this.f16774g);
                        th2 = null;
                    } catch (Throwable th3) {
                        th2 = th3;
                        Exceptions.m4428b(th2);
                    }
                }
                this.f16777j.cancel();
                if (th2 != null) {
                    this.f16773f.onError(new CompositeException(th, th2));
                } else {
                    this.f16773f.onError(th);
                }
            } else {
                this.f16773f.onError(th);
                this.f16777j.cancel();
                m4046a();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f16773f.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16777j, subscription)) {
                this.f16777j = subscription;
                this.f16773f.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f16777j.request(j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super T> subscriber) {
        try {
            Object call = this.f16769g.call();
            try {
                Object apply = this.f16770h.apply(call);
                ObjectHelper.m4363e(apply, "The sourceSupplier returned a null Publisher");
                ((Publisher) apply).mo5c(new UsingSubscriber(subscriber, call, this.f16771i, this.f16772j));
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                try {
                    this.f16771i.accept(call);
                    EmptySubscription.error(th, subscriber);
                } catch (Throwable th2) {
                    Exceptions.m4428b(th2);
                    EmptySubscription.error(new CompositeException(th, th2), subscriber);
                }
            }
        } catch (Throwable th3) {
            Exceptions.m4428b(th3);
            EmptySubscription.error(th3, subscriber);
        }
    }
}
