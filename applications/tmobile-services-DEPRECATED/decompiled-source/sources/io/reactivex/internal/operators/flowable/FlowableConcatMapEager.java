package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.subscribers.InnerQueuedSubscriber;
import io.reactivex.internal.subscribers.InnerQueuedSubscriberSupport;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatMapEager.class */
public final class FlowableConcatMapEager<T, R> extends AbstractFlowableWithUpstream<T, R> {

    /* renamed from: h */
    final Function<? super T, ? extends Publisher<? extends R>> f15665h;

    /* renamed from: i */
    final int f15666i;

    /* renamed from: j */
    final int f15667j;

    /* renamed from: k */
    final ErrorMode f15668k;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber.class */
    static final class ConcatMapEagerDelayErrorSubscriber<T, R> extends AtomicInteger implements FlowableSubscriber<T>, Subscription, InnerQueuedSubscriberSupport<R> {
        private static final long serialVersionUID = -4255299542215038287L;

        /* renamed from: f */
        final Subscriber<? super R> f15669f;

        /* renamed from: g */
        final Function<? super T, ? extends Publisher<? extends R>> f15670g;

        /* renamed from: h */
        final int f15671h;

        /* renamed from: i */
        final int f15672i;

        /* renamed from: j */
        final ErrorMode f15673j;

        /* renamed from: k */
        final AtomicThrowable f15674k = new AtomicThrowable();

        /* renamed from: l */
        final AtomicLong f15675l = new AtomicLong();

        /* renamed from: m */
        final SpscLinkedArrayQueue<InnerQueuedSubscriber<R>> f15676m;

        /* renamed from: n */
        Subscription f15677n;

        /* renamed from: o */
        volatile boolean f15678o;

        /* renamed from: p */
        volatile boolean f15679p;

        /* renamed from: q */
        volatile InnerQueuedSubscriber<R> f15680q;

        /* JADX INFO: Access modifiers changed from: package-private */
        public ConcatMapEagerDelayErrorSubscriber(Subscriber<? super R> subscriber, Function<? super T, ? extends Publisher<? extends R>> function, int i, int i2, ErrorMode errorMode) {
            this.f15669f = subscriber;
            this.f15670g = function;
            this.f15671h = i;
            this.f15672i = i2;
            this.f15673j = errorMode;
            this.f15676m = new SpscLinkedArrayQueue<>(Math.min(i2, i));
        }

        @Override // io.reactivex.internal.subscribers.InnerQueuedSubscriberSupport
        /* renamed from: a */
        public void mo3482a(InnerQueuedSubscriber<R> innerQueuedSubscriber) {
            innerQueuedSubscriber.m3483d();
            mo3481b();
        }

