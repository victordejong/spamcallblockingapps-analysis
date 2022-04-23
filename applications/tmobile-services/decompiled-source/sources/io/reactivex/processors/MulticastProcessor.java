package io.reactivex.processors;

import io.reactivex.annotations.BackpressureSupport;
import io.reactivex.annotations.SchedulerSupport;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
@SchedulerSupport
@BackpressureSupport
/* loaded from: classes2-dex2jar.jar:io/reactivex/processors/MulticastProcessor.class */
public final class MulticastProcessor<T> extends FlowableProcessor<T> {

    /* renamed from: s */
    static final MulticastSubscription[] f19517s = new MulticastSubscription[0];

    /* renamed from: t */
    static final MulticastSubscription[] f19518t = new MulticastSubscription[0];

    /* renamed from: g */
    final AtomicInteger f19519g;

    /* renamed from: h */
    final AtomicReference<Subscription> f19520h;

    /* renamed from: i */
    final AtomicReference<MulticastSubscription<T>[]> f19521i;

    /* renamed from: j */
    final AtomicBoolean f19522j;

    /* renamed from: k */
    final int f19523k;

    /* renamed from: l */
    final int f19524l;

    /* renamed from: m */
    final boolean f19525m;

    /* renamed from: n */
    volatile SimpleQueue<T> f19526n;

    /* renamed from: o */
    volatile boolean f19527o;

    /* renamed from: p */
    volatile Throwable f19528p;

    /* renamed from: q */
    int f19529q;

    /* renamed from: r */
    int f19530r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/MulticastProcessor$MulticastSubscription.class */
    public static final class MulticastSubscription<T> extends AtomicLong implements Subscription {
        private static final long serialVersionUID = -363282618957264509L;

        /* renamed from: f */
        final Subscriber<? super T> f19531f;

        /* renamed from: g */
        final MulticastProcessor<T> f19532g;

        /* renamed from: h */
        long f19533h;

        MulticastSubscription(Subscriber<? super T> subscriber, MulticastProcessor<T> multicastProcessor) {
            this.f19531f = subscriber;
            this.f19532g = multicastProcessor;
        }

        /* renamed from: a */
        void m3334a() {
            if (get() != Long.MIN_VALUE) {
                this.f19531f.onComplete();
            }
        }

        /* renamed from: b */
        void m3333b(Throwable th) {
            if (get() != Long.MIN_VALUE) {
                this.f19531f.onError(th);
            }
        }

