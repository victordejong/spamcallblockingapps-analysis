package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.QueueDrainHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowablePublishMulticast.class */
public final class FlowablePublishMulticast<T, R> extends AbstractFlowableWithUpstream<T, R> {

    /* renamed from: h */
    final Function<? super Flowable<T>, ? extends Publisher<? extends R>> f16307h;

    /* renamed from: i */
    final int f16308i;

    /* renamed from: j */
    final boolean f16309j;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor.class */
    static final class MulticastProcessor<T> extends Flowable<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: r */
        static final MulticastSubscription[] f16310r = new MulticastSubscription[0];

        /* renamed from: s */
        static final MulticastSubscription[] f16311s = new MulticastSubscription[0];

        /* renamed from: i */
        final int f16314i;

        /* renamed from: j */
        final int f16315j;

        /* renamed from: k */
        final boolean f16316k;

        /* renamed from: m */
        volatile SimpleQueue<T> f16318m;

        /* renamed from: n */
        int f16319n;

        /* renamed from: o */
        volatile boolean f16320o;

        /* renamed from: p */
        Throwable f16321p;

        /* renamed from: q */
        int f16322q;

        /* renamed from: g */
        final AtomicInteger f16312g = new AtomicInteger();

        /* renamed from: l */
        final AtomicReference<Subscription> f16317l = new AtomicReference<>();

        /* renamed from: h */
        final AtomicReference<MulticastSubscription<T>[]> f16313h = new AtomicReference<>(f16310r);

        MulticastProcessor(int i, boolean z) {
            this.f16314i = i;
            this.f16315j = i - (i >> 2);
            this.f16316k = z;
        }

        /* renamed from: C */
        boolean m4135C(MulticastSubscription<T> multicastSubscription) {
            MulticastSubscription<T>[] multicastSubscriptionArr;
            MulticastSubscription<T>[] multicastSubscriptionArr2;
            do {
                multicastSubscriptionArr = this.f16313h.get();
                if (multicastSubscriptionArr == f16311s) {
                    return false;
                }
                int length = multicastSubscriptionArr.length;
                multicastSubscriptionArr2 = new MulticastSubscription[length + 1];
                System.arraycopy(multicastSubscriptionArr, 0, multicastSubscriptionArr2, 0, length);
                multicastSubscriptionArr2[length] = multicastSubscription;
            } while (!this.f16313h.compareAndSet(multicastSubscriptionArr, multicastSubscriptionArr2));
            return true;
        }