        /* JADX WARN: Code restructure failed: missing block: B:59:0x016c, code lost:
            r19 = false;
            r13 = r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x0172, code lost:
            r18 = r19;
            r6 = r13;
            r20 = r15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x017f, code lost:
            if (r0 != 0) goto L_0x020f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x0186, code lost:
            if (r5.f15678o == false) goto L_0x018e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x0189, code lost:
            m4273e();
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x018d, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x0192, code lost:
            if (r0 != io.reactivex.internal.util.ErrorMode.IMMEDIATE) goto L_0x01be;
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x019f, code lost:
            if (r5.f15674k.get() == null) goto L_0x01be;
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x01a2, code lost:
            r5.f15680q = null;
            r13.cancel();
            m4273e();
            r0.onError(r5.f15674k.m3455b());
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x01bd, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x01be, code lost:
            r0 = r13.m3486a();
            r0 = r0.isEmpty();
            r18 = r19;
            r6 = r13;
            r20 = r15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x01db, code lost:
            if (r0 == false) goto L_0x020f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x01de, code lost:
            r18 = r19;
            r6 = r13;
            r20 = r15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x01eb, code lost:
            if (r0 == false) goto L_0x020f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x01ee, code lost:
            r5.f15680q = null;
            r5.f15677n.request(1);
            r6 = null;
            r18 = true;
            r20 = r15;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r15v0 */
        /* JADX WARN: Type inference failed for: r15v1, types: [long] */
        /* JADX WARN: Type inference failed for: r15v3 */
        /* JADX WARN: Type inference failed for: r20v0, types: [long] */
        /* JADX WARN: Type inference failed for: r20v1 */
        /* JADX WARN: Type inference failed for: r20v2 */
        /* JADX WARN: Type inference failed for: r20v3 */
        /* JADX WARN: Type inference failed for: r20v4 */
        /* JADX WARN: Type inference failed for: r20v5 */
        /* JADX WARN: Unknown variable types count: 2 */
        @Override // io.reactivex.internal.subscribers.InnerQueuedSubscriberSupport
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo3481b() {
            /*
                Method dump skipped, instructions count: 580
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableConcatMapEager.ConcatMapEagerDelayErrorSubscriber.mo3481b():void");
        }

        @Override // io.reactivex.internal.subscribers.InnerQueuedSubscriberSupport
        /* renamed from: c */
        public void mo3480c(InnerQueuedSubscriber<R> innerQueuedSubscriber, R r) {
            if (innerQueuedSubscriber.m3485b().offer(r)) {
                mo3481b();
                return;
            }
            innerQueuedSubscriber.cancel();
            mo3479d(innerQueuedSubscriber, new MissingBackpressureException());
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!this.f15678o) {
                this.f15678o = true;
                this.f15677n.cancel();
                m4272f();
            }
        }

        @Override // io.reactivex.internal.subscribers.InnerQueuedSubscriberSupport
        /* renamed from: d */
        public void mo3479d(InnerQueuedSubscriber<R> innerQueuedSubscriber, Throwable th) {
            if (this.f15674k.m3456a(th)) {
                innerQueuedSubscriber.m3483d();
                if (this.f15673j != ErrorMode.END) {
                    this.f15677n.cancel();
                }
                mo3481b();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        /* renamed from: e */
        void m4273e() {
            InnerQueuedSubscriber<R> innerQueuedSubscriber = this.f15680q;
            this.f15680q = null;
            if (innerQueuedSubscriber != null) {
                innerQueuedSubscriber.cancel();
            }
            while (true) {
                InnerQueuedSubscriber<R> poll = this.f15676m.poll();
                if (poll != null) {
                    poll.cancel();
                } else {
                    return;
                }
            }
        }

        /* renamed from: f */
        void m4272f() {
            if (getAndIncrement() == 0) {
                do {
                    m4273e();
                } while (decrementAndGet() != 0);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f15679p = true;
            mo3481b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f15674k.m3456a(th)) {
                this.f15679p = true;
                mo3481b();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            try {
                Object apply = this.f15670g.apply(t);
                ObjectHelper.m4363e(apply, "The mapper returned a null Publisher");
                Publisher publisher = (Publisher) apply;
                InnerQueuedSubscriber<R> innerQueuedSubscriber = new InnerQueuedSubscriber<>(this, this.f15672i);
                if (!this.f15678o) {
                    this.f15676m.offer(innerQueuedSubscriber);
                    publisher.mo5c(innerQueuedSubscriber);
                    if (this.f15678o) {
                        innerQueuedSubscriber.cancel();
                        m4272f();
                    }
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f15677n.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15677n, subscription)) {
                this.f15677n = subscription;
                this.f15669f.onSubscribe(this);
                int i = this.f15671h;
                subscription.request(i == Integer.MAX_VALUE ? Long.MAX_VALUE : i);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f15675l, j);
                mo3481b();
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super R> subscriber) {
        this.f15411g.m4493v(new ConcatMapEagerDelayErrorSubscriber(subscriber, this.f15665h, this.f15666i, this.f15667j, this.f15668k));
    }
}
