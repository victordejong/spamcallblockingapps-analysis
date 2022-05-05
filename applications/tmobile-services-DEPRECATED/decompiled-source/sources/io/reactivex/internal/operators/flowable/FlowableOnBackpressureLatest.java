package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnBackpressureLatest.class */
public final class FlowableOnBackpressureLatest<T> extends AbstractFlowableWithUpstream<T, T> {

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnBackpressureLatest$BackpressureLatestSubscriber.class */
    static final class BackpressureLatestSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = 163080509307634843L;

        /* renamed from: f */
        final Subscriber<? super T> f16253f;

        /* renamed from: g */
        Subscription f16254g;

        /* renamed from: h */
        volatile boolean f16255h;

        /* renamed from: i */
        Throwable f16256i;

        /* renamed from: j */
        volatile boolean f16257j;

        /* renamed from: k */
        final AtomicLong f16258k = new AtomicLong();

        /* renamed from: l */
        final AtomicReference<T> f16259l = new AtomicReference<>();

        BackpressureLatestSubscriber(Subscriber<? super T> subscriber) {
            this.f16253f = subscriber;
        }

        /* renamed from: a */
        boolean m4147a(boolean z, boolean z2, Subscriber<?> subscriber, AtomicReference<T> atomicReference) {
            if (this.f16257j) {
                atomicReference.lazySet(null);
                return true;
            } else if (!z) {
                return false;
            } else {
                Throwable th = this.f16256i;
                if (th != null) {
                    atomicReference.lazySet(null);
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
        void m4146b() {
            int addAndGet;
            boolean z;
            if (getAndIncrement() == 0) {
                Subscriber<? super T> subscriber = this.f16253f;
                AtomicLong atomicLong = this.f16258k;
                AtomicReference<T> atomicReference = this.f16259l;
                int i = 1;
                do {
                    long j = 0;
                    while (true) {
                        z = false;
                        if (j == atomicLong.get()) {
                            break;
                        }
                        boolean z2 = this.f16255h;
                        Object obj = (T) atomicReference.getAndSet(null);
                        boolean z3 = obj == null;
                        if (!m4147a(z2, z3, subscriber, atomicReference)) {
                            if (z3) {
                                break;
                            }
                            subscriber.onNext(obj);
                            j++;
                        } else {
                            return;
                        }
                    }
                    if (j == atomicLong.get()) {
                        boolean z4 = this.f16255h;
                        if (atomicReference.get() == null) {
                            z = true;
                        }
                        if (m4147a(z4, z, subscriber, atomicReference)) {
                            return;
                        }
                    }
                    if (j != 0) {
                        BackpressureHelper.m3450e(atomicLong, j);
                    }
                    addAndGet = addAndGet(-i);
                    i = addAndGet;
                } while (addAndGet != 0);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!this.f16257j) {
                this.f16257j = true;
                this.f16254g.cancel();
                if (getAndIncrement() == 0) {
                    this.f16259l.lazySet(null);
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16255h = true;
            m4146b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16256i = th;
            this.f16255h = true;
            m4146b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f16259l.lazySet(t);
            m4146b();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16254g, subscription)) {
                this.f16254g = subscription;
                this.f16253f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f16258k, j);
                m4146b();
            }
        }
    }

    public FlowableOnBackpressureLatest(Flowable<T> flowable) {
        super(flowable);
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new BackpressureLatestSubscriber(subscriber));
    }
}
