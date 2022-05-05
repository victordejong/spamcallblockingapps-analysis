package io.reactivex.internal.operators.flowable;

import io.reactivex.BackpressureOverflowStrategy;
import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.functions.Action;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnBackpressureBufferStrategy.class */
public final class FlowableOnBackpressureBufferStrategy<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final long f16231h;

    /* renamed from: i */
    final Action f16232i;

    /* renamed from: j */
    final BackpressureOverflowStrategy f16233j;

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableOnBackpressureBufferStrategy$1 */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnBackpressureBufferStrategy$1.class */
    static /* synthetic */ class C21191 {

        /* renamed from: a */
        static final /* synthetic */ int[] f16234a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[BackpressureOverflowStrategy.values().length];
            f16234a = iArr;
            try {
                iArr[BackpressureOverflowStrategy.DROP_LATEST.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f16234a[BackpressureOverflowStrategy.DROP_OLDEST.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnBackpressureBufferStrategy$OnBackpressureBufferStrategySubscriber.class */
    static final class OnBackpressureBufferStrategySubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = 3240706908776709697L;

        /* renamed from: f */
        final Subscriber<? super T> f16235f;

        /* renamed from: g */
        final Action f16236g;

        /* renamed from: h */
        final BackpressureOverflowStrategy f16237h;

        /* renamed from: i */
        final long f16238i;

        /* renamed from: j */
        final AtomicLong f16239j = new AtomicLong();

        /* renamed from: k */
        final Deque<T> f16240k = new ArrayDeque();

        /* renamed from: l */
        Subscription f16241l;

        /* renamed from: m */
        volatile boolean f16242m;

        /* renamed from: n */
        volatile boolean f16243n;

        /* renamed from: o */
        Throwable f16244o;

        OnBackpressureBufferStrategySubscriber(Subscriber<? super T> subscriber, Action action, BackpressureOverflowStrategy backpressureOverflowStrategy, long j) {
            this.f16235f = subscriber;
            this.f16236g = action;
            this.f16237h = backpressureOverflowStrategy;
            this.f16238i = j;
        }

        /* renamed from: a */
        void m4149a(Deque<T> deque) {
            synchronized (deque) {
                deque.clear();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:40:0x00a3, code lost:
            if (r0 != 0) goto L_0x00f4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00aa, code lost:
            if (r5.f16242m == false) goto L_0x00b3;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00ad, code lost:
            m4149a(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00b2, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00b3, code lost:
            r0 = r5.f16243n;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00ba, code lost:
            monitor-enter(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00bb, code lost:
            r0 = r0.isEmpty();
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00c4, code lost:
            monitor-exit(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00c7, code lost:
            if (r0 == false) goto L_0x00f4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x00ca, code lost:
            r0 = r5.f16244o;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00d2, code lost:
            if (r0 == null) goto L_0x00e3;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x00d5, code lost:
            m4149a(r0);
            r0.onError(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00e2, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00e5, code lost:
            if (r0 == false) goto L_0x00f4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x00e8, code lost:
            r0.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00ee, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x00f8, code lost:
            if (r0 == 0) goto L_0x0105;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x00fb, code lost:
            io.reactivex.internal.util.BackpressureHelper.m3450e(r5.f16239j, r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x0105, code lost:
            r0 = addAndGet(-r8);
            r8 = r0;
         */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m4148b() {
            /*
                Method dump skipped, instructions count: 278
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableOnBackpressureBufferStrategy.OnBackpressureBufferStrategySubscriber.m4148b():void");
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f16242m = true;
            this.f16241l.cancel();
            if (getAndIncrement() == 0) {
                m4149a(this.f16240k);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16243n = true;
            m4148b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16243n) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f16244o = th;
            this.f16243n = true;
            m4148b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            boolean z;
            boolean z2;
            if (!this.f16243n) {
                Deque<T> deque = this.f16240k;
                synchronized (deque) {
                    z = false;
                    z = false;
                    z2 = true;
                    if (deque.size() == this.f16238i) {
                        int i = C21191.f16234a[this.f16237h.ordinal()];
                        if (i == 1) {
                            deque.pollLast();
                            deque.offer(t);
                        } else if (i == 2) {
                            deque.poll();
                            deque.offer(t);
                        }
                        z = true;
                    } else {
                        deque.offer(t);
                    }
                    z2 = false;
                }
                if (z) {
                    Action action = this.f16236g;
                    if (action != null) {
                        try {
                            action.run();
                        } catch (Throwable th) {
                            Exceptions.m4428b(th);
                            this.f16241l.cancel();
                            onError(th);
                        }
                    }
                } else if (z2) {
                    this.f16241l.cancel();
                    onError(new MissingBackpressureException());
                } else {
                    m4148b();
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16241l, subscription)) {
                this.f16241l = subscription;
                this.f16235f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f16239j, j);
                m4148b();
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new OnBackpressureBufferStrategySubscriber(subscriber, this.f16232i, this.f16233j, this.f16231h));
    }
}
