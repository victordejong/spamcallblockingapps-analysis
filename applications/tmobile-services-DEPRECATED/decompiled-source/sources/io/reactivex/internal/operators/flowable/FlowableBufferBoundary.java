package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBufferBoundary.class */
public final class FlowableBufferBoundary<T, U extends Collection<? super T>, Open, Close> extends AbstractFlowableWithUpstream<T, U> {

    /* renamed from: h */
    final Callable<U> f15504h;

    /* renamed from: i */
    final Publisher<? extends Open> f15505i;

    /* renamed from: j */
    final Function<? super Open, ? extends Publisher<? extends Close>> f15506j;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber.class */
    static final class BufferBoundarySubscriber<T, C extends Collection<? super T>, Open, Close> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -8466418554264089604L;

        /* renamed from: f */
        final Subscriber<? super C> f15507f;

        /* renamed from: g */
        final Callable<C> f15508g;

        /* renamed from: h */
        final Publisher<? extends Open> f15509h;

        /* renamed from: i */
        final Function<? super Open, ? extends Publisher<? extends Close>> f15510i;

        /* renamed from: n */
        volatile boolean f15515n;

        /* renamed from: p */
        volatile boolean f15517p;

        /* renamed from: q */
        long f15518q;

        /* renamed from: s */
        long f15520s;

        /* renamed from: o */
        final SpscLinkedArrayQueue<C> f15516o = new SpscLinkedArrayQueue<>(Flowable.m4511a());

        /* renamed from: j */
        final CompositeDisposable f15511j = new CompositeDisposable();

        /* renamed from: k */
        final AtomicLong f15512k = new AtomicLong();

        /* renamed from: l */
        final AtomicReference<Subscription> f15513l = new AtomicReference<>();

        /* renamed from: r */
        Map<Long, C> f15519r = new LinkedHashMap();

        /* renamed from: m */
        final AtomicThrowable f15514m = new AtomicThrowable();

        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber$BufferOpenSubscriber.class */
        static final class BufferOpenSubscriber<Open> extends AtomicReference<Subscription> implements FlowableSubscriber<Open>, Disposable {
            private static final long serialVersionUID = -8498650778633225126L;

            /* renamed from: f */
            final BufferBoundarySubscriber<?, ?, Open, ?> f15521f;

            BufferOpenSubscriber(BufferBoundarySubscriber<?, ?, Open, ?> bufferBoundarySubscriber) {
                this.f15521f = bufferBoundarySubscriber;
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
                lazySet(SubscriptionHelper.CANCELLED);
                this.f15521f.m4304e(this);
            }

            @Override // org.reactivestreams.Subscriber
            public void onError(Throwable th) {
                lazySet(SubscriptionHelper.CANCELLED);
                this.f15521f.m4308a(this, th);
            }

            @Override // org.reactivestreams.Subscriber
            public void onNext(Open open) {
                this.f15521f.m4305d(open);
            }

            @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
            public void onSubscribe(Subscription subscription) {
                SubscriptionHelper.setOnce(this, subscription, Long.MAX_VALUE);
            }
        }

        BufferBoundarySubscriber(Subscriber<? super C> subscriber, Publisher<? extends Open> publisher, Function<? super Open, ? extends Publisher<? extends Close>> function, Callable<C> callable) {
            this.f15507f = subscriber;
            this.f15508g = callable;
            this.f15509h = publisher;
            this.f15510i = function;
        }

        /* renamed from: a */
        void m4308a(Disposable disposable, Throwable th) {
            SubscriptionHelper.cancel(this.f15513l);
            this.f15511j.mo4424c(disposable);
            onError(th);
        }

