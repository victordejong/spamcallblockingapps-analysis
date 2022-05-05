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
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTakeLastTimed.class */
public final class FlowableTakeLastTimed<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final long f16638h;

    /* renamed from: i */
    final long f16639i;

    /* renamed from: j */
    final TimeUnit f16640j;

    /* renamed from: k */
    final Scheduler f16641k;

    /* renamed from: l */
    final int f16642l;

    /* renamed from: m */
    final boolean f16643m;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTakeLastTimed$TakeLastTimedSubscriber.class */
    static final class TakeLastTimedSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -5677354903406201275L;

        /* renamed from: f */
        final Subscriber<? super T> f16644f;

        /* renamed from: g */
        final long f16645g;

        /* renamed from: h */
        final long f16646h;

        /* renamed from: i */
        final TimeUnit f16647i;

        /* renamed from: j */
        final Scheduler f16648j;

        /* renamed from: k */
        final SpscLinkedArrayQueue<Object> f16649k;

        /* renamed from: l */
        final boolean f16650l;

        /* renamed from: m */
        Subscription f16651m;

        /* renamed from: n */
        final AtomicLong f16652n = new AtomicLong();

        /* renamed from: o */
        volatile boolean f16653o;

        /* renamed from: p */
        volatile boolean f16654p;

        /* renamed from: q */
        Throwable f16655q;

        TakeLastTimedSubscriber(Subscriber<? super T> subscriber, long j, long j2, TimeUnit timeUnit, Scheduler scheduler, int i, boolean z) {
            this.f16644f = subscriber;
            this.f16645g = j;
            this.f16646h = j2;
            this.f16647i = timeUnit;
            this.f16648j = scheduler;
            this.f16649k = new SpscLinkedArrayQueue<>(i);
            this.f16650l = z;
        }

        /* renamed from: a */
        boolean m4057a(boolean z, Subscriber<? super T> subscriber, boolean z2) {
            if (this.f16653o) {
                this.f16649k.clear();
                return true;
            } else if (!z2) {
                Throwable th = this.f16655q;
                if (th != null) {
                    this.f16649k.clear();
                    subscriber.onError(th);
                    return true;
                } else if (!z) {
                    return false;
                } else {
                    subscriber.onComplete();
                    return true;
                }
            } else if (!z) {
                return false;
            } else {
                Throwable th2 = this.f16655q;
                if (th2 != null) {
                    subscriber.onError(th2);
                    return true;
                }
                subscriber.onComplete();
                return true;
            }
        }

        /* renamed from: b */
        void m4056b() {
            int addAndGet;
            if (getAndIncrement() == 0) {
                Subscriber<? super T> subscriber = this.f16644f;
                SpscLinkedArrayQueue<Object> spscLinkedArrayQueue = this.f16649k;
                boolean z = this.f16650l;
                int i = 1;
                do {
                    if (this.f16654p) {
                        if (!m4057a(spscLinkedArrayQueue.isEmpty(), subscriber, z)) {
                            long j = this.f16652n.get();
                            long j2 = 0;
                            while (true) {
                                if (!m4057a(spscLinkedArrayQueue.peek() == null, subscriber, z)) {
                                    if (j != j2) {
                                        spscLinkedArrayQueue.poll();
                                        subscriber.onNext(spscLinkedArrayQueue.poll());
                                        j2++;
                                    } else if (j2 != 0) {
                                        BackpressureHelper.m3450e(this.f16652n, j2);
                                    }
                                } else {
                                    return;
                                }
                            }
                        } else {
                            return;
                        }
                    }
                    addAndGet = addAndGet(-i);
                    i = addAndGet;
                } while (addAndGet != 0);
            }
        }

        /* renamed from: c */
        void m4055c(long j, SpscLinkedArrayQueue<Object> spscLinkedArrayQueue) {
            long j2 = this.f16646h;
            long j3 = this.f16645g;
            boolean z = j3 == Long.MAX_VALUE;
            while (!spscLinkedArrayQueue.isEmpty()) {
                if (((Long) spscLinkedArrayQueue.peek()).longValue() < j - j2 || (!z && (spscLinkedArrayQueue.m3543q() >> 1) > j3)) {
                    spscLinkedArrayQueue.poll();
                    spscLinkedArrayQueue.poll();
                } else {
                    return;
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!this.f16653o) {
                this.f16653o = true;
                this.f16651m.cancel();
                if (getAndIncrement() == 0) {
                    this.f16649k.clear();
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            m4055c(this.f16648j.mo3231c(this.f16647i), this.f16649k);
            this.f16654p = true;
            m4056b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16650l) {
                m4055c(this.f16648j.mo3231c(this.f16647i), this.f16649k);
            }
            this.f16655q = th;
            this.f16654p = true;
            m4056b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            SpscLinkedArrayQueue<Object> spscLinkedArrayQueue = this.f16649k;
            long c = this.f16648j.mo3231c(this.f16647i);
            spscLinkedArrayQueue.m3545o(Long.valueOf(c), t);
            m4055c(c, spscLinkedArrayQueue);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16651m, subscription)) {
                this.f16651m = subscription;
                this.f16644f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f16652n, j);
                m4056b();
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new TakeLastTimedSubscriber(subscriber, this.f16638h, this.f16639i, this.f16640j, this.f16641k, this.f16642l, this.f16643m));
    }
}
