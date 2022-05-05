package io.reactivex.internal.operators.parallel;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.LongConsumer;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.parallel.ParallelFlowable;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelPeek.class */
public final class ParallelPeek<T> extends ParallelFlowable<T> {

    /* renamed from: a */
    final ParallelFlowable<T> f18901a;

    /* renamed from: b */
    final Consumer<? super T> f18902b;

    /* renamed from: c */
    final Consumer<? super T> f18903c;

    /* renamed from: d */
    final Consumer<? super Throwable> f18904d;

    /* renamed from: e */
    final Action f18905e;

    /* renamed from: f */
    final Action f18906f;

    /* renamed from: g */
    final Consumer<? super Subscription> f18907g;

    /* renamed from: h */
    final LongConsumer f18908h;

    /* renamed from: i */
    final Action f18909i;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber.class */
    static final class ParallelPeekSubscriber<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: f */
        final Subscriber<? super T> f18910f;

        /* renamed from: g */
        final ParallelPeek<T> f18911g;

        /* renamed from: h */
        Subscription f18912h;

        /* renamed from: i */
        boolean f18913i;

        ParallelPeekSubscriber(Subscriber<? super T> subscriber, ParallelPeek<T> parallelPeek) {
            this.f18910f = subscriber;
            this.f18911g = parallelPeek;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            try {
                this.f18911g.f18909i.run();
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                RxJavaPlugins.m3354t(th);
            }
            this.f18912h.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f18913i) {
                this.f18913i = true;
                try {
                    this.f18911g.f18905e.run();
                    this.f18910f.onComplete();
                    try {
                        this.f18911g.f18906f.run();
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        RxJavaPlugins.m3354t(th);
                    }
                } catch (Throwable th2) {
                    Exceptions.m4428b(th2);
                    this.f18910f.onError(th2);
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f18913i) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18913i = true;
            try {
                this.f18911g.f18904d.accept(th);
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                th = new CompositeException(th, th2);
            }
            this.f18910f.onError(th);
            try {
                this.f18911g.f18906f.run();
            } catch (Throwable th3) {
                Exceptions.m4428b(th3);
                RxJavaPlugins.m3354t(th3);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f18913i) {
                try {
                    this.f18911g.f18902b.accept(t);
                    this.f18910f.onNext(t);
                    try {
                        this.f18911g.f18903c.accept(t);
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        onError(th);
                    }
                } catch (Throwable th2) {
                    Exceptions.m4428b(th2);
                    onError(th2);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f18912h, subscription)) {
                this.f18912h = subscription;
                try {
                    this.f18911g.f18907g.accept(subscription);
                    this.f18910f.onSubscribe(this);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    subscription.cancel();
                    this.f18910f.onSubscribe(EmptySubscription.INSTANCE);
                    onError(th);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            try {
                this.f18911g.f18908h.mo4378a(j);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                RxJavaPlugins.m3354t(th);
            }
            this.f18912h.request(j);
        }
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    /* renamed from: a */
    public int mo3379a() {
        return this.f18901a.mo3379a();
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    /* renamed from: b */
    public void mo3378b(Subscriber<? super T>[] subscriberArr) {
        if (m3377c(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super T>[] subscriberArr2 = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                subscriberArr2[i] = new ParallelPeekSubscriber(subscriberArr[i], this);
            }
            this.f18901a.mo3378b(subscriberArr2);
        }
    }
}
