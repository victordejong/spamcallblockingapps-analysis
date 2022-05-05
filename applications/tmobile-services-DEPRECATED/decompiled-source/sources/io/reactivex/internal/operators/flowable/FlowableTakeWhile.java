package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTakeWhile.class */
public final class FlowableTakeWhile<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final Predicate<? super T> f16670h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTakeWhile$TakeWhileSubscriber.class */
    static final class TakeWhileSubscriber<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: f */
        final Subscriber<? super T> f16671f;

        /* renamed from: g */
        final Predicate<? super T> f16672g;

        /* renamed from: h */
        Subscription f16673h;

        /* renamed from: i */
        boolean f16674i;

        TakeWhileSubscriber(Subscriber<? super T> subscriber, Predicate<? super T> predicate) {
            this.f16671f = subscriber;
            this.f16672g = predicate;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f16673h.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f16674i) {
                this.f16674i = true;
                this.f16671f.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16674i) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f16674i = true;
            this.f16671f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f16674i) {
                try {
                    if (!this.f16672g.mo3191a(t)) {
                        this.f16674i = true;
                        this.f16673h.cancel();
                        this.f16671f.onComplete();
                        return;
                    }
                    this.f16671f.onNext(t);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f16673h.cancel();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16673h, subscription)) {
                this.f16673h = subscription;
                this.f16671f.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f16673h.request(j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new TakeWhileSubscriber(subscriber, this.f16670h));
    }
}
