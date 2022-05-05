package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.annotations.Nullable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.functions.Action;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnBackpressureBuffer.class */
public final class FlowableOnBackpressureBuffer<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final int f16217h;

    /* renamed from: i */
    final boolean f16218i;

    /* renamed from: j */
    final boolean f16219j;

    /* renamed from: k */
    final Action f16220k;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnBackpressureBuffer$BackpressureBufferSubscriber.class */
    static final class BackpressureBufferSubscriber<T> extends BasicIntQueueSubscription<T> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -2514538129242366402L;

        /* renamed from: f */
        final Subscriber<? super T> f16221f;

        /* renamed from: g */
        final SimplePlainQueue<T> f16222g;

        /* renamed from: h */
        final boolean f16223h;

        /* renamed from: i */
        final Action f16224i;

        /* renamed from: j */
        Subscription f16225j;

        /* renamed from: k */
        volatile boolean f16226k;

        /* renamed from: l */
        volatile boolean f16227l;

        /* renamed from: m */
        Throwable f16228m;

        /* renamed from: n */
        final AtomicLong f16229n = new AtomicLong();

        /* renamed from: o */
        boolean f16230o;

        BackpressureBufferSubscriber(Subscriber<? super T> subscriber, int i, boolean z, boolean z2, Action action) {
            this.f16221f = subscriber;
            this.f16224i = action;
            this.f16223h = z2;
            this.f16222g = z ? new SpscLinkedArrayQueue<>(i) : new SpscArrayQueue<>(i);
        }

        /* renamed from: b */
        void m4151b() {
            int i;
            if (getAndIncrement() == 0) {
                SimplePlainQueue<T> simplePlainQueue = this.f16222g;
                Subscriber<? super T> subscriber = this.f16221f;
                int i2 = 1;
                while (!m4150d(this.f16227l, simplePlainQueue.isEmpty(), subscriber)) {
                    long j = this.f16229n.get();
                    long j2 = 0;
                    while (true) {
                        i = (j2 > j ? 1 : (j2 == j ? 0 : -1));
                        if (i == 0) {
                            break;
                        }
                        boolean z = this.f16227l;
                        Object obj = (T) simplePlainQueue.poll();
                        boolean z2 = obj == null;
                        if (!m4150d(z, z2, subscriber)) {
                            if (z2) {
                                break;
                            }
                            subscriber.onNext(obj);
                            j2++;
                        } else {
                            return;
                        }
                    }
                    if (i != 0 || !m4150d(this.f16227l, simplePlainQueue.isEmpty(), subscriber)) {
                        if (!(j2 == 0 || j == Long.MAX_VALUE)) {
                            this.f16229n.addAndGet(-j2);
                        }
                        int addAndGet = addAndGet(-i2);
                        i2 = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    } else {
                        return;
                    }
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!this.f16226k) {
                this.f16226k = true;
                this.f16225j.cancel();
                if (!this.f16230o && getAndIncrement() == 0) {
                    this.f16222g.clear();
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.f16222g.clear();
        }

        /* renamed from: d */
        boolean m4150d(boolean z, boolean z2, Subscriber<? super T> subscriber) {
            if (this.f16226k) {
                this.f16222g.clear();
                return true;
            } else if (!z) {
                return false;
            } else {
                if (!this.f16223h) {
                    Throwable th = this.f16228m;
                    if (th != null) {
                        this.f16222g.clear();
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
                    Throwable th2 = this.f16228m;
                    if (th2 != null) {
                        subscriber.onError(th2);
                        return true;
                    }
                    subscriber.onComplete();
                    return true;
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.f16222g.isEmpty();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16227l = true;
            if (this.f16230o) {
                this.f16221f.onComplete();
            } else {
                m4151b();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16228m = th;
            this.f16227l = true;
            if (this.f16230o) {
                this.f16221f.onError(th);
            } else {
                m4151b();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f16222g.offer(t)) {
                this.f16225j.cancel();
                MissingBackpressureException missingBackpressureException = new MissingBackpressureException("Buffer is full");
                try {
                    this.f16224i.run();
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    missingBackpressureException.initCause(th);
                }
                onError(missingBackpressureException);
            } else if (this.f16230o) {
                this.f16221f.onNext(null);
            } else {
                m4151b();
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16225j, subscription)) {
                this.f16225j = subscription;
                this.f16221f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() throws Exception {
            return this.f16222g.poll();
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (!this.f16230o && SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f16229n, j);
                m4151b();
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.f16230o = true;
            return 2;
        }
    }

    public FlowableOnBackpressureBuffer(Flowable<T> flowable, int i, boolean z, boolean z2, Action action) {
        super(flowable);
        this.f16217h = i;
        this.f16218i = z;
        this.f16219j = z2;
        this.f16220k = action;
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new BackpressureBufferSubscriber(subscriber, this.f16217h, this.f16218i, this.f16219j, this.f16220k));
    }
}
