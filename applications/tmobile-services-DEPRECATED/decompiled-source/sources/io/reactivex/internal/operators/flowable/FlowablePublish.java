package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.flowables.ConnectableFlowable;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.fuseable.HasUpstreamPublisher;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowablePublish.class */
public final class FlowablePublish<T> extends ConnectableFlowable<T> implements HasUpstreamPublisher<T>, FlowablePublishClassic<T> {

    /* renamed from: g */
    final Flowable<T> f16270g;

    /* renamed from: h */
    final AtomicReference<PublishSubscriber<T>> f16271h;

    /* renamed from: i */
    final int f16272i;

    /* renamed from: j */
    final Publisher<T> f16273j;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowablePublish$FlowablePublisher.class */
    static final class FlowablePublisher<T> implements Publisher<T> {

        /* renamed from: f */
        private final AtomicReference<PublishSubscriber<T>> f16274f;

        /* renamed from: g */
        private final int f16275g;

        /* JADX WARN: Removed duplicated region for block: B:19:0x004f A[EDGE_INSN: B:19:0x004f->B:11:0x004f ?: BREAK  , SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0010 A[SYNTHETIC] */
        @Override // org.reactivestreams.Publisher
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo5c(org.reactivestreams.Subscriber<? super T> r6) {
            /*
                r5 = this;
                io.reactivex.internal.operators.flowable.FlowablePublish$InnerSubscriber r0 = new io.reactivex.internal.operators.flowable.FlowablePublish$InnerSubscriber
                r1 = r0
                r2 = r6
                r1.<init>(r2)
                r7 = r0
                r0 = r6
                r1 = r7
                r0.onSubscribe(r1)
            L_0x0010:
                r0 = r5
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.FlowablePublish$PublishSubscriber<T>> r0 = r0.f16274f
                java.lang.Object r0 = r0.get()
                io.reactivex.internal.operators.flowable.FlowablePublish$PublishSubscriber r0 = (io.reactivex.internal.operators.flowable.FlowablePublish.PublishSubscriber) r0
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L_0x0028
                r0 = r8
                r6 = r0
                r0 = r8
                boolean r0 = r0.isDisposed()
                if (r0 == 0) goto L_0x0047
            L_0x0028:
                io.reactivex.internal.operators.flowable.FlowablePublish$PublishSubscriber r0 = new io.reactivex.internal.operators.flowable.FlowablePublish$PublishSubscriber
                r1 = r0
                r2 = r5
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.FlowablePublish$PublishSubscriber<T>> r2 = r2.f16274f
                r3 = r5
                int r3 = r3.f16275g
                r1.<init>(r2, r3)
                r6 = r0
                r0 = r5
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.FlowablePublish$PublishSubscriber<T>> r0 = r0.f16274f
                r1 = r8
                r2 = r6
                boolean r0 = r0.compareAndSet(r1, r2)
                if (r0 != 0) goto L_0x0047
                goto L_0x0010
            L_0x0047:
                r0 = r6
                r1 = r7
                boolean r0 = r0.m4145a(r1)
                if (r0 == 0) goto L_0x0010
                r0 = r7
                long r0 = r0.get()
                r1 = -9223372036854775808
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0062
                r0 = r6
                r1 = r7
                r0.m4142d(r1)
                goto L_0x0067
            L_0x0062:
                r0 = r7
                r1 = r6
                r0.f16277g = r1
            L_0x0067:
                r0 = r6
                r0.m4143c()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowablePublish.FlowablePublisher.mo5c(org.reactivestreams.Subscriber):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber.class */
    public static final class InnerSubscriber<T> extends AtomicLong implements Subscription {
        private static final long serialVersionUID = -4453897557930727610L;

        /* renamed from: f */
        final Subscriber<? super T> f16276f;

        /* renamed from: g */
        volatile PublishSubscriber<T> f16277g;

        /* renamed from: h */
        long f16278h;

        InnerSubscriber(Subscriber<? super T> subscriber) {
            this.f16276f = subscriber;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            PublishSubscriber<T> publishSubscriber;
            if (get() != Long.MIN_VALUE && getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE && (publishSubscriber = this.f16277g) != null) {
                publishSubscriber.m4142d(this);
                publishSubscriber.m4143c();
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3453b(this, j);
                PublishSubscriber<T> publishSubscriber = this.f16277g;
                if (publishSubscriber != null) {
                    publishSubscriber.m4143c();
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber.class */
    static final class PublishSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, Disposable {

        /* renamed from: n */
        static final InnerSubscriber[] f16279n = new InnerSubscriber[0];

        /* renamed from: o */
        static final InnerSubscriber[] f16280o = new InnerSubscriber[0];
        private static final long serialVersionUID = -202316842419149694L;

        /* renamed from: f */
        final AtomicReference<PublishSubscriber<T>> f16281f;

        /* renamed from: g */
        final int f16282g;

        /* renamed from: k */
        volatile Object f16286k;

        /* renamed from: l */
        int f16287l;

        /* renamed from: m */
        volatile SimpleQueue<T> f16288m;

        /* renamed from: j */
        final AtomicReference<Subscription> f16285j = new AtomicReference<>();

        /* renamed from: h */
        final AtomicReference<InnerSubscriber<T>[]> f16283h = new AtomicReference<>(f16279n);

        /* renamed from: i */
        final AtomicBoolean f16284i = new AtomicBoolean();

        PublishSubscriber(AtomicReference<PublishSubscriber<T>> atomicReference, int i) {
            this.f16281f = atomicReference;
            this.f16282g = i;
        }

        /* renamed from: a */
        boolean m4145a(InnerSubscriber<T> innerSubscriber) {
            InnerSubscriber<T>[] innerSubscriberArr;
            InnerSubscriber<T>[] innerSubscriberArr2;
            do {
                innerSubscriberArr = this.f16283h.get();
                if (innerSubscriberArr == f16280o) {
                    return false;
                }
                int length = innerSubscriberArr.length;
                innerSubscriberArr2 = new InnerSubscriber[length + 1];
                System.arraycopy(innerSubscriberArr, 0, innerSubscriberArr2, 0, length);
                innerSubscriberArr2[length] = innerSubscriber;
            } while (!this.f16283h.compareAndSet(innerSubscriberArr, innerSubscriberArr2));
            return true;
        }

        /* renamed from: b */
        boolean m4144b(Object obj, boolean z) {
            if (obj == null) {
                return false;
            }
            if (!NotificationLite.isComplete(obj)) {
                Throwable error = NotificationLite.getError(obj);
                this.f16281f.compareAndSet(this, null);
                InnerSubscriber<T>[] andSet = this.f16283h.getAndSet(f16280o);
                if (andSet.length != 0) {
                    for (InnerSubscriber<T> innerSubscriber : andSet) {
                        innerSubscriber.f16276f.onError(error);
                    }
                    return true;
                }
                RxJavaPlugins.m3354t(error);
                return true;
            } else if (!z) {
                return false;
            } else {
                this.f16281f.compareAndSet(this, null);
                for (InnerSubscriber<T> innerSubscriber2 : this.f16283h.getAndSet(f16280o)) {
                    innerSubscriber2.f16276f.onComplete();
                }
                return true;
            }
        }

        /* renamed from: c */
        void m4143c() {
            T t;
            T t2;
            InnerSubscriber<T>[] innerSubscriberArr;
            if (getAndIncrement() == 0) {
                AtomicReference<InnerSubscriber<T>[]> atomicReference = this.f16283h;
                InnerSubscriber<T>[] innerSubscriberArr2 = atomicReference.get();
                int i = 1;
                int i2 = 1;
                while (true) {
                    Object obj = this.f16286k;
                    SimpleQueue<T> simpleQueue = this.f16288m;
                    boolean z = simpleQueue == null || simpleQueue.isEmpty();
                    if (!m4144b(obj, z)) {
                        i = i;
                        if (!z) {
                            int length = innerSubscriberArr2.length;
                            int i3 = 0;
                            long j = Long.MAX_VALUE;
                            for (InnerSubscriber<T> innerSubscriber : innerSubscriberArr2) {
                                long j2 = innerSubscriber.get();
                                if (j2 != Long.MIN_VALUE) {
                                    j = Math.min(j, j2 - innerSubscriber.f16278h);
                                } else {
                                    i3++;
                                }
                            }
                            if (length == i3) {
                                Object obj2 = this.f16286k;
                                try {
                                    t = simpleQueue.poll();
                                } catch (Throwable th) {
                                    Exceptions.m4428b(th);
                                    this.f16285j.get().cancel();
                                    obj2 = NotificationLite.error(th);
                                    this.f16286k = obj2;
                                    t = null;
                                }
                                if (m4144b(obj2, t == null)) {
                                    return;
                                }
                                if (this.f16287l != i) {
                                    this.f16285j.get().request(1L);
                                }
                            } else {
                                int i4 = 0;
                                do {
                                    long j3 = i4;
                                    if (j3 < j) {
                                        Object obj3 = this.f16286k;
                                        try {
                                            t2 = simpleQueue.poll();
                                        } catch (Throwable th2) {
                                            Exceptions.m4428b(th2);
                                            this.f16285j.get().cancel();
                                            obj3 = NotificationLite.error(th2);
                                            this.f16286k = obj3;
                                            t2 = null;
                                        }
                                        z = t2 == null;
                                        if (m4144b(obj3, z)) {
                                            return;
                                        }
                                        if (!z) {
                                            Object value = NotificationLite.getValue(t2);
                                            boolean z2 = false;
                                            for (InnerSubscriber<T> innerSubscriber2 : innerSubscriberArr2) {
                                                long j4 = innerSubscriber2.get();
                                                if (j4 != Long.MIN_VALUE) {
                                                    if (j4 != Long.MAX_VALUE) {
                                                        innerSubscriber2.f16278h++;
                                                    }
                                                    innerSubscriber2.f16276f.onNext(value);
                                                } else {
                                                    z2 = true;
                                                }
                                            }
                                            i4++;
                                            innerSubscriberArr = atomicReference.get();
                                            if (z2) {
                                                break;
                                            }
                                        }
                                    }
                                    if (!(i4 == 0 || this.f16287l == 1)) {
                                        this.f16285j.get().request(j3);
                                    }
                                    i = 1;
                                    i = 1;
                                    if (j != 0) {
                                        i = 1;
                                        if (!z) {
                                            continue;
                                        }
                                    }
                                } while (innerSubscriberArr == innerSubscriberArr2);
                                if (!(i4 == 0 || this.f16287l == 1)) {
                                    this.f16285j.get().request(i4);
                                }
                                innerSubscriberArr2 = innerSubscriberArr;
                                i = 1;
                            }
                        }
                        i2 = addAndGet(-i2);
                        if (i2 != 0) {
                            innerSubscriberArr2 = atomicReference.get();
                        } else {
                            return;
                        }
                    } else {
                        return;
                    }
                }
            }
        }

        /* renamed from: d */
        void m4142d(InnerSubscriber<T> innerSubscriber) {
            InnerSubscriber<T>[] innerSubscriberArr;
            InnerSubscriber<T>[] innerSubscriberArr2;
            do {
                innerSubscriberArr = this.f16283h.get();
                int length = innerSubscriberArr.length;
                if (length != 0) {
                    int i = -1;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        } else if (innerSubscriberArr[i2].equals(innerSubscriber)) {
                            i = i2;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (i >= 0) {
                        if (length == 1) {
                            innerSubscriberArr2 = f16279n;
                        } else {
                            innerSubscriberArr2 = new InnerSubscriber[length - 1];
                            System.arraycopy(innerSubscriberArr, 0, innerSubscriberArr2, 0, i);
                            System.arraycopy(innerSubscriberArr, i + 1, innerSubscriberArr2, i, (length - i) - 1);
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } while (!this.f16283h.compareAndSet(innerSubscriberArr, innerSubscriberArr2));
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            InnerSubscriber<T>[] innerSubscriberArr = this.f16283h.get();
            InnerSubscriber<T>[] innerSubscriberArr2 = f16280o;
            if (innerSubscriberArr != innerSubscriberArr2 && this.f16283h.getAndSet(innerSubscriberArr2) != f16280o) {
                this.f16281f.compareAndSet(this, null);
                SubscriptionHelper.cancel(this.f16285j);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f16283h.get() == f16280o;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f16286k == null) {
                this.f16286k = NotificationLite.complete();
                m4143c();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16286k == null) {
                this.f16286k = NotificationLite.error(th);
                m4143c();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f16287l != 0 || this.f16288m.offer(t)) {
                m4143c();
            } else {
                onError(new MissingBackpressureException("Prefetch queue is full?!"));
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.setOnce(this.f16285j, subscription)) {
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int requestFusion = queueSubscription.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f16287l = requestFusion;
                        this.f16288m = queueSubscription;
                        this.f16286k = NotificationLite.complete();
                        m4143c();
                        return;
                    } else if (requestFusion == 2) {
                        this.f16287l = requestFusion;
                        this.f16288m = queueSubscription;
                        subscription.request(this.f16282g);
                        return;
                    }
                }
                this.f16288m = new SpscArrayQueue(this.f16282g);
                subscription.request(this.f16282g);
            }
        }
    }

    @Override // io.reactivex.flowables.ConnectableFlowable
    /* renamed from: C */
    public void mo4105C(Consumer<? super Disposable> consumer) {
        PublishSubscriber<T> publishSubscriber;
        PublishSubscriber<T> publishSubscriber2;
        do {
            publishSubscriber = this.f16271h.get();
            if (publishSubscriber != null) {
                publishSubscriber2 = publishSubscriber;
                if (!publishSubscriber.isDisposed()) {
                    break;
                }
            }
            publishSubscriber2 = new PublishSubscriber<>(this.f16271h, this.f16272i);
        } while (!this.f16271h.compareAndSet(publishSubscriber, publishSubscriber2));
        boolean z = true;
        if (publishSubscriber2.f16284i.get() || !publishSubscriber2.f16284i.compareAndSet(false, true)) {
            z = false;
        }
        try {
            consumer.accept(publishSubscriber2);
            if (z) {
                this.f16270g.m4493v(publishSubscriber2);
            }
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            throw ExceptionHelper.m3434e(th);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f16273j.mo5c(subscriber);
    }
}
