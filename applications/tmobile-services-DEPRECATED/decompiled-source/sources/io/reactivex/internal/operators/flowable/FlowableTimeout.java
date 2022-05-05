package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.operators.flowable.FlowableTimeoutTimed;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTimeout.class */
public final class FlowableTimeout<T, U, V> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final Publisher<U> f16711h;

    /* renamed from: i */
    final Function<? super T, ? extends Publisher<V>> f16712i;

    /* renamed from: j */
    final Publisher<? extends T> f16713j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer.class */
    public static final class TimeoutConsumer extends AtomicReference<Subscription> implements FlowableSubscriber<Object>, Disposable {
        private static final long serialVersionUID = 8708641127342403073L;

        /* renamed from: f */
        final TimeoutSelectorSupport f16714f;

        /* renamed from: g */
        final long f16715g;

        TimeoutConsumer(long j, TimeoutSelectorSupport timeoutSelectorSupport) {
            this.f16715g = j;
            this.f16714f = timeoutSelectorSupport;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            Object obj = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (obj != subscriptionHelper) {
                lazySet(subscriptionHelper);
                this.f16714f.mo4048a(this.f16715g);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            Object obj = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (obj != subscriptionHelper) {
                lazySet(subscriptionHelper);
                this.f16714f.mo4052b(this.f16715g, th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            Subscription subscription = (Subscription) get();
            if (subscription != SubscriptionHelper.CANCELLED) {
                subscription.cancel();
                lazySet(SubscriptionHelper.CANCELLED);
                this.f16714f.mo4048a(this.f16715g);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.setOnce(this, subscription, Long.MAX_VALUE);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber.class */
    static final class TimeoutFallbackSubscriber<T> extends SubscriptionArbiter implements FlowableSubscriber<T>, TimeoutSelectorSupport {
        private static final long serialVersionUID = 3764492702657003550L;

        /* renamed from: n */
        final Subscriber<? super T> f16716n;

        /* renamed from: o */
        final Function<? super T, ? extends Publisher<?>> f16717o;

        /* renamed from: p */
        final SequentialDisposable f16718p = new SequentialDisposable();

        /* renamed from: q */
        final AtomicReference<Subscription> f16719q = new AtomicReference<>();

        /* renamed from: r */
        final AtomicLong f16720r = new AtomicLong();

        /* renamed from: s */
        Publisher<? extends T> f16721s;

        /* renamed from: t */
        long f16722t;

        TimeoutFallbackSubscriber(Subscriber<? super T> subscriber, Function<? super T, ? extends Publisher<?>> function, Publisher<? extends T> publisher) {
            super(true);
            this.f16716n = subscriber;
            this.f16717o = function;
            this.f16721s = publisher;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableTimeoutTimed.TimeoutSupport
        /* renamed from: a */
        public void mo4048a(long j) {
            if (this.f16720r.compareAndSet(j, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f16719q);
                Publisher<? extends T> publisher = this.f16721s;
                this.f16721s = null;
                long j2 = this.f16722t;
                if (j2 != 0) {
                    m3463g(j2);
                }
                publisher.mo5c(new FlowableTimeoutTimed.FallbackSubscriber(this.f16716n, this));
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableTimeout.TimeoutSelectorSupport
        /* renamed from: b */
        public void mo4052b(long j, Throwable th) {
            if (this.f16720r.compareAndSet(j, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f16719q);
                this.f16716n.onError(th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.internal.subscriptions.SubscriptionArbiter, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            this.f16718p.dispose();
        }

        /* renamed from: i */
        void m4053i(Publisher<?> publisher) {
            if (publisher != null) {
                TimeoutConsumer timeoutConsumer = new TimeoutConsumer(0L, this);
                if (this.f16718p.m4422a(timeoutConsumer)) {
                    publisher.mo5c(timeoutConsumer);
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f16720r.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f16718p.dispose();
                this.f16716n.onComplete();
                this.f16718p.dispose();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16720r.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f16718p.dispose();
                this.f16716n.onError(th);
                this.f16718p.dispose();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            long j = this.f16720r.get();
            if (j != Long.MAX_VALUE) {
                long j2 = j + 1;
                if (this.f16720r.compareAndSet(j, j2)) {
                    Disposable disposable = this.f16718p.get();
                    if (disposable != null) {
                        disposable.dispose();
                    }
                    this.f16722t++;
                    this.f16716n.onNext(t);
                    try {
                        Object apply = this.f16717o.apply(t);
                        ObjectHelper.m4363e(apply, "The itemTimeoutIndicator returned a null Publisher.");
                        Publisher publisher = (Publisher) apply;
                        TimeoutConsumer timeoutConsumer = new TimeoutConsumer(j2, this);
                        if (this.f16718p.m4422a(timeoutConsumer)) {
                            publisher.mo5c(timeoutConsumer);
                        }
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        this.f16719q.get().cancel();
                        this.f16720r.getAndSet(Long.MAX_VALUE);
                        this.f16716n.onError(th);
                    }
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.setOnce(this.f16719q, subscription)) {
                m3462h(subscription);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSelectorSupport.class */
    public interface TimeoutSelectorSupport extends FlowableTimeoutTimed.TimeoutSupport {
        /* renamed from: b */
        void mo4052b(long j, Throwable th);
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber.class */
    static final class TimeoutSubscriber<T> extends AtomicLong implements FlowableSubscriber<T>, Subscription, TimeoutSelectorSupport {
        private static final long serialVersionUID = 3764492702657003550L;

        /* renamed from: f */
        final Subscriber<? super T> f16723f;

        /* renamed from: g */
        final Function<? super T, ? extends Publisher<?>> f16724g;

        /* renamed from: h */
        final SequentialDisposable f16725h = new SequentialDisposable();

        /* renamed from: i */
        final AtomicReference<Subscription> f16726i = new AtomicReference<>();

        /* renamed from: j */
        final AtomicLong f16727j = new AtomicLong();

        TimeoutSubscriber(Subscriber<? super T> subscriber, Function<? super T, ? extends Publisher<?>> function) {
            this.f16723f = subscriber;
            this.f16724g = function;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableTimeoutTimed.TimeoutSupport
        /* renamed from: a */
        public void mo4048a(long j) {
            if (compareAndSet(j, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f16726i);
                this.f16723f.onError(new TimeoutException());
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableTimeout.TimeoutSelectorSupport
        /* renamed from: b */
        public void mo4052b(long j, Throwable th) {
            if (compareAndSet(j, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f16726i);
                this.f16723f.onError(th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        /* renamed from: c */
        void m4051c(Publisher<?> publisher) {
            if (publisher != null) {
                TimeoutConsumer timeoutConsumer = new TimeoutConsumer(0L, this);
                if (this.f16725h.m4422a(timeoutConsumer)) {
                    publisher.mo5c(timeoutConsumer);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            SubscriptionHelper.cancel(this.f16726i);
            this.f16725h.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f16725h.dispose();
                this.f16723f.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f16725h.dispose();
                this.f16723f.onError(th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            long j = get();
            if (j != Long.MAX_VALUE) {
                long j2 = 1 + j;
                if (compareAndSet(j, j2)) {
                    Disposable disposable = this.f16725h.get();
                    if (disposable != null) {
                        disposable.dispose();
                    }
                    this.f16723f.onNext(t);
                    try {
                        Object apply = this.f16724g.apply(t);
                        ObjectHelper.m4363e(apply, "The itemTimeoutIndicator returned a null Publisher.");
                        Publisher publisher = (Publisher) apply;
                        TimeoutConsumer timeoutConsumer = new TimeoutConsumer(j2, this);
                        if (this.f16725h.m4422a(timeoutConsumer)) {
                            publisher.mo5c(timeoutConsumer);
                        }
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        this.f16726i.get().cancel();
                        getAndSet(Long.MAX_VALUE);
                        this.f16723f.onError(th);
                    }
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.deferredSetOnce(this.f16726i, this.f16727j, subscription);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            SubscriptionHelper.deferredRequest(this.f16726i, this.f16727j, j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        if (this.f16713j == null) {
            TimeoutSubscriber timeoutSubscriber = new TimeoutSubscriber(subscriber, this.f16712i);
            subscriber.onSubscribe(timeoutSubscriber);
            timeoutSubscriber.m4051c(this.f16711h);
            this.f15411g.m4493v(timeoutSubscriber);
            return;
        }
        TimeoutFallbackSubscriber timeoutFallbackSubscriber = new TimeoutFallbackSubscriber(subscriber, this.f16712i, this.f16713j);
        subscriber.onSubscribe(timeoutFallbackSubscriber);
        timeoutFallbackSubscriber.m4053i(this.f16711h);
        this.f15411g.m4493v(timeoutFallbackSubscriber);
    }
}