        /* renamed from: b */
        void m4307b(BufferCloseSubscriber<T, C> bufferCloseSubscriber, long j) {
            boolean z;
            this.f15511j.mo4424c(bufferCloseSubscriber);
            if (this.f15511j.m4442g() == 0) {
                SubscriptionHelper.cancel(this.f15513l);
                z = true;
            } else {
                z = false;
            }
            synchronized (this) {
                if (this.f15519r != null) {
                    this.f15516o.offer(this.f15519r.remove(Long.valueOf(j)));
                    if (z) {
                        this.f15515n = true;
                    }
                    m4306c();
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x00a6, code lost:
            if (r0 != 0) goto L_0x00e9;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00ad, code lost:
            if (r5.f15517p == false) goto L_0x00b6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00b0, code lost:
            r0.clear();
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00b5, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00ba, code lost:
            if (r5.f15515n == false) goto L_0x00e9;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00c4, code lost:
            if (r5.f15514m.get() == null) goto L_0x00da;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00c7, code lost:
            r0.clear();
            r0.onError(r5.f15514m.m3455b());
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00d9, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00df, code lost:
            if (r0.isEmpty() == false) goto L_0x00e9;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00e2, code lost:
            r0.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00e8, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00e9, code lost:
            r5.f15520s = r6;
            r0 = addAndGet(-r10);
            r10 = r0;
         */
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m4306c() {
            /*
                Method dump skipped, instructions count: 257
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableBufferBoundary.BufferBoundarySubscriber.m4306c():void");
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (SubscriptionHelper.cancel(this.f15513l)) {
                this.f15517p = true;
                this.f15511j.dispose();
                synchronized (this) {
                    this.f15519r = null;
                }
                if (getAndIncrement() != 0) {
                    this.f15516o.clear();
                }
            }
        }

        /* renamed from: d */
        void m4305d(Open open) {
            try {
                C call = this.f15508g.call();
                ObjectHelper.m4363e(call, "The bufferSupplier returned a null Collection");
                C c = call;
                Object apply = this.f15510i.apply(open);
                ObjectHelper.m4363e(apply, "The bufferClose returned a null Publisher");
                Publisher publisher = (Publisher) apply;
                long j = this.f15518q;
                this.f15518q = 1 + j;
                synchronized (this) {
                    Map<Long, C> map = this.f15519r;
                    if (map != null) {
                        map.put(Long.valueOf(j), c);
                        BufferCloseSubscriber bufferCloseSubscriber = new BufferCloseSubscriber(this, j);
                        this.f15511j.mo4425b(bufferCloseSubscriber);
                        publisher.mo5c(bufferCloseSubscriber);
                    }
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                SubscriptionHelper.cancel(this.f15513l);
                onError(th);
            }
        }

        /* renamed from: e */
        void m4304e(BufferOpenSubscriber<Open> bufferOpenSubscriber) {
            this.f15511j.mo4424c(bufferOpenSubscriber);
            if (this.f15511j.m4442g() == 0) {
                SubscriptionHelper.cancel(this.f15513l);
                this.f15515n = true;
                m4306c();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f15511j.dispose();
            synchronized (this) {
                Map<Long, C> map = this.f15519r;
                if (map != null) {
                    for (C c : map.values()) {
                        this.f15516o.offer(c);
                    }
                    this.f15519r = null;
                    this.f15515n = true;
                    m4306c();
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f15514m.m3456a(th)) {
                this.f15511j.dispose();
                synchronized (this) {
                    this.f15519r = null;
                }
                this.f15515n = true;
                m4306c();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            synchronized (this) {
                Map<Long, C> map = this.f15519r;
                if (map != null) {
                    for (C c : map.values()) {
                        c.add(t);
                    }
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.setOnce(this.f15513l, subscription)) {
                BufferOpenSubscriber bufferOpenSubscriber = new BufferOpenSubscriber(this);
                this.f15511j.mo4425b(bufferOpenSubscriber);
                this.f15509h.mo5c(bufferOpenSubscriber);
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            BackpressureHelper.m3454a(this.f15512k, j);
            m4306c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber.class */
    public static final class BufferCloseSubscriber<T, C extends Collection<? super T>> extends AtomicReference<Subscription> implements FlowableSubscriber<Object>, Disposable {
        private static final long serialVersionUID = -8498650778633225126L;

        /* renamed from: f */
        final BufferBoundarySubscriber<T, C, ?, ?> f15522f;

        /* renamed from: g */
        final long f15523g;

        BufferCloseSubscriber(BufferBoundarySubscriber<T, C, ?, ?> bufferBoundarySubscriber, long j) {
            this.f15522f = bufferBoundarySubscriber;
            this.f15523g = j;
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
            Subscription subscription = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (subscription != subscriptionHelper) {
                lazySet(subscriptionHelper);
                this.f15522f.m4307b(this, this.f15523g);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            Subscription subscription = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (subscription != subscriptionHelper) {
                lazySet(subscriptionHelper);
                this.f15522f.m4308a(this, th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            Subscription subscription = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (subscription != subscriptionHelper) {
                lazySet(subscriptionHelper);
                subscription.cancel();
                this.f15522f.m4307b(this, this.f15523g);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.setOnce(this, subscription, Long.MAX_VALUE);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super U> subscriber) {
        BufferBoundarySubscriber bufferBoundarySubscriber = new BufferBoundarySubscriber(subscriber, this.f15505i, this.f15506j, this.f15504h);
        subscriber.onSubscribe(bufferBoundarySubscriber);
        this.f15411g.m4493v(bufferBoundarySubscriber);
    }
}
