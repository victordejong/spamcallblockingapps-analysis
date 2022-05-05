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
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableScanSeed.class */
public final class FlowableScanSeed<T, R> extends AbstractFlowableWithUpstream<T, R> {

    /* renamed from: h */
    final BiFunction<R, ? super T, R> f16489h;

    /* renamed from: i */
    final Callable<R> f16490i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber.class */
    static final class ScanSeedSubscriber<T, R> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -1776795561228106469L;

        /* renamed from: f */
        final Subscriber<? super R> f16491f;

        /* renamed from: g */
        final BiFunction<R, ? super T, R> f16492g;

        /* renamed from: h */
        final SimplePlainQueue<R> f16493h;

        /* renamed from: i */
        final AtomicLong f16494i = new AtomicLong();

        /* renamed from: j */
        final int f16495j;

        /* renamed from: k */
        final int f16496k;

        /* renamed from: l */
        volatile boolean f16497l;

        /* renamed from: m */
        volatile boolean f16498m;

        /* renamed from: n */
        Throwable f16499n;

        /* renamed from: o */
        Subscription f16500o;

        /* renamed from: p */
        R f16501p;

        /* renamed from: q */
        int f16502q;

        ScanSeedSubscriber(Subscriber<? super R> subscriber, BiFunction<R, ? super T, R> biFunction, R r, int i) {
            this.f16491f = subscriber;
            this.f16492g = biFunction;
            this.f16501p = r;
            this.f16495j = i;
            this.f16496k = i - (i >> 2);
            SpscArrayQueue spscArrayQueue = new SpscArrayQueue(i);
            this.f16493h = spscArrayQueue;
            spscArrayQueue.offer(r);
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x00d3, code lost:
            if (r0 != 0) goto L_0x0107;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00da, code lost:
            if (r5.f16498m == false) goto L_0x0107;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00dd, code lost:
            r0 = r5.f16499n;
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
            io.reactivex.internal.util.BackpressureHelper.m3450e(r5.f16494i, r13);
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0118, code lost:
            r5.f16502q = r9;
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
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m4075a() {
            /*
                Method dump skipped, instructions count: 305
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableScanSeed.ScanSeedSubscriber.m4075a():void");
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f16497l = true;
            this.f16500o.cancel();
            if (getAndIncrement() == 0) {
                this.f16493h.clear();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f16498m) {
                this.f16498m = true;
                m4075a();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16498m) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f16499n = th;
            this.f16498m = true;
            m4075a();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f16498m) {
                try {
                    R apply = this.f16492g.apply(this.f16501p, t);
                    ObjectHelper.m4363e(apply, "The accumulator returned a null value");
                    this.f16501p = apply;
                    this.f16493h.offer(apply);
                    m4075a();
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f16500o.cancel();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16500o, subscription)) {
                this.f16500o = subscription;
                this.f16491f.onSubscribe(this);
                subscription.request(this.f16495j - 1);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f16494i, j);
                m4075a();
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super R> subscriber) {
        try {
            R call = this.f16490i.call();
            ObjectHelper.m4363e(call, "The seed supplied is null");
            this.f15411g.m4493v(new ScanSeedSubscriber(subscriber, this.f16489h, call, Flowable.m4511a()));
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptySubscription.error(th, subscriber);
        }
    }
}
