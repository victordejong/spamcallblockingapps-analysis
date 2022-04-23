package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.processors.UnicastProcessor;
import io.reactivex.subscribers.DisposableSubscriber;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowBoundary.class */
public final class FlowableWindowBoundary<T, B> extends AbstractFlowableWithUpstream<T, Flowable<T>> {

    /* renamed from: h */
    final Publisher<B> f16813h;

    /* renamed from: i */
    final int f16814i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryInnerSubscriber.class */
    public static final class WindowBoundaryInnerSubscriber<T, B> extends DisposableSubscriber<B> {

        /* renamed from: g */
        final WindowBoundaryMainSubscriber<T, B> f16815g;

        /* renamed from: h */
        boolean f16816h;

        WindowBoundaryInnerSubscriber(WindowBoundaryMainSubscriber<T, B> windowBoundaryMainSubscriber) {
            this.f16815g = windowBoundaryMainSubscriber;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f16816h) {
                this.f16816h = true;
                this.f16815g.m4042b();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16816h) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f16816h = true;
            this.f16815g.m4041c(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(B b) {
            if (!this.f16816h) {
                this.f16815g.m4040d();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber.class */
    static final class WindowBoundaryMainSubscriber<T, B> extends AtomicInteger implements FlowableSubscriber<T>, Subscription, Runnable {

        /* renamed from: r */
        static final Object f16817r = new Object();
        private static final long serialVersionUID = 2233020065421370272L;

        /* renamed from: f */
        final Subscriber<? super Flowable<T>> f16818f;

        /* renamed from: g */
        final int f16819g;

        /* renamed from: h */
        final WindowBoundaryInnerSubscriber<T, B> f16820h = new WindowBoundaryInnerSubscriber<>(this);

        /* renamed from: i */
        final AtomicReference<Subscription> f16821i = new AtomicReference<>();

        /* renamed from: j */
        final AtomicInteger f16822j = new AtomicInteger(1);

        /* renamed from: k */
        final MpscLinkedQueue<Object> f16823k = new MpscLinkedQueue<>();

        /* renamed from: l */
        final AtomicThrowable f16824l = new AtomicThrowable();

        /* renamed from: m */
        final AtomicBoolean f16825m = new AtomicBoolean();

        /* renamed from: n */
        final AtomicLong f16826n = new AtomicLong();

        /* renamed from: o */
        volatile boolean f16827o;

        /* renamed from: p */
        UnicastProcessor<T> f16828p;

        /* renamed from: q */
        long f16829q;

        WindowBoundaryMainSubscriber(Subscriber<? super Flowable<T>> subscriber, int i) {
            this.f16818f = subscriber;
            this.f16819g = i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        void m4043a() {
            if (getAndIncrement() == 0) {
                Subscriber<? super Flowable<T>> subscriber = this.f16818f;
                MpscLinkedQueue<Object> mpscLinkedQueue = this.f16823k;
                AtomicThrowable atomicThrowable = this.f16824l;
                long j = this.f16829q;
                int i = 1;
                while (this.f16822j.get() != 0) {
                    UnicastProcessor<T> unicastProcessor = this.f16828p;
                    boolean z = this.f16827o;
                    if (!z || atomicThrowable.get() == null) {
                        Object poll = mpscLinkedQueue.poll();
                        boolean z2 = poll == null;
                        if (z && z2) {
                            Throwable b = atomicThrowable.m3455b();
                            if (b == null) {
                                if (unicastProcessor != 0) {
                                    this.f16828p = null;
                                    unicastProcessor.onComplete();
                                }
                                subscriber.onComplete();
                                return;
                            }
                            if (unicastProcessor != 0) {
                                this.f16828p = null;
                                unicastProcessor.onError(b);
                            }
                            subscriber.onError(b);
                            return;
                        } else if (z2) {
                            this.f16829q = j;
                            int addAndGet = addAndGet(-i);
                            i = addAndGet;
                            if (addAndGet == 0) {
                                return;
                            }
                        } else if (poll != f16817r) {
                            unicastProcessor.onNext(poll);
                        } else {
                            if (unicastProcessor != 0) {
                                this.f16828p = null;
                                unicastProcessor.onComplete();
                            }
                            if (!this.f16825m.get()) {
                                UnicastProcessor<T> G = UnicastProcessor.m3310G(this.f16819g, this);
                                this.f16828p = G;
                                this.f16822j.getAndIncrement();
                                if (j != this.f16826n.get()) {
                                    j++;
                                    subscriber.onNext(G);
                                } else {
                                    SubscriptionHelper.cancel(this.f16821i);
                                    this.f16820h.dispose();
                                    atomicThrowable.m3456a(new MissingBackpressureException("Could not deliver a window due to lack of requests"));
                                    this.f16827o = true;
                                }
                            }
                        }
                    } else {
                        mpscLinkedQueue.clear();
                        Throwable b2 = atomicThrowable.m3455b();
                        if (unicastProcessor != 0) {
                            this.f16828p = null;
                            unicastProcessor.onError(b2);
                        }
                        subscriber.onError(b2);
                        return;
                    }
                }
                mpscLinkedQueue.clear();
                this.f16828p = null;
            }
        }

        /* renamed from: b */
        void m4042b() {
            SubscriptionHelper.cancel(this.f16821i);
            this.f16827o = true;
            m4043a();
        }

        /* renamed from: c */
        void m4041c(Throwable th) {
            SubscriptionHelper.cancel(this.f16821i);
            if (this.f16824l.m3456a(th)) {
                this.f16827o = true;
                m4043a();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.f16825m.compareAndSet(false, true)) {
                this.f16820h.dispose();
                if (this.f16822j.decrementAndGet() == 0) {
                    SubscriptionHelper.cancel(this.f16821i);
                }
            }
        }

        /* renamed from: d */
        void m4040d() {
            this.f16823k.offer(f16817r);
            m4043a();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16820h.dispose();
            this.f16827o = true;
            m4043a();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16820h.dispose();
            if (this.f16824l.m3456a(th)) {
                this.f16827o = true;
                m4043a();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f16823k.offer(t);
            m4043a();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.setOnce(this.f16821i, subscription, Long.MAX_VALUE);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            BackpressureHelper.m3454a(this.f16826n, j);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f16822j.decrementAndGet() == 0) {
                SubscriptionHelper.cancel(this.f16821i);
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super Flowable<T>> subscriber) {
        WindowBoundaryMainSubscriber windowBoundaryMainSubscriber = new WindowBoundaryMainSubscriber(subscriber, this.f16814i);
        subscriber.onSubscribe(windowBoundaryMainSubscriber);
        windowBoundaryMainSubscriber.m4040d();
        this.f16813h.mo5c(windowBoundaryMainSubscriber.f16820h);
        this.f15411g.m4493v(windowBoundaryMainSubscriber);
    }
}
