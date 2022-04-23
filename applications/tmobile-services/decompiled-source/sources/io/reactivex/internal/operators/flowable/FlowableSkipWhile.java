package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSkipWhile.class */
public final class FlowableSkipWhile<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final Predicate<? super T> f16582h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber.class */
    static final class SkipWhileSubscriber<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: f */
        final Subscriber<? super T> f16583f;

        /* renamed from: g */
        final Predicate<? super T> f16584g;

        /* renamed from: h */
        Subscription f16585h;

        /* renamed from: i */
        boolean f16586i;

        SkipWhileSubscriber(Subscriber<? super T> subscriber, Predicate<? super T> predicate) {
            this.f16583f = subscriber;
            this.f16584g = predicate;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f16585h.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16583f.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16583f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f16586i) {
                this.f16583f.onNext(t);
                return;
            }
            try {
                if (this.f16584g.mo3191a(t)) {
                    this.f16585h.request(1L);
                    return;
                }
                this.f16586i = true;
                this.f16583f.onNext(t);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f16585h.cancel();
                this.f16583f.onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16585h, subscription)) {
                this.f16585h = subscription;
                this.f16583f.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f16585h.request(j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new SkipWhileSubscriber(subscriber, this.f16582h));
    }
}