        /* renamed from: D */
        void m4134D() {
            MulticastSubscription<T>[] andSet;
            for (MulticastSubscription<T> multicastSubscription : this.f16313h.getAndSet(f16311s)) {
                if (multicastSubscription.get() != Long.MIN_VALUE) {
                    multicastSubscription.f16323f.onComplete();
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:77:0x01d7, code lost:
            r12 = r0;
            r19 = r7;
            r7 = r11;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v149, types: [long] */
        /* JADX WARN: Type inference failed for: r16v0 */
        /* JADX WARN: Type inference failed for: r16v1, types: [long] */
        /* JADX WARN: Type inference failed for: r16v7 */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: E */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m4133E() {
            /*
                Method dump skipped, instructions count: 691
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowablePublishMulticast.MulticastProcessor.m4133E():void");
        }

        /* renamed from: F */
        void m4132F(Throwable th) {
            MulticastSubscription<T>[] andSet;
            for (MulticastSubscription<T> multicastSubscription : this.f16313h.getAndSet(f16311s)) {
                if (multicastSubscription.get() != Long.MIN_VALUE) {
                    multicastSubscription.f16323f.onError(th);
                }
            }
        }

        /* renamed from: G */
        void m4131G(MulticastSubscription<T> multicastSubscription) {
            MulticastSubscription<T>[] multicastSubscriptionArr;
            MulticastSubscription<T>[] multicastSubscriptionArr2;
            do {
                multicastSubscriptionArr = this.f16313h.get();
                int length = multicastSubscriptionArr.length;
                if (length != 0) {
                    int i = -1;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        } else if (multicastSubscriptionArr[i2] == multicastSubscription) {
                            i = i2;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (i >= 0) {
                        if (length == 1) {
                            multicastSubscriptionArr2 = f16310r;
                        } else {
                            multicastSubscriptionArr2 = new MulticastSubscription[length - 1];
                            System.arraycopy(multicastSubscriptionArr, 0, multicastSubscriptionArr2, 0, i);
                            System.arraycopy(multicastSubscriptionArr, i + 1, multicastSubscriptionArr2, i, (length - i) - 1);
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } while (!this.f16313h.compareAndSet(multicastSubscriptionArr, multicastSubscriptionArr2));
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            SimpleQueue<T> simpleQueue;
            SubscriptionHelper.cancel(this.f16317l);
            if (this.f16312g.getAndIncrement() == 0 && (simpleQueue = this.f16318m) != null) {
                simpleQueue.clear();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f16317l.get() == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f16320o) {
                this.f16320o = true;
                m4133E();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16320o) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f16321p = th;
            this.f16320o = true;
            m4133E();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f16320o) {
                if (this.f16319n != 0 || this.f16318m.offer(t)) {
                    m4133E();
                    return;
                }
                this.f16317l.get().cancel();
                onError(new MissingBackpressureException());
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.setOnce(this.f16317l, subscription)) {
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int requestFusion = queueSubscription.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f16319n = requestFusion;
                        this.f16318m = queueSubscription;
                        this.f16320o = true;
                        m4133E();
                        return;
                    } else if (requestFusion == 2) {
                        this.f16319n = requestFusion;
                        this.f16318m = queueSubscription;
                        QueueDrainHelper.m3396j(subscription, this.f16314i);
                        return;
                    }
                }
                this.f16318m = QueueDrainHelper.m3403c(this.f16314i);
                QueueDrainHelper.m3396j(subscription, this.f16314i);
            }
        }

        @Override // io.reactivex.Flowable
        /* renamed from: w */
        protected void mo3305w(Subscriber<? super T> subscriber) {
            MulticastSubscription<T> multicastSubscription = new MulticastSubscription<>(subscriber, this);
            subscriber.onSubscribe(multicastSubscription);
            if (!m4135C(multicastSubscription)) {
                Throwable th = this.f16321p;
                if (th != null) {
                    subscriber.onError(th);
                } else {
                    subscriber.onComplete();
                }
            } else if (multicastSubscription.m4130a()) {
                m4131G(multicastSubscription);
            } else {
                m4133E();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription.class */
    public static final class MulticastSubscription<T> extends AtomicLong implements Subscription {
        private static final long serialVersionUID = 8664815189257569791L;

        /* renamed from: f */
        final Subscriber<? super T> f16323f;

        /* renamed from: g */
        final MulticastProcessor<T> f16324g;

        /* renamed from: h */
        long f16325h;

        MulticastSubscription(Subscriber<? super T> subscriber, MulticastProcessor<T> multicastProcessor) {
            this.f16323f = subscriber;
            this.f16324g = multicastProcessor;
        }

        /* renamed from: a */
        public boolean m4130a() {
            return get() == Long.MIN_VALUE;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f16324g.m4131G(this);
                this.f16324g.m4133E();
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3453b(this, j);
                this.f16324g.m4133E();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowablePublishMulticast$OutputCanceller.class */
    static final class OutputCanceller<R> implements FlowableSubscriber<R>, Subscription {

        /* renamed from: f */
        final Subscriber<? super R> f16326f;

        /* renamed from: g */
        final MulticastProcessor<?> f16327g;

        /* renamed from: h */
        Subscription f16328h;

        OutputCanceller(Subscriber<? super R> subscriber, MulticastProcessor<?> multicastProcessor) {
            this.f16326f = subscriber;
            this.f16327g = multicastProcessor;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f16328h.cancel();
            this.f16327g.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16326f.onComplete();
            this.f16327g.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16326f.onError(th);
            this.f16327g.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(R r) {
            this.f16326f.onNext(r);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16328h, subscription)) {
                this.f16328h = subscription;
                this.f16326f.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f16328h.request(j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super R> subscriber) {
        MulticastProcessor multicastProcessor = new MulticastProcessor(this.f16308i, this.f16309j);
        try {
            Object apply = this.f16307h.apply(multicastProcessor);
            ObjectHelper.m4363e(apply, "selector returned a null Publisher");
            ((Publisher) apply).mo5c(new OutputCanceller(subscriber, multicastProcessor));
            this.f15411g.m4493v(multicastProcessor);
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptySubscription.error(th, subscriber);
        }
    }
}
