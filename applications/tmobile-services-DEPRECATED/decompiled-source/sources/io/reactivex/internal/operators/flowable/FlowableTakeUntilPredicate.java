package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTakeUntilPredicate.class */
public final class FlowableTakeUntilPredicate<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final Predicate<? super T> f16665h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTakeUntilPredicate$InnerSubscriber.class */
    static final class InnerSubscriber<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: f */
        final Subscriber<? super T> f16666f;

        /* renamed from: g */
        final Predicate<? super T> f16667g;

        /* renamed from: h */
        Subscription f16668h;

        /* renamed from: i */
        boolean f16669i;

        InnerSubscriber(Subscriber<? super T> subscriber, Predicate<? super T> predicate) {
            this.f16666f = subscriber;
            this.f16667g = predicate;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f16668h.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f16669i) {
                this.f16669i = true;
                this.f16666f.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (!this.f16669i) {
                this.f16669i = true;
                this.f16666f.onError(th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f16669i) {
                this.f16666f.onNext(t);
                try {
                    if (this.f16667g.mo3191a(t)) {
                        this.f16669i = true;
                        this.f16668h.cancel();
                        this.f16666f.onComplete();
                    }
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f16668h.cancel();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16668h, subscription)) {
                this.f16668h = subscription;
                this.f16666f.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f16668h.request(j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new InnerSubscriber(subscriber, this.f16665h));
    }
}
