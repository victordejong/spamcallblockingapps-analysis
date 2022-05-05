package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.Function;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableZip.class */
public final class FlowableZip<T, R> extends Flowable<R> {

    /* renamed from: g */
    final Publisher<? extends T>[] f16933g;

    /* renamed from: h */
    final Iterable<? extends Publisher<? extends T>> f16934h;

    /* renamed from: i */
    final Function<? super Object[], ? extends R> f16935i;

    /* renamed from: j */
    final int f16936j;

    /* renamed from: k */
    final boolean f16937k;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator.class */
    static final class ZipCoordinator<T, R> extends AtomicInteger implements Subscription {
        private static final long serialVersionUID = -2434867452883857743L;

        /* renamed from: f */
        final Subscriber<? super R> f16938f;

        /* renamed from: g */
        final ZipSubscriber<T, R>[] f16939g;

        /* renamed from: h */
        final Function<? super Object[], ? extends R> f16940h;

        /* renamed from: i */
        final AtomicLong f16941i;

        /* renamed from: j */
        final AtomicThrowable f16942j;

        /* renamed from: k */
        final boolean f16943k;

        /* renamed from: l */
        volatile boolean f16944l;

        /* renamed from: m */
        final Object[] f16945m;

        ZipCoordinator(Subscriber<? super R> subscriber, Function<? super Object[], ? extends R> function, int i, int i2, boolean z) {
            this.f16938f = subscriber;
            this.f16940h = function;
            this.f16943k = z;
            ZipSubscriber<T, R>[] zipSubscriberArr = new ZipSubscriber[i];
            for (int i3 = 0; i3 < i; i3++) {
                zipSubscriberArr[i3] = new ZipSubscriber<>(this, i2);
            }
            this.f16945m = new Object[i];
            this.f16939g = zipSubscriberArr;
            this.f16941i = new AtomicLong();
            this.f16942j = new AtomicThrowable();
        }

