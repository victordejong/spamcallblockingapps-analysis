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
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableZip.class */
public final class FlowableZip<T, R> extends Flowable<R> {
    final int bufferSize;
    final boolean delayError;
    final Publisher<? extends T>[] sources;
    final Iterable<? extends Publisher<? extends T>> sourcesIterable;
    final Function<? super Object[], ? extends R> zipper;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator.class */
    static final class ZipCoordinator<T, R> extends AtomicInteger implements Subscription {
        private static final long serialVersionUID = -2434867452883857743L;
        final Subscriber<? super R> actual;
        volatile boolean cancelled;
        final Object[] current;
        final boolean delayErrors;
        final AtomicThrowable errors;
        final AtomicLong requested;
        final ZipSubscriber<T, R>[] subscribers;
        final Function<? super Object[], ? extends R> zipper;

        ZipCoordinator(Subscriber<? super R> subscriber, Function<? super Object[], ? extends R> function, int i, int i2, boolean z) {
            this.actual = subscriber;
            this.zipper = function;
            this.delayErrors = z;
            ZipSubscriber<T, R>[] zipSubscriberArr = new ZipSubscriber[i];
            for (int i3 = 0; i3 < i; i3++) {
                zipSubscriberArr[i3] = new ZipSubscriber<>(this, i2);
            }
            this.current = new Object[i];
            this.subscribers = zipSubscriberArr;
            this.requested = new AtomicLong();
            this.errors = new AtomicThrowable();
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!this.cancelled) {
                this.cancelled = true;
                cancelAll();
            }
        }

