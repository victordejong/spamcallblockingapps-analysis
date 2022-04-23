package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableMergeWithMaybe.class */
public final class FlowableMergeWithMaybe<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final MaybeSource<? extends T> f16166h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableMergeWithMaybe$MergeWithObserver.class */
    static final class MergeWithObserver<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -4592979584110982903L;

        /* renamed from: f */
        final Subscriber<? super T> f16167f;

        /* renamed from: g */
        final AtomicReference<Subscription> f16168g = new AtomicReference<>();

        /* renamed from: h */
        final OtherObserver<T> f16169h = new OtherObserver<>(this);

        /* renamed from: i */
        final AtomicThrowable f16170i = new AtomicThrowable();

        /* renamed from: j */
        final AtomicLong f16171j = new AtomicLong();

        /* renamed from: k */
        final int f16172k;

        /* renamed from: l */
        final int f16173l;

        /* renamed from: m */
        volatile SimplePlainQueue<T> f16174m;

        /* renamed from: n */
        T f16175n;

        /* renamed from: o */
        volatile boolean f16176o;

        /* renamed from: p */
        volatile boolean f16177p;

        /* renamed from: q */
        volatile int f16178q;

        /* renamed from: r */
        long f16179r;

        /* renamed from: s */
        int f16180s;

        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableMergeWithMaybe$MergeWithObserver$OtherObserver.class */
        static final class OtherObserver<T> extends AtomicReference<Disposable> implements MaybeObserver<T> {
            private static final long serialVersionUID = -2935427570954647017L;

            /* renamed from: f */
            final MergeWithObserver<T> f16181f;

            OtherObserver(MergeWithObserver<T> mergeWithObserver) {
                this.f16181f = mergeWithObserver;
            }

            @Override // io.reactivex.MaybeObserver
            public void onComplete() {
                this.f16181f.m4164d();
            }

            @Override // io.reactivex.MaybeObserver
            public void onError(Throwable th) {
                this.f16181f.m4163e(th);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSuccess(T t) {
                this.f16181f.m4162f(t);
            }
        }

        MergeWithObserver(Subscriber<? super T> subscriber) {
            this.f16167f = subscriber;
            int a = Flowable.m4511a();
            this.f16172k = a;
            this.f16173l = a - (a >> 2);
        }

        /* renamed from: a */
        void m4167a() {
            if (getAndIncrement() == 0) {
                m4166b();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:39:0x0115, code lost:
            if (r0 != 0) goto L_0x0191;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x011c, code lost:
            if (r5.f16176o == false) goto L_0x012a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x011f, code lost:
            r5.f16175n = null;
            r5.f16174m = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x0129, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x0131, code lost:
            if (r5.f16170i.get() == null) goto L_0x014c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x0134, code lost:
            r5.f16175n = null;
            r5.f16174m = null;
            r0.onError(r5.f16170i.m3455b());
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x014b, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x014c, code lost:
            r0 = r5.f16177p;
            r0 = r5.f16174m;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x015a, code lost:
            if (r0 == null) goto L_0x0170;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x0164, code lost:
            if (r0.isEmpty() == false) goto L_0x016a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x016a, code lost:
            r18 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x0170, code lost:
            r18 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x0175, code lost:
            if (r0 == false) goto L_0x0191;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x017a, code lost:
            if (r18 == false) goto L_0x0191;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x0182, code lost:
            if (r5.f16178q != 2) goto L_0x0191;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x0185, code lost:
            r5.f16174m = null;
            r0.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x0190, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x0191, code lost:
            r5.f16179r = r7;
            r5.f16180s = r9;
            r11 = addAndGet(-r11);
         */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m4166b() {
            /*
                Method dump skipped, instructions count: 430
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableMergeWithMaybe.MergeWithObserver.m4166b():void");
        }

        /* renamed from: c */
        SimplePlainQueue<T> m4165c() {
            SimplePlainQueue<T> simplePlainQueue = this.f16174m;
            SimplePlainQueue<T> simplePlainQueue2 = simplePlainQueue;
            if (simplePlainQueue == null) {
                simplePlainQueue2 = new SpscArrayQueue<>(Flowable.m4511a());
                this.f16174m = simplePlainQueue2;
            }
            return simplePlainQueue2;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f16176o = true;
            SubscriptionHelper.cancel(this.f16168g);
            DisposableHelper.dispose(this.f16169h);
            if (getAndIncrement() == 0) {
                this.f16174m = null;
                this.f16175n = null;
            }
        }

        /* renamed from: d */
        void m4164d() {
            this.f16178q = 2;
            m4167a();
        }

        /* renamed from: e */
        void m4163e(Throwable th) {
            if (this.f16170i.m3456a(th)) {
                SubscriptionHelper.cancel(this.f16168g);
                m4167a();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        /* renamed from: f */
        void m4162f(T t) {
            if (compareAndSet(0, 1)) {
                long j = this.f16179r;
                if (this.f16171j.get() != j) {
                    this.f16179r = j + 1;
                    this.f16167f.onNext(t);
                    this.f16178q = 2;
                } else {
                    this.f16175n = t;
                    this.f16178q = 1;
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            } else {
                this.f16175n = t;
                this.f16178q = 1;
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            m4166b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16177p = true;
            m4167a();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16170i.m3456a(th)) {
                DisposableHelper.dispose(this.f16169h);
                m4167a();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (compareAndSet(0, 1)) {
                long j = this.f16179r;
                if (this.f16171j.get() != j) {
                    SimplePlainQueue<T> simplePlainQueue = this.f16174m;
                    if (simplePlainQueue == null || simplePlainQueue.isEmpty()) {
                        this.f16179r = j + 1;
                        this.f16167f.onNext(t);
                        int i = this.f16180s + 1;
                        if (i == this.f16173l) {
                            this.f16180s = 0;
                            this.f16168g.get().request(i);
                        } else {
                            this.f16180s = i;
                        }
                    } else {
                        simplePlainQueue.offer(t);
                    }
                } else {
                    m4165c().offer(t);
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                m4165c().offer(t);
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            m4166b();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.setOnce(this.f16168g, subscription, this.f16172k);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            BackpressureHelper.m3454a(this.f16171j, j);
            m4167a();
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        MergeWithObserver mergeWithObserver = new MergeWithObserver(subscriber);
        subscriber.onSubscribe(mergeWithObserver);
        this.f15411g.m4493v(mergeWithObserver);
        this.f16166h.mo4485b(mergeWithObserver.f16169h);
    }
}