        /* renamed from: a */
        void m4015a() {
            for (ZipSubscriber<T, R> zipSubscriber : this.f16939g) {
                zipSubscriber.cancel();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:100:0x0271, code lost:
            if (r13 == 0) goto L_0x02a5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:101:0x0274, code lost:
            r0 = r0.length;
            r17 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:103:0x027f, code lost:
            if (r17 >= r0) goto L_0x0291;
         */
        /* JADX WARN: Code restructure failed: missing block: B:104:0x0282, code lost:
            r0[r17].request(r13);
            r17 = r17 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:106:0x0297, code lost:
            if (r0 == Long.MAX_VALUE) goto L_0x02a5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:107:0x029a, code lost:
            r5.f16941i.addAndGet(-r13);
         */
        /* JADX WARN: Code restructure failed: missing block: B:108:0x02a5, code lost:
            r0 = addAndGet(-r10);
            r10 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:137:?, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x0187, code lost:
            if (r0 != 0) goto L_0x026d;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x018e, code lost:
            if (r5.f16944l == false) goto L_0x0192;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x0191, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x0196, code lost:
            if (r5.f16943k != false) goto L_0x01b5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x01a0, code lost:
            if (r5.f16942j.get() == null) goto L_0x01b5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x01a3, code lost:
            m4015a();
            r0.onError(r5.f16942j.m3455b());
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x01b4, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x01b5, code lost:
            r17 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x01bb, code lost:
            if (r17 >= r0) goto L_0x026d;
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x01be, code lost:
            r0 = r0[r17];
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x01c9, code lost:
            if (r0[r17] != null) goto L_0x0267;
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x01cc, code lost:
            r0 = r0.f16951k;
            r0 = r0.f16949i;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x01dc, code lost:
            if (r0 == null) goto L_0x01eb;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x01df, code lost:
            r18 = r0.poll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x01eb, code lost:
            r18 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x01f0, code lost:
            if (r18 != null) goto L_0x01f9;
         */
        /* JADX WARN: Code restructure failed: missing block: B:79:0x01f3, code lost:
            r16 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x01f9, code lost:
            r16 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:82:0x01fe, code lost:
            if (r0 == false) goto L_0x022e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x0203, code lost:
            if (r16 == false) goto L_0x022e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:85:0x0206, code lost:
            m4015a();
         */
        /* JADX WARN: Code restructure failed: missing block: B:86:0x0214, code lost:
            if (r5.f16942j.get() == null) goto L_0x0227;
         */
        /* JADX WARN: Code restructure failed: missing block: B:87:0x0217, code lost:
            r0.onError(r5.f16942j.m3455b());
         */
        /* JADX WARN: Code restructure failed: missing block: B:88:0x0227, code lost:
            r0.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:89:0x022d, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:91:0x0230, code lost:
            if (r16 != false) goto L_0x0267;
         */
        /* JADX WARN: Code restructure failed: missing block: B:92:0x0233, code lost:
            r0[r17] = r18;
         */
        /* JADX WARN: Code restructure failed: missing block: B:93:0x023d, code lost:
            r18 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:94:0x023f, code lost:
            io.reactivex.exceptions.Exceptions.m4428b(r18);
            r5.f16942j.m3456a(r18);
         */
        /* JADX WARN: Code restructure failed: missing block: B:95:0x0252, code lost:
            if (r5.f16943k == false) goto L_0x0255;
         */
        /* JADX WARN: Code restructure failed: missing block: B:96:0x0255, code lost:
            m4015a();
            r0.onError(r5.f16942j.m3455b());
         */
        /* JADX WARN: Code restructure failed: missing block: B:97:0x0266, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:98:0x0267, code lost:
            r17 = r17 + 1;
         */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m4014b() {
            /*
                Method dump skipped, instructions count: 696
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableZip.ZipCoordinator.m4014b():void");
        }

        /* renamed from: c */
        void m4013c(ZipSubscriber<T, R> zipSubscriber, Throwable th) {
            if (this.f16942j.m3456a(th)) {
                zipSubscriber.f16951k = true;
                m4014b();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!this.f16944l) {
                this.f16944l = true;
                m4015a();
            }
        }

        /* renamed from: d */
        void m4012d(Publisher<? extends T>[] publisherArr, int i) {
            ZipSubscriber<T, R>[] zipSubscriberArr = this.f16939g;
            for (int i2 = 0; i2 < i && !this.f16944l; i2++) {
                if (this.f16943k || this.f16942j.get() == null) {
                    publisherArr[i2].mo5c(zipSubscriberArr[i2]);
                } else {
                    return;
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f16941i, j);
                m4014b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber.class */
    public static final class ZipSubscriber<T, R> extends AtomicReference<Subscription> implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -4627193790118206028L;

        /* renamed from: f */
        final ZipCoordinator<T, R> f16946f;

        /* renamed from: g */
        final int f16947g;

        /* renamed from: h */
        final int f16948h;

        /* renamed from: i */
        SimpleQueue<T> f16949i;

        /* renamed from: j */
        long f16950j;

        /* renamed from: k */
        volatile boolean f16951k;

        /* renamed from: l */
        int f16952l;

        ZipSubscriber(ZipCoordinator<T, R> zipCoordinator, int i) {
            this.f16946f = zipCoordinator;
            this.f16947g = i;
            this.f16948h = i - (i >> 2);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16951k = true;
            this.f16946f.m4014b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16946f.m4013c(this, th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f16952l != 2) {
                this.f16949i.offer(t);
            }
            this.f16946f.m4014b();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.setOnce(this, subscription)) {
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int requestFusion = queueSubscription.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f16952l = requestFusion;
                        this.f16949i = queueSubscription;
                        this.f16951k = true;
                        this.f16946f.m4014b();
                        return;
                    } else if (requestFusion == 2) {
                        this.f16952l = requestFusion;
                        this.f16949i = queueSubscription;
                        subscription.request(this.f16947g);
                        return;
                    }
                }
                this.f16949i = new SpscArrayQueue(this.f16947g);
                subscription.request(this.f16947g);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (this.f16952l != 1) {
                long j2 = this.f16950j + j;
                if (j2 >= this.f16948h) {
                    this.f16950j = 0L;
                    get().request(j2);
                    return;
                }
                this.f16950j = j2;
            }
        }
    }

    public FlowableZip(Publisher<? extends T>[] publisherArr, Iterable<? extends Publisher<? extends T>> iterable, Function<? super Object[], ? extends R> function, int i, boolean z) {
        this.f16933g = publisherArr;
        this.f16934h = iterable;
        this.f16935i = function;
        this.f16936j = i;
        this.f16937k = z;
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super R> subscriber) {
        int i;
        Publisher<? extends T>[] publisherArr = this.f16933g;
        if (publisherArr == null) {
            Publisher<? extends T>[] publisherArr2 = new Publisher[8];
            Iterator<? extends Publisher<? extends T>> it = this.f16934h.iterator();
            int i2 = 0;
            while (true) {
                publisherArr = publisherArr2;
                i = i2;
                if (!it.hasNext()) {
                    break;
                }
                Publisher<? extends T> publisher = (Publisher) it.next();
                Publisher<? extends T>[] publisherArr3 = publisherArr2;
                if (i2 == publisherArr2.length) {
                    publisherArr3 = new Publisher[(i2 >> 2) + i2];
                    System.arraycopy(publisherArr2, 0, publisherArr3, 0, i2);
                }
                publisherArr3[i2] = publisher;
                i2++;
                publisherArr2 = publisherArr3;
            }
        } else {
            i = publisherArr.length;
        }
        if (i == 0) {
            EmptySubscription.complete(subscriber);
            return;
        }
        ZipCoordinator zipCoordinator = new ZipCoordinator(subscriber, this.f16935i, i, this.f16936j, this.f16937k);
        subscriber.onSubscribe(zipCoordinator);
        zipCoordinator.m4012d(publisherArr, i);
    }
}
