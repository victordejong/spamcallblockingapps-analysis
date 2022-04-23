package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTimeoutTimed.class */
public final class FlowableTimeoutTimed<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final long f16728h;

    /* renamed from: i */
    final TimeUnit f16729i;

    /* renamed from: j */
    final Scheduler f16730j;

    /* renamed from: k */
    final Publisher<? extends T> f16731k;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTimeoutTimed$FallbackSubscriber.class */
    static final class FallbackSubscriber<T> implements FlowableSubscriber<T> {

        /* renamed from: f */
        final Subscriber<? super T> f16732f;

        /* renamed from: g */
        final SubscriptionArbiter f16733g;

        /* JADX INFO: Access modifiers changed from: package-private */
        public FallbackSubscriber(Subscriber<? super T> subscriber, SubscriptionArbiter subscriptionArbiter) {
            this.f16732f = subscriber;
            this.f16733g = subscriptionArbiter;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16732f.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16732f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f16732f.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            this.f16733g.m3462h(subscription);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutFallbackSubscriber.class */
    static final class TimeoutFallbackSubscriber<T> extends SubscriptionArbiter implements FlowableSubscriber<T>, TimeoutSupport {
        private static final long serialVersionUID = 3764492702657003550L;

        /* renamed from: n */
        final Subscriber<? super T> f16734n;

        /* renamed from: o */
        final long f16735o;

        /* renamed from: p */
        final TimeUnit f16736p;

        /* renamed from: q */
        final Scheduler.Worker f16737q;

        /* renamed from: r */
        final SequentialDisposable f16738r = new SequentialDisposable();

        /* renamed from: s */
        final AtomicReference<Subscription> f16739s = new AtomicReference<>();

        /* renamed from: t */
        final AtomicLong f16740t = new AtomicLong();

        /* renamed from: u */
        long f16741u;

        /* renamed from: v */
        Publisher<? extends T> f16742v;

        TimeoutFallbackSubscriber(Subscriber<? super T> subscriber, long j, TimeUnit timeUnit, Scheduler.Worker worker, Publisher<? extends T> publisher) {
            super(true);
            this.f16734n = subscriber;
            this.f16735o = j;
            this.f16736p = timeUnit;
            this.f16737q = worker;
            this.f16742v = publisher;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableTimeoutTimed.TimeoutSupport
        /* renamed from: a */
        public void mo4048a(long j) {
            if (this.f16740t.compareAndSet(j, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f16739s);
                long j2 = this.f16741u;
                if (j2 != 0) {
                    m3463g(j2);
                }
                Publisher<? extends T> publisher = this.f16742v;
                this.f16742v = null;
                publisher.mo5c(new FallbackSubscriber(this.f16734n, this));
                this.f16737q.dispose();
            }
        }

        @Override // io.reactivex.internal.subscriptions.SubscriptionArbiter, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            this.f16737q.dispose();
        }

        /* renamed from: i */
        void m4050i(long j) {
            this.f16738r.m4422a(this.f16737q.mo3228c(new TimeoutTask(j, this), this.f16735o, this.f16736p));
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f16740t.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f16738r.dispose();
                this.f16734n.onComplete();
                this.f16737q.dispose();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16740t.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f16738r.dispose();
                this.f16734n.onError(th);
                this.f16737q.dispose();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            long j = this.f16740t.get();
            if (j != Long.MAX_VALUE) {
                long j2 = j + 1;
                if (this.f16740t.compareAndSet(j, j2)) {
                    this.f16738r.get().dispose();
                    this.f16741u++;
                    this.f16734n.onNext(t);
                    m4050i(j2);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.setOnce(this.f16739s, subscription)) {
                m3462h(subscription);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutSubscriber.class */
    static final class TimeoutSubscriber<T> extends AtomicLong implements FlowableSubscriber<T>, Subscription, TimeoutSupport {
        private static final long serialVersionUID = 3764492702657003550L;

        /* renamed from: f */
        final Subscriber<? super T> f16743f;

        /* renamed from: g */
        final long f16744g;

        /* renamed from: h */
        final TimeUnit f16745h;

        /* renamed from: i */
        final Scheduler.Worker f16746i;

        /* renamed from: j */
        final SequentialDisposable f16747j = new SequentialDisposable();

        /* renamed from: k */
        final AtomicReference<Subscription> f16748k = new AtomicReference<>();

        /* renamed from: l */
        final AtomicLong f16749l = new AtomicLong();

        TimeoutSubscriber(Subscriber<? super T> subscriber, long j, TimeUnit timeUnit, Scheduler.Worker worker) {
            this.f16743f = subscriber;
            this.f16744g = j;
            this.f16745h = timeUnit;
            this.f16746i = worker;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableTimeoutTimed.TimeoutSupport
        /* renamed from: a */
        public void mo4048a(long j) {
            if (compareAndSet(j, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f16748k);
                this.f16743f.onError(new TimeoutException(ExceptionHelper.m3435d(this.f16744g, this.f16745h)));
                this.f16746i.dispose();
            }
        }

        /* renamed from: c */
        void m4049c(long j) {
            this.f16747j.m4422a(this.f16746i.mo3228c(new TimeoutTask(j, this), this.f16744g, this.f16745h));
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            SubscriptionHelper.cancel(this.f16748k);
            this.f16746i.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f16747j.dispose();
                this.f16743f.onComplete();
                this.f16746i.dispose();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f16747j.dispose();
                this.f16743f.onError(th);
                this.f16746i.dispose();
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
                    this.f16747j.get().dispose();
                    this.f16743f.onNext(t);
                    m4049c(j2);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.deferredSetOnce(this.f16748k, this.f16749l, subscription);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            SubscriptionHelper.deferredRequest(this.f16748k, this.f16749l, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutSupport.class */
    public interface TimeoutSupport {
        /* renamed from: a */
        void mo4048a(long j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTask.class */
    public static final class TimeoutTask implements Runnable {

        /* renamed from: f */
        final TimeoutSupport f16750f;

        /* renamed from: g */
        final long f16751g;

        TimeoutTask(long j, TimeoutSupport timeoutSupport) {
            this.f16751g = j;
            this.f16750f = timeoutSupport;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f16750f.mo4048a(this.f16751g);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        if (this.f16731k == null) {
            TimeoutSubscriber timeoutSubscriber = new TimeoutSubscriber(subscriber, this.f16728h, this.f16729i, this.f16730j.mo3232b());
            subscriber.onSubscribe(timeoutSubscriber);
            timeoutSubscriber.m4049c(0L);
            this.f15411g.m4493v(timeoutSubscriber);
            return;
        }
        TimeoutFallbackSubscriber timeoutFallbackSubscriber = new TimeoutFallbackSubscriber(subscriber, this.f16728h, this.f16729i, this.f16730j.mo3232b(), this.f16731k);
        subscriber.onSubscribe(timeoutFallbackSubscriber);
        timeoutFallbackSubscriber.m4050i(0L);
        this.f15411g.m4493v(timeoutFallbackSubscriber);
    }
}