        /* renamed from: c */
        void m3332c(T t) {
            if (get() != Long.MIN_VALUE) {
                this.f19533h++;
                this.f19531f.onNext(t);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f19532g.m3335F(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            long j2;
            long j3;
            if (SubscriptionHelper.validate(j)) {
                do {
                    j2 = get();
                    if (j2 != Long.MIN_VALUE) {
                        j3 = Long.MAX_VALUE;
                        if (j2 != Long.MAX_VALUE) {
                            j3 = j2 + j;
                            if (j3 < 0) {
                            }
                        } else {
                            return;
                        }
                    } else {
                        return;
                    }
                } while (!compareAndSet(j2, j3));
                this.f19532g.m3336E();
            }
        }
    }

    /* renamed from: D */
    boolean m3337D(MulticastSubscription<T> multicastSubscription) {
        MulticastSubscription<T>[] multicastSubscriptionArr;
        MulticastSubscription<T>[] multicastSubscriptionArr2;
        do {
            multicastSubscriptionArr = this.f19521i.get();
            if (multicastSubscriptionArr == f19518t) {
                return false;
            }
            int length = multicastSubscriptionArr.length;
            multicastSubscriptionArr2 = new MulticastSubscription[length + 1];
            System.arraycopy(multicastSubscriptionArr, 0, multicastSubscriptionArr2, 0, length);
            multicastSubscriptionArr2[length] = multicastSubscription;
        } while (!this.f19521i.compareAndSet(multicastSubscriptionArr, multicastSubscriptionArr2));
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x0023, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0023, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01d3, code lost:
        if (r0 != 0) goto L_0x0261;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01d6, code lost:
        r0 = r0.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01e4, code lost:
        if (r0 != io.reactivex.processors.MulticastProcessor.f19518t) goto L_0x01ef;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01e7, code lost:
        r0.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01ee, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01f3, code lost:
        if (r0 == r0) goto L_0x01f9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01fd, code lost:
        if (r7.f19527o == false) goto L_0x0261;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0207, code lost:
        if (r0.isEmpty() == false) goto L_0x0261;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x020a, code lost:
        r0 = r7.f19528p;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0212, code lost:
        if (r0 == null) goto L_0x023a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0215, code lost:
        r0 = r0.getAndSet(io.reactivex.processors.MulticastProcessor.f19518t);
        r0 = r0.length;
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0229, code lost:
        if (r9 >= r0) goto L_0x0260;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x022c, code lost:
        r0[r9].m3333b(r0);
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x023a, code lost:
        r0 = r0.getAndSet(io.reactivex.processors.MulticastProcessor.f19518t);
        r0 = r0.length;
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0250, code lost:
        if (r9 >= r0) goto L_0x0260;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0253, code lost:
        r0[r9].m3334a();
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0260, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0261, code lost:
        r14 = r9;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v137, types: [java.util.concurrent.atomic.AtomicLong, io.reactivex.processors.MulticastProcessor$MulticastSubscription] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v12 */
    /* JADX WARN: Type inference failed for: r17v2, types: [long] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Type inference failed for: r17v7 */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v3, types: [long] */
    /* JADX WARN: Type inference failed for: r22v4, types: [long] */
    /* JADX WARN: Unknown variable types count: 4 */
    /* renamed from: E */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m3336E() {
        /*
            Method dump skipped, instructions count: 643
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.processors.MulticastProcessor.m3336E():void");
    }

    /* renamed from: F */
    void m3335F(MulticastSubscription<T> multicastSubscription) {
        while (true) {
            MulticastSubscription<T>[] multicastSubscriptionArr = this.f19521i.get();
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
                    if (length != 1) {
                        MulticastSubscription<T>[] multicastSubscriptionArr2 = new MulticastSubscription[length - 1];
                        System.arraycopy(multicastSubscriptionArr, 0, multicastSubscriptionArr2, 0, i);
                        System.arraycopy(multicastSubscriptionArr, i + 1, multicastSubscriptionArr2, i, (length - i) - 1);
                        if (this.f19521i.compareAndSet(multicastSubscriptionArr, multicastSubscriptionArr2)) {
                            return;
                        }
                    } else if (this.f19525m) {
                        if (this.f19521i.compareAndSet(multicastSubscriptionArr, f19518t)) {
                            SubscriptionHelper.cancel(this.f19520h);
                            this.f19522j.set(true);
                            return;
                        }
                    } else if (this.f19521i.compareAndSet(multicastSubscriptionArr, f19517s)) {
                        return;
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (this.f19522j.compareAndSet(false, true)) {
            this.f19527o = true;
            m3336E();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        ObjectHelper.m4363e(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f19522j.compareAndSet(false, true)) {
            this.f19528p = th;
            this.f19527o = true;
            m3336E();
            return;
        }
        RxJavaPlugins.m3354t(th);
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        if (!this.f19522j.get()) {
            if (this.f19530r == 0) {
                ObjectHelper.m4363e(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
                if (!this.f19526n.offer(t)) {
                    SubscriptionHelper.cancel(this.f19520h);
                    onError(new MissingBackpressureException());
                    return;
                }
            }
            m3336E();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        if (SubscriptionHelper.setOnce(this.f19520h, subscription)) {
            if (subscription instanceof QueueSubscription) {
                QueueSubscription queueSubscription = (QueueSubscription) subscription;
                int requestFusion = queueSubscription.requestFusion(3);
                if (requestFusion == 1) {
                    this.f19530r = requestFusion;
                    this.f19526n = queueSubscription;
                    this.f19527o = true;
                    m3336E();
                    return;
                } else if (requestFusion == 2) {
                    this.f19530r = requestFusion;
                    this.f19526n = queueSubscription;
                    subscription.request(this.f19523k);
                    return;
                }
            }
            this.f19526n = new SpscArrayQueue(this.f19523k);
            subscription.request(this.f19523k);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        Throwable th;
        MulticastSubscription<T> multicastSubscription = new MulticastSubscription<>(subscriber, this);
        subscriber.onSubscribe(multicastSubscription);
        if (m3337D(multicastSubscription)) {
            if (multicastSubscription.get() == Long.MIN_VALUE) {
                m3335F(multicastSubscription);
            } else {
                m3336E();
            }
        } else if ((this.f19522j.get() || !this.f19525m) && (th = this.f19528p) != null) {
            subscriber.onError(th);
        } else {
            subscriber.onComplete();
        }
    }
}