        void cancelAll() {
            for (ZipSubscriber<T, R> zipSubscriber : this.subscribers) {
                zipSubscriber.cancel();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:100:0x026e, code lost:
            if (r13 == 0) goto L_0x02a2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:101:0x0271, code lost:
            r0 = r0.length;
            r17 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:103:0x027c, code lost:
            if (r17 >= r0) goto L_0x028e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:104:0x027f, code lost:
            r0[r17].request(r13);
            r17 = r17 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:106:0x0294, code lost:
            if (r0 == Long.MAX_VALUE) goto L_0x02a2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:107:0x0297, code lost:
            r5.requested.addAndGet(-r13);
         */
        /* JADX WARN: Code restructure failed: missing block: B:108:0x02a2, code lost:
            r0 = addAndGet(-r10);
            r10 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:137:?, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x0184, code lost:
            if (r0 != 0) goto L_0x026a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x018b, code lost:
            if (r5.cancelled == false) goto L_0x018f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x018e, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x0193, code lost:
            if (r5.delayErrors != false) goto L_0x01b2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x019d, code lost:
            if (r5.errors.get() == null) goto L_0x01b2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x01a0, code lost:
            cancelAll();
            r0.onError(r5.errors.terminate());
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x01b1, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x01b2, code lost:
            r17 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x01b8, code lost:
            if (r17 >= r0) goto L_0x026a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x01bb, code lost:
            r0 = r0[r17];
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x01c6, code lost:
            if (r0[r17] != null) goto L_0x0264;
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x01c9, code lost:
            r0 = r0.done;
            r0 = r0.queue;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x01d9, code lost:
            if (r0 == null) goto L_0x01e8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x01dc, code lost:
            r18 = r0.poll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x01e8, code lost:
            r18 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x01ed, code lost:
            if (r18 != null) goto L_0x01f6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:79:0x01f0, code lost:
            r16 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x01f6, code lost:
            r16 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:82:0x01fb, code lost:
            if (r0 == false) goto L_0x022b;
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x0200, code lost:
            if (r16 == false) goto L_0x022b;
         */
        /* JADX WARN: Code restructure failed: missing block: B:85:0x0203, code lost:
            cancelAll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:86:0x0211, code lost:
            if (r5.errors.get() == null) goto L_0x0224;
         */
        /* JADX WARN: Code restructure failed: missing block: B:87:0x0214, code lost:
            r0.onError(r5.errors.terminate());
         */
        /* JADX WARN: Code restructure failed: missing block: B:88:0x0224, code lost:
            r0.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:89:0x022a, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:91:0x022d, code lost:
            if (r16 != false) goto L_0x0264;
         */
        /* JADX WARN: Code restructure failed: missing block: B:92:0x0230, code lost:
            r0[r17] = r18;
         */
        /* JADX WARN: Code restructure failed: missing block: B:93:0x023a, code lost:
            r18 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:94:0x023c, code lost:
            io.reactivex.exceptions.Exceptions.throwIfFatal(r18);
            r5.errors.addThrowable(r18);
         */
        /* JADX WARN: Code restructure failed: missing block: B:95:0x024f, code lost:
            if (r5.delayErrors == false) goto L_0x0252;
         */
        /* JADX WARN: Code restructure failed: missing block: B:96:0x0252, code lost:
            cancelAll();
            r0.onError(r5.errors.terminate());
         */
        /* JADX WARN: Code restructure failed: missing block: B:97:0x0263, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:98:0x0264, code lost:
            r17 = r17 + 1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void drain() {
            /*
                Method dump skipped, instructions count: 693
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableZip.ZipCoordinator.drain():void");
        }

        void error(ZipSubscriber<T, R> zipSubscriber, Throwable th) {
            if (this.errors.addThrowable(th)) {
                zipSubscriber.done = true;
                drain();
                return;
            }
            RxJavaPlugins.onError(th);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.add(this.requested, j);
                drain();
            }
        }

        void subscribe(Publisher<? extends T>[] publisherArr, int i) {
            ZipSubscriber<T, R>[] zipSubscriberArr = this.subscribers;
            for (int i2 = 0; i2 < i && !this.cancelled; i2++) {
                if (this.delayErrors || this.errors.get() == null) {
                    publisherArr[i2].subscribe(zipSubscriberArr[i2]);
                } else {
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber.class */
    public static final class ZipSubscriber<T, R> extends AtomicReference<Subscription> implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -4627193790118206028L;
        volatile boolean done;
        final int limit;
        final ZipCoordinator<T, R> parent;
        final int prefetch;
        long produced;
        SimpleQueue<T> queue;
        int sourceMode;

        ZipSubscriber(ZipCoordinator<T, R> zipCoordinator, int i) {
            this.parent = zipCoordinator;
            this.prefetch = i;
            this.limit = i - (i >> 2);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.done = true;
            this.parent.drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.parent.error(this, th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.sourceMode != 2) {
                this.queue.offer(t);
            }
            this.parent.drain();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.setOnce(this, subscription)) {
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int requestFusion = queueSubscription.requestFusion(7);
                    if (requestFusion == 1) {
                        this.sourceMode = requestFusion;
                        this.queue = queueSubscription;
                        this.done = true;
                        this.parent.drain();
                        return;
                    } else if (requestFusion == 2) {
                        this.sourceMode = requestFusion;
                        this.queue = queueSubscription;
                        subscription.request(this.prefetch);
                        return;
                    }
                }
                this.queue = new SpscArrayQueue(this.prefetch);
                subscription.request(this.prefetch);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (this.sourceMode != 1) {
                long j2 = this.produced + j;
                if (j2 >= this.limit) {
                    this.produced = 0L;
                    get().request(j2);
                    return;
                }
                this.produced = j2;
            }
        }
    }

    public FlowableZip(Publisher<? extends T>[] publisherArr, Iterable<? extends Publisher<? extends T>> iterable, Function<? super Object[], ? extends R> function, int i, boolean z) {
        this.sources = publisherArr;
        this.sourcesIterable = iterable;
        this.zipper = function;
        this.bufferSize = i;
        this.delayError = z;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(Subscriber<? super R> subscriber) {
        int i;
        Publisher<? extends T>[] publisherArr = this.sources;
        if (publisherArr == null) {
            publisherArr = new Publisher[8];
            i = 0;
            for (Publisher<? extends T> publisher : this.sourcesIterable) {
                Publisher<? extends T>[] publisherArr2 = publisherArr;
                if (i == publisherArr.length) {
                    publisherArr2 = new Publisher[(i >> 2) + i];
                    System.arraycopy(publisherArr, 0, publisherArr2, 0, i);
                }
                publisherArr2[i] = publisher;
                i++;
                publisherArr = publisherArr2;
            }
        } else {
            i = publisherArr.length;
        }
        if (i == 0) {
            EmptySubscription.complete(subscriber);
            return;
        }
        ZipCoordinator zipCoordinator = new ZipCoordinator(subscriber, this.zipper, i, this.bufferSize, this.delayError);
        subscriber.onSubscribe(zipCoordinator);
        zipCoordinator.subscribe(publisherArr, i);
    }
}
