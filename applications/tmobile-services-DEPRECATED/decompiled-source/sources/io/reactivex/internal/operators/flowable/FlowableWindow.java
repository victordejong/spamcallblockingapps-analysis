package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.processors.UnicastProcessor;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindow.class */
public final class FlowableWindow<T> extends AbstractFlowableWithUpstream<T, Flowable<T>> {

    /* renamed from: h */
    final long f16778h;

    /* renamed from: i */
    final long f16779i;

    /* renamed from: j */
    final int f16780j;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber.class */
    static final class WindowExactSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription, Runnable {
        private static final long serialVersionUID = -2365647875069161133L;

        /* renamed from: f */
        final Subscriber<? super Flowable<T>> f16781f;

        /* renamed from: g */
        final long f16782g;

        /* renamed from: h */
        final AtomicBoolean f16783h = new AtomicBoolean();

        /* renamed from: i */
        final int f16784i;

        /* renamed from: j */
        long f16785j;

        /* renamed from: k */
        Subscription f16786k;

        /* renamed from: l */
        UnicastProcessor<T> f16787l;

        WindowExactSubscriber(Subscriber<? super Flowable<T>> subscriber, long j, int i) {
            super(1);
            this.f16781f = subscriber;
            this.f16782g = j;
            this.f16784i = i;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.f16783h.compareAndSet(false, true)) {
                run();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            UnicastProcessor<T> unicastProcessor = this.f16787l;
            if (unicastProcessor != null) {
                this.f16787l = null;
                unicastProcessor.onComplete();
            }
            this.f16781f.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            UnicastProcessor<T> unicastProcessor = this.f16787l;
            if (unicastProcessor != null) {
                this.f16787l = null;
                unicastProcessor.onError(th);
            }
            this.f16781f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            long j = this.f16785j;
            UnicastProcessor<T> unicastProcessor = this.f16787l;
            if (j == 0) {
                getAndIncrement();
                unicastProcessor = UnicastProcessor.m3310G(this.f16784i, this);
                this.f16787l = unicastProcessor;
                this.f16781f.onNext(unicastProcessor);
            }
            long j2 = j + 1;
            unicastProcessor.onNext(t);
            if (j2 == this.f16782g) {
                this.f16785j = 0L;
                this.f16787l = null;
                unicastProcessor.onComplete();
                return;
            }
            this.f16785j = j2;
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16786k, subscription)) {
                this.f16786k = subscription;
                this.f16781f.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                this.f16786k.request(BackpressureHelper.m3451d(this.f16782g, j));
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (decrementAndGet() == 0) {
                this.f16786k.cancel();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber.class */
    static final class WindowOverlapSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription, Runnable {
        private static final long serialVersionUID = 2428527070996323976L;

        /* renamed from: f */
        final Subscriber<? super Flowable<T>> f16788f;

        /* renamed from: g */
        final SpscLinkedArrayQueue<UnicastProcessor<T>> f16789g;

        /* renamed from: h */
        final long f16790h;

        /* renamed from: i */
        final long f16791i;

        /* renamed from: j */
        final ArrayDeque<UnicastProcessor<T>> f16792j = new ArrayDeque<>();

        /* renamed from: k */
        final AtomicBoolean f16793k = new AtomicBoolean();

        /* renamed from: l */
        final AtomicBoolean f16794l = new AtomicBoolean();

        /* renamed from: m */
        final AtomicLong f16795m = new AtomicLong();

        /* renamed from: n */
        final AtomicInteger f16796n = new AtomicInteger();

        /* renamed from: o */
        final int f16797o;

        /* renamed from: p */
        long f16798p;

        /* renamed from: q */
        long f16799q;

        /* renamed from: r */
        Subscription f16800r;

        /* renamed from: s */
        volatile boolean f16801s;

        /* renamed from: t */
        Throwable f16802t;

        /* renamed from: u */
        volatile boolean f16803u;

        WindowOverlapSubscriber(Subscriber<? super Flowable<T>> subscriber, long j, long j2, int i) {
            super(1);
            this.f16788f = subscriber;
            this.f16790h = j;
            this.f16791i = j2;
            this.f16789g = new SpscLinkedArrayQueue<>(i);
            this.f16797o = i;
        }

        /* renamed from: a */
        boolean m4045a(boolean z, boolean z2, Subscriber<?> subscriber, SpscLinkedArrayQueue<?> spscLinkedArrayQueue) {
            if (this.f16803u) {
                spscLinkedArrayQueue.clear();
                return true;
            } else if (!z) {
                return false;
            } else {
                Throwable th = this.f16802t;
                if (th != null) {
                    spscLinkedArrayQueue.clear();
                    subscriber.onError(th);
                    return true;
                } else if (!z2) {
                    return false;
                } else {
                    subscriber.onComplete();
                    return true;
                }
            }
        }

        /* renamed from: b */
        void m4044b() {
            int i;
            int addAndGet;
            if (this.f16796n.getAndIncrement() == 0) {
                Subscriber<? super Flowable<T>> subscriber = this.f16788f;
                SpscLinkedArrayQueue<UnicastProcessor<T>> spscLinkedArrayQueue = this.f16789g;
                int i2 = 1;
                do {
                    long j = this.f16795m.get();
                    long j2 = 0;
                    while (true) {
                        i = (j2 > j ? 1 : (j2 == j ? 0 : -1));
                        if (i == 0) {
                            break;
                        }
                        boolean z = this.f16801s;
                        UnicastProcessor<T> poll = spscLinkedArrayQueue.poll();
                        boolean z2 = poll == null;
                        if (!m4045a(z, z2, subscriber, spscLinkedArrayQueue)) {
                            if (z2) {
                                break;
                            }
                            subscriber.onNext(poll);
                            j2++;
                        } else {
                            return;
                        }
                    }
                    if (i != 0 || !m4045a(this.f16801s, spscLinkedArrayQueue.isEmpty(), subscriber, spscLinkedArrayQueue)) {
                        if (!(j2 == 0 || j == Long.MAX_VALUE)) {
                            this.f16795m.addAndGet(-j2);
                        }
                        addAndGet = this.f16796n.addAndGet(-i2);
                        i2 = addAndGet;
                    } else {
                        return;
                    }
                } while (addAndGet != 0);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f16803u = true;
            if (this.f16793k.compareAndSet(false, true)) {
                run();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f16801s) {
                Iterator<UnicastProcessor<T>> it = this.f16792j.iterator();
                while (it.hasNext()) {
                    it.next().onComplete();
                }
                this.f16792j.clear();
                this.f16801s = true;
                m4044b();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16801s) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            Iterator<UnicastProcessor<T>> it = this.f16792j.iterator();
            while (it.hasNext()) {
                it.next().onError(th);
            }
            this.f16792j.clear();
            this.f16802t = th;
            this.f16801s = true;
            m4044b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f16801s) {
                long j = this.f16798p;
                if (j == 0 && !this.f16803u) {
                    getAndIncrement();
                    UnicastProcessor<T> G = UnicastProcessor.m3310G(this.f16797o, this);
                    this.f16792j.offer(G);
                    this.f16789g.offer(G);
                    m4044b();
                }
                long j2 = j + 1;
                Iterator<UnicastProcessor<T>> it = this.f16792j.iterator();
                while (it.hasNext()) {
                    it.next().onNext(t);
                }
                long j3 = this.f16799q + 1;
                if (j3 == this.f16790h) {
                    this.f16799q = j3 - this.f16791i;
                    UnicastProcessor<T> poll = this.f16792j.poll();
                    if (poll != null) {
                        poll.onComplete();
                    }
                } else {
                    this.f16799q = j3;
                }
                if (j2 == this.f16791i) {
                    this.f16798p = 0L;
                } else {
                    this.f16798p = j2;
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16800r, subscription)) {
                this.f16800r = subscription;
                this.f16788f.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f16795m, j);
                if (this.f16794l.get() || !this.f16794l.compareAndSet(false, true)) {
                    this.f16800r.request(BackpressureHelper.m3451d(this.f16791i, j));
                } else {
                    this.f16800r.request(BackpressureHelper.m3452c(this.f16790h, BackpressureHelper.m3451d(this.f16791i, j - 1)));
                }
                m4044b();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (decrementAndGet() == 0) {
                this.f16800r.cancel();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber.class */
    static final class WindowSkipSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription, Runnable {
        private static final long serialVersionUID = -8792836352386833856L;

        /* renamed from: f */
        final Subscriber<? super Flowable<T>> f16804f;

        /* renamed from: g */
        final long f16805g;

        /* renamed from: h */
        final long f16806h;

        /* renamed from: i */
        final AtomicBoolean f16807i = new AtomicBoolean();

        /* renamed from: j */
        final AtomicBoolean f16808j = new AtomicBoolean();

        /* renamed from: k */
        final int f16809k;

        /* renamed from: l */
        long f16810l;

        /* renamed from: m */
        Subscription f16811m;

        /* renamed from: n */
        UnicastProcessor<T> f16812n;

        WindowSkipSubscriber(Subscriber<? super Flowable<T>> subscriber, long j, long j2, int i) {
            super(1);
            this.f16804f = subscriber;
            this.f16805g = j;
            this.f16806h = j2;
            this.f16809k = i;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.f16807i.compareAndSet(false, true)) {
                run();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            UnicastProcessor<T> unicastProcessor = this.f16812n;
            if (unicastProcessor != null) {
                this.f16812n = null;
                unicastProcessor.onComplete();
            }
            this.f16804f.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            UnicastProcessor<T> unicastProcessor = this.f16812n;
            if (unicastProcessor != null) {
                this.f16812n = null;
                unicastProcessor.onError(th);
            }
            this.f16804f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            long j = this.f16810l;
            UnicastProcessor<T> unicastProcessor = this.f16812n;
            if (j == 0) {
                getAndIncrement();
                unicastProcessor = UnicastProcessor.m3310G(this.f16809k, this);
                this.f16812n = unicastProcessor;
                this.f16804f.onNext(unicastProcessor);
            }
            long j2 = j + 1;
            if (unicastProcessor != null) {
                unicastProcessor.onNext(t);
            }
            if (j2 == this.f16805g) {
                this.f16812n = null;
                unicastProcessor.onComplete();
            }
            if (j2 == this.f16806h) {
                this.f16810l = 0L;
            } else {
                this.f16810l = j2;
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16811m, subscription)) {
                this.f16811m = subscription;
                this.f16804f.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (!SubscriptionHelper.validate(j)) {
                return;
            }
            if (this.f16808j.get() || !this.f16808j.compareAndSet(false, true)) {
                this.f16811m.request(BackpressureHelper.m3451d(this.f16806h, j));
                return;
            }
            this.f16811m.request(BackpressureHelper.m3452c(BackpressureHelper.m3451d(this.f16805g, j), BackpressureHelper.m3451d(this.f16806h - this.f16805g, j - 1)));
        }

        @Override // java.lang.Runnable
        public void run() {
            if (decrementAndGet() == 0) {
                this.f16811m.cancel();
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super Flowable<T>> subscriber) {
        long j = this.f16779i;
        long j2 = this.f16778h;
        if (j == j2) {
            this.f15411g.m4493v(new WindowExactSubscriber(subscriber, this.f16778h, this.f16780j));
        } else if (j > j2) {
            this.f15411g.m4493v(new WindowSkipSubscriber(subscriber, this.f16778h, this.f16779i, this.f16780j));
        } else {
            this.f15411g.m4493v(new WindowOverlapSubscriber(subscriber, this.f16778h, this.f16779i, this.f16780j));
        }
    }
}
