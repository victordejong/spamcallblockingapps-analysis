package io.reactivex.processors;

import io.reactivex.Flowable;
import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/processors/UnicastProcessor.class */
public final class UnicastProcessor<T> extends FlowableProcessor<T> {

    /* renamed from: g */
    final SpscLinkedArrayQueue<T> f19578g;

    /* renamed from: h */
    final AtomicReference<Runnable> f19579h;

    /* renamed from: i */
    final boolean f19580i;

    /* renamed from: j */
    volatile boolean f19581j;

    /* renamed from: k */
    Throwable f19582k;

    /* renamed from: l */
    final AtomicReference<Subscriber<? super T>> f19583l;

    /* renamed from: m */
    volatile boolean f19584m;

    /* renamed from: n */
    final AtomicBoolean f19585n;

    /* renamed from: o */
    final BasicIntQueueSubscription<T> f19586o;

    /* renamed from: p */
    final AtomicLong f19587p;

    /* renamed from: q */
    boolean f19588q;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/UnicastProcessor$UnicastQueueSubscription.class */
    final class UnicastQueueSubscription extends BasicIntQueueSubscription<T> {
        private static final long serialVersionUID = -4896760517184205454L;

        UnicastQueueSubscription() {
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!UnicastProcessor.this.f19584m) {
                UnicastProcessor.this.f19584m = true;
                UnicastProcessor.this.m3309H();
                UnicastProcessor.this.f19583l.lazySet(null);
                if (UnicastProcessor.this.f19586o.getAndIncrement() == 0) {
                    UnicastProcessor.this.f19583l.lazySet(null);
                    UnicastProcessor unicastProcessor = UnicastProcessor.this;
                    if (!unicastProcessor.f19588q) {
                        unicastProcessor.f19578g.clear();
                    }
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            UnicastProcessor.this.f19578g.clear();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return UnicastProcessor.this.f19578g.isEmpty();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() {
            return UnicastProcessor.this.f19578g.poll();
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(UnicastProcessor.this.f19587p, j);
                UnicastProcessor.this.m3308I();
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            UnicastProcessor.this.f19588q = true;
            return 2;
        }
    }

    UnicastProcessor(int i) {
        this(i, null, true);
    }

    UnicastProcessor(int i, Runnable runnable) {
        this(i, runnable, true);
    }

    UnicastProcessor(int i, Runnable runnable, boolean z) {
        ObjectHelper.m4362f(i, "capacityHint");
        this.f19578g = new SpscLinkedArrayQueue<>(i);
        this.f19579h = new AtomicReference<>(runnable);
        this.f19580i = z;
        this.f19583l = new AtomicReference<>();
        this.f19585n = new AtomicBoolean();
        this.f19586o = new UnicastQueueSubscription();
        this.f19587p = new AtomicLong();
    }

    @CheckReturnValue
    @NonNull
    /* renamed from: E */
    public static <T> UnicastProcessor<T> m3312E() {
        return new UnicastProcessor<>(Flowable.m4511a());
    }

    @CheckReturnValue
    @NonNull
    /* renamed from: F */
    public static <T> UnicastProcessor<T> m3311F(int i) {
        return new UnicastProcessor<>(i);
    }

    @CheckReturnValue
    @NonNull
    /* renamed from: G */
    public static <T> UnicastProcessor<T> m3310G(int i, Runnable runnable) {
        ObjectHelper.m4363e(runnable, "onTerminate");
        return new UnicastProcessor<>(i, runnable);
    }

    /* renamed from: D */
    boolean m3313D(boolean z, boolean z2, boolean z3, Subscriber<? super T> subscriber, SpscLinkedArrayQueue<T> spscLinkedArrayQueue) {
        if (this.f19584m) {
            spscLinkedArrayQueue.clear();
            this.f19583l.lazySet(null);
            return true;
        } else if (!z2) {
            return false;
        } else {
            if (z && this.f19582k != null) {
                spscLinkedArrayQueue.clear();
                this.f19583l.lazySet(null);
                subscriber.onError(this.f19582k);
                return true;
            } else if (!z3) {
                return false;
            } else {
                Throwable th = this.f19582k;
                this.f19583l.lazySet(null);
                if (th != null) {
                    subscriber.onError(th);
                    return true;
                }
                subscriber.onComplete();
                return true;
            }
        }
    }

    /* renamed from: H */
    void m3309H() {
        Runnable andSet = this.f19579h.getAndSet(null);
        if (andSet != null) {
            andSet.run();
        }
    }

    /* renamed from: I */
    void m3308I() {
        if (this.f19586o.getAndIncrement() == 0) {
            int i = 1;
            Subscriber<? super T> subscriber = this.f19583l.get();
            while (true) {
                Subscriber<? super T> subscriber2 = subscriber;
                if (subscriber2 == null) {
                    i = this.f19586o.addAndGet(-i);
                    if (i != 0) {
                        subscriber = this.f19583l.get();
                    } else {
                        return;
                    }
                } else if (this.f19588q) {
                    m3307J(subscriber2);
                    return;
                } else {
                    m3306K(subscriber2);
                    return;
                }
            }
        }
    }

    /* renamed from: J */
    void m3307J(Subscriber<? super T> subscriber) {
        SpscLinkedArrayQueue<T> spscLinkedArrayQueue = this.f19578g;
        boolean z = this.f19580i;
        int i = 1;
        while (!this.f19584m) {
            boolean z2 = this.f19581j;
            if (!(!z) || !z2 || this.f19582k == null) {
                subscriber.onNext(null);
                if (z2) {
                    this.f19583l.lazySet(null);
                    Throwable th = this.f19582k;
                    if (th != null) {
                        subscriber.onError(th);
                        return;
                    } else {
                        subscriber.onComplete();
                        return;
                    }
                } else {
                    int addAndGet = this.f19586o.addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                }
            } else {
                spscLinkedArrayQueue.clear();
                this.f19583l.lazySet(null);
                subscriber.onError(this.f19582k);
                return;
            }
        }
        this.f19583l.lazySet(null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x006b, code lost:
        if (r0 != 0) goto L_0x0081;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x007d, code lost:
        if (m3313D(r0, r7.f19581j, r0.isEmpty(), r8, r0) == false) goto L_0x0081;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0080, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0085, code lost:
        if (r0 == 0) goto L_0x009c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008e, code lost:
        if (r0 == Long.MAX_VALUE) goto L_0x009c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0091, code lost:
        r7.f19587p.addAndGet(-r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x009c, code lost:
        r11 = r7.f19586o.addAndGet(-r11);
     */
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m3306K(org.reactivestreams.Subscriber<? super T> r8) {
        /*
            r7 = this;
            r0 = r7
            io.reactivex.internal.queue.SpscLinkedArrayQueue<T> r0 = r0.f19578g
            r9 = r0
            r0 = r7
            boolean r0 = r0.f19580i
            r1 = 1
            r0 = r0 ^ r1
            r10 = r0
            r0 = 1
            r11 = r0
        L_0x000f:
            r0 = r7
            java.util.concurrent.atomic.AtomicLong r0 = r0.f19587p
            long r0 = r0.get()
            r12 = r0
            r0 = 0
            r14 = r0
        L_0x001b:
            r0 = r12
            r1 = r14
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r16 = r0
            r0 = r16
            if (r0 == 0) goto L_0x0069
            r0 = r7
            boolean r0 = r0.f19581j
            r17 = r0
            r0 = r9
            java.lang.Object r0 = r0.poll()
            r18 = r0
            r0 = r18
            if (r0 != 0) goto L_0x003e
            r0 = 1
            r19 = r0
            goto L_0x0041
        L_0x003e:
            r0 = 0
            r19 = r0
        L_0x0041:
            r0 = r7
            r1 = r10
            r2 = r17
            r3 = r19
            r4 = r8
            r5 = r9
            boolean r0 = r0.m3313D(r1, r2, r3, r4, r5)
            if (r0 == 0) goto L_0x0050
            return
        L_0x0050:
            r0 = r19
            if (r0 == 0) goto L_0x0058
            goto L_0x0069
        L_0x0058:
            r0 = r8
            r1 = r18
            r0.onNext(r1)
            r0 = 1
            r1 = r14
            long r0 = r0 + r1
            r14 = r0
            goto L_0x001b
        L_0x0069:
            r0 = r16
            if (r0 != 0) goto L_0x0081
            r0 = r7
            r1 = r10
            r2 = r7
            boolean r2 = r2.f19581j
            r3 = r9
            boolean r3 = r3.isEmpty()
            r4 = r8
            r5 = r9
            boolean r0 = r0.m3313D(r1, r2, r3, r4, r5)
            if (r0 == 0) goto L_0x0081
            return
        L_0x0081:
            r0 = r14
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x009c
            r0 = r12
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x009c
            r0 = r7
            java.util.concurrent.atomic.AtomicLong r0 = r0.f19587p
            r1 = r14
            long r1 = -r1
            long r0 = r0.addAndGet(r1)
        L_0x009c:
            r0 = r7
            io.reactivex.internal.subscriptions.BasicIntQueueSubscription<T> r0 = r0.f19586o
            r1 = r11
            int r1 = -r1
            int r0 = r0.addAndGet(r1)
            r11 = r0
            r0 = r11
            if (r0 != 0) goto L_0x00ae
            return
        L_0x00ae:
            goto L_0x000f
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.processors.UnicastProcessor.m3306K(org.reactivestreams.Subscriber):void");
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (!this.f19581j && !this.f19584m) {
            this.f19581j = true;
            m3309H();
            m3308I();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        ObjectHelper.m4363e(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f19581j || this.f19584m) {
            RxJavaPlugins.m3354t(th);
            return;
        }
        this.f19582k = th;
        this.f19581j = true;
        m3309H();
        m3308I();
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        ObjectHelper.m4363e(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f19581j && !this.f19584m) {
            this.f19578g.offer(t);
            m3308I();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        if (this.f19581j || this.f19584m) {
            subscription.cancel();
        } else {
            subscription.request(Long.MAX_VALUE);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        if (this.f19585n.get() || !this.f19585n.compareAndSet(false, true)) {
            EmptySubscription.error(new IllegalStateException("This processor allows only a single Subscriber"), subscriber);
            return;
        }
        subscriber.onSubscribe(this.f19586o);
        this.f19583l.set(subscriber);
        if (this.f19584m) {
            this.f19583l.lazySet(null);
        } else {
            m3308I();
        }
    }
}
