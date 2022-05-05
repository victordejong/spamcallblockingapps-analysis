package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSkipLastTimed.class */
public final class FlowableSkipLastTimed<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final long f16558h;

    /* renamed from: i */
    final TimeUnit f16559i;

    /* renamed from: j */
    final Scheduler f16560j;

    /* renamed from: k */
    final int f16561k;

    /* renamed from: l */
    final boolean f16562l;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber.class */
    static final class SkipLastTimedSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -5677354903406201275L;

        /* renamed from: f */
        final Subscriber<? super T> f16563f;

        /* renamed from: g */
        final long f16564g;

        /* renamed from: h */
        final TimeUnit f16565h;

        /* renamed from: i */
        final Scheduler f16566i;

        /* renamed from: j */
        final SpscLinkedArrayQueue<Object> f16567j;

        /* renamed from: k */
        final boolean f16568k;

        /* renamed from: l */
        Subscription f16569l;

        /* renamed from: m */
        final AtomicLong f16570m = new AtomicLong();

        /* renamed from: n */
        volatile boolean f16571n;

        /* renamed from: o */
        volatile boolean f16572o;

        /* renamed from: p */
        Throwable f16573p;

        SkipLastTimedSubscriber(Subscriber<? super T> subscriber, long j, TimeUnit timeUnit, Scheduler scheduler, int i, boolean z) {
            this.f16563f = subscriber;
            this.f16564g = j;
            this.f16565h = timeUnit;
            this.f16566i = scheduler;
            this.f16567j = new SpscLinkedArrayQueue<>(i);
            this.f16568k = z;
        }

        /* renamed from: a */
        boolean m4065a(boolean z, boolean z2, Subscriber<? super T> subscriber, boolean z3) {
            if (this.f16571n) {
                this.f16567j.clear();
                return true;
            } else if (!z) {
                return false;
            } else {
                if (!z3) {
                    Throwable th = this.f16573p;
                    if (th != null) {
                        this.f16567j.clear();
                        subscriber.onError(th);
                        return true;
                    } else if (!z2) {
                        return false;
                    } else {
                        subscriber.onComplete();
                        return true;
                    }
                } else if (!z2) {
                    return false;
                } else {
                    Throwable th2 = this.f16573p;
                    if (th2 != null) {
                        subscriber.onError(th2);
                        return true;
                    }
                    subscriber.onComplete();
                    return true;
                }
            }
        }

        /* renamed from: b */
        void m4064b() {
            int addAndGet;
            if (getAndIncrement() == 0) {
                Subscriber<? super T> subscriber = this.f16563f;
                SpscLinkedArrayQueue<Object> spscLinkedArrayQueue = this.f16567j;
                boolean z = this.f16568k;
                TimeUnit timeUnit = this.f16565h;
                Scheduler scheduler = this.f16566i;
                long j = this.f16564g;
                int i = 1;
                do {
                    long j2 = this.f16570m.get();
                    long j3 = 0;
                    while (j3 != j2) {
                        boolean z2 = this.f16572o;
                        Long l = (Long) spscLinkedArrayQueue.peek();
                        boolean z3 = l == null;
                        long c = scheduler.mo3231c(timeUnit);
                        if (!z3 && l.longValue() > c - j) {
                            z3 = true;
                        }
                        if (!m4065a(z2, z3, subscriber, z)) {
                            if (z3) {
                                break;
                            }
                            spscLinkedArrayQueue.poll();
                            subscriber.onNext(spscLinkedArrayQueue.poll());
                            j3++;
                        } else {
                            return;
                        }
                    }
                    if (j3 != 0) {
                        BackpressureHelper.m3450e(this.f16570m, j3);
                    }
                    addAndGet = addAndGet(-i);
                    i = addAndGet;
                } while (addAndGet != 0);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!this.f16571n) {
                this.f16571n = true;
                this.f16569l.cancel();
                if (getAndIncrement() == 0) {
                    this.f16567j.clear();
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16572o = true;
            m4064b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16573p = th;
            this.f16572o = true;
            m4064b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f16567j.m3545o(Long.valueOf(this.f16566i.mo3231c(this.f16565h)), t);
            m4064b();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16569l, subscription)) {
                this.f16569l = subscription;
                this.f16563f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f16570m, j);
                m4064b();
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new SkipLastTimedSubscriber(subscriber, this.f16558h, this.f16559i, this.f16560j, this.f16561k, this.f16562l));
    }
}
