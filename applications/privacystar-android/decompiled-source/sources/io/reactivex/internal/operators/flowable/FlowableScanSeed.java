package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableScanSeed.class */
public final class FlowableScanSeed<T, R> extends AbstractFlowableWithUpstream<T, R> {
    final BiFunction<R, ? super T, R> accumulator;
    final Callable<R> seedSupplier;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber.class */
    static final class ScanSeedSubscriber<T, R> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -1776795561228106469L;
        final BiFunction<R, ? super T, R> accumulator;
        final Subscriber<? super R> actual;
        volatile boolean cancelled;
        int consumed;
        volatile boolean done;
        Throwable error;
        final int limit;
        final int prefetch;
        final SimplePlainQueue<R> queue;
        final AtomicLong requested = new AtomicLong();

        /* renamed from: s */
        Subscription f458s;
        R value;

        ScanSeedSubscriber(Subscriber<? super R> subscriber, BiFunction<R, ? super T, R> biFunction, R r, int i) {
            this.actual = subscriber;
            this.accumulator = biFunction;
            this.value = r;
            this.prefetch = i;
            this.limit = i - (i >> 2);
            this.queue = new SpscArrayQueue(i);
            this.queue.offer(r);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.cancelled = true;
            this.f458s.cancel();
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x00d3, code lost:
            if (r0 != 0) goto L_0x0107;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00da, code lost:
            if (r5.done == false) goto L_0x0107;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00dd, code lost:
            r0 = r5.error;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00e5, code lost:
            if (r0 == null) goto L_0x00f7;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00e8, code lost:
            r0.clear();
            r0.onError(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00f6, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00fd, code lost:
            if (r0.isEmpty() == false) goto L_0x0107;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x0100, code lost:
            r0.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x0106, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x010b, code lost:
            if (r13 == 0) goto L_0x0118;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x010e, code lost:
            io.reactivex.internal.util.BackpressureHelper.produced(r5.requested, r13);
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0118, code lost:
            r5.consumed = r9;
            r0 = addAndGet(-r10);
            r10 = r0;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v52, types: [long] */
        /* JADX WARN: Type inference failed for: r13v0 */
        /* JADX WARN: Type inference failed for: r13v1, types: [long] */
        /* JADX WARN: Type inference failed for: r13v2 */
        /* JADX WARN: Type inference failed for: r13v3 */
        /* JADX WARN: Type inference failed for: r13v4 */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void drain() {
            /*
                Method dump skipped, instructions count: 305
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableScanSeed.ScanSeedSubscriber.drain():void");
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.done) {
                this.done = true;
                drain();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.done) {
                RxJavaPlugins.onError(th);
                return;
            }
            this.error = th;
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.done) {
                try {
                    R r = (R) ObjectHelper.requireNonNull(this.accumulator.apply(this.value, t), "The accumulator returned a null value");
                    this.value = r;
                    this.queue.offer(r);
                    drain();
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    this.f458s.cancel();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f458s, subscription)) {
                this.f458s = subscription;
                this.actual.onSubscribe(this);
                subscription.request(this.prefetch - 1);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.add(this.requested, j);
                drain();
            }
        }
    }

    public FlowableScanSeed(Flowable<T> flowable, Callable<R> callable, BiFunction<R, ? super T, R> biFunction) {
        super(flowable);
        this.accumulator = biFunction;
        this.seedSupplier = callable;
    }

    @Override // io.reactivex.Flowable
    protected void subscribeActual(Subscriber<? super R> subscriber) {
        try {
            this.source.subscribe((FlowableSubscriber) new ScanSeedSubscriber(subscriber, this.accumulator, ObjectHelper.requireNonNull(this.seedSupplier.call(), "The seed supplied is null"), bufferSize()));
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptySubscription.error(th, subscriber);
        }
    }
}
