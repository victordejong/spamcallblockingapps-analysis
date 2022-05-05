package io.reactivex.internal.operators.parallel;

import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.parallel.ParallelFlowable;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelFilter.class */
public final class ParallelFilter<T> extends ParallelFlowable<T> {

    /* renamed from: a */
    final ParallelFlowable<T> f18820a;

    /* renamed from: b */
    final Predicate<? super T> f18821b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelFilter$BaseFilterSubscriber.class */
    public static abstract class BaseFilterSubscriber<T> implements ConditionalSubscriber<T>, Subscription {

        /* renamed from: f */
        final Predicate<? super T> f18822f;

        /* renamed from: g */
        Subscription f18823g;

        /* renamed from: h */
        boolean f18824h;

        BaseFilterSubscriber(Predicate<? super T> predicate) {
            this.f18822f = predicate;
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.f18823g.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(T t) {
            if (!mo3605p(t) && !this.f18824h) {
                this.f18823g.request(1L);
            }
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            this.f18823g.request(j);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelFilter$ParallelFilterConditionalSubscriber.class */
    static final class ParallelFilterConditionalSubscriber<T> extends BaseFilterSubscriber<T> {

        /* renamed from: i */
        final ConditionalSubscriber<? super T> f18825i;

        ParallelFilterConditionalSubscriber(ConditionalSubscriber<? super T> conditionalSubscriber, Predicate<? super T> predicate) {
            super(predicate);
            this.f18825i = conditionalSubscriber;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f18824h) {
                this.f18824h = true;
                this.f18825i.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f18824h) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18824h = true;
            this.f18825i.onError(th);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f18823g, subscription)) {
                this.f18823g = subscription;
                this.f18825i.onSubscribe(this);
            }
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        /* renamed from: p */
        public boolean mo3605p(T t) {
            if (this.f18824h) {
                return false;
            }
            try {
                if (this.f18822f.mo3191a(t)) {
                    return this.f18825i.mo3605p(t);
                }
                return false;
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                cancel();
                onError(th);
                return false;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelFilter$ParallelFilterSubscriber.class */
    static final class ParallelFilterSubscriber<T> extends BaseFilterSubscriber<T> {

        /* renamed from: i */
        final Subscriber<? super T> f18826i;

        ParallelFilterSubscriber(Subscriber<? super T> subscriber, Predicate<? super T> predicate) {
            super(predicate);
            this.f18826i = subscriber;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f18824h) {
                this.f18824h = true;
                this.f18826i.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f18824h) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18824h = true;
            this.f18826i.onError(th);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f18823g, subscription)) {
                this.f18823g = subscription;
                this.f18826i.onSubscribe(this);
            }
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        /* renamed from: p */
        public boolean mo3605p(T t) {
            if (this.f18824h) {
                return false;
            }
            try {
                if (!this.f18822f.mo3191a(t)) {
                    return false;
                }
                this.f18826i.onNext(t);
                return true;
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                cancel();
                onError(th);
                return false;
            }
        }
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    /* renamed from: a */
    public int mo3379a() {
        return this.f18820a.mo3379a();
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    /* renamed from: b */
    public void mo3378b(Subscriber<? super T>[] subscriberArr) {
        if (m3377c(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super T>[] subscriberArr2 = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                Subscriber<? super T> subscriber = subscriberArr[i];
                if (subscriber instanceof ConditionalSubscriber) {
                    subscriberArr2[i] = new ParallelFilterConditionalSubscriber((ConditionalSubscriber) subscriber, this.f18821b);
                } else {
                    subscriberArr2[i] = new ParallelFilterSubscriber(subscriber, this.f18821b);
                }
            }
            this.f18820a.mo3378b(subscriberArr2);
        }
    }
}
