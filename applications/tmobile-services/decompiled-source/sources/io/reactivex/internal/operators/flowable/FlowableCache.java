package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCache.class */
public final class FlowableCache<T> extends AbstractFlowableWithUpstream<T, T> implements FlowableSubscriber<T> {

    /* renamed from: q */
    static final CacheSubscription[] f15575q = new CacheSubscription[0];

    /* renamed from: r */
    static final CacheSubscription[] f15576r = new CacheSubscription[0];

    /* renamed from: h */
    final AtomicBoolean f15577h;

    /* renamed from: i */
    final int f15578i;

    /* renamed from: j */
    final AtomicReference<CacheSubscription<T>[]> f15579j;

    /* renamed from: k */
    volatile long f15580k;

    /* renamed from: l */
    final Node<T> f15581l;

    /* renamed from: m */
    Node<T> f15582m;

    /* renamed from: n */
    int f15583n;

    /* renamed from: o */
    Throwable f15584o;

    /* renamed from: p */
    volatile boolean f15585p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription.class */
    public static final class CacheSubscription<T> extends AtomicInteger implements Subscription {
        private static final long serialVersionUID = 6770240836423125754L;

        /* renamed from: f */
        final Subscriber<? super T> f15586f;

        /* renamed from: g */
        final FlowableCache<T> f15587g;

        /* renamed from: h */
        final AtomicLong f15588h = new AtomicLong();

        /* renamed from: i */
        Node<T> f15589i;

        /* renamed from: j */
        int f15590j;

        /* renamed from: k */
        long f15591k;

        CacheSubscription(Subscriber<? super T> subscriber, FlowableCache<T> flowableCache) {
            this.f15586f = subscriber;
            this.f15587g = flowableCache;
            this.f15589i = flowableCache.f15581l;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.f15588h.getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f15587g.m4292D(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3453b(this.f15588h, j);
                this.f15587g.m4291E(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCache$Node.class */
    public static final class Node<T> {

        /* renamed from: a */
        final T[] f15592a;

        /* renamed from: b */
        volatile Node<T> f15593b;

        Node(int i) {
            this.f15592a = (T[]) new Object[i];
        }
    }

    /* renamed from: C */
    void m4293C(CacheSubscription<T> cacheSubscription) {
        CacheSubscription<T>[] cacheSubscriptionArr;
        CacheSubscription<T>[] cacheSubscriptionArr2;
        do {
            cacheSubscriptionArr = this.f15579j.get();
            if (cacheSubscriptionArr != f15576r) {
                int length = cacheSubscriptionArr.length;
                cacheSubscriptionArr2 = new CacheSubscription[length + 1];
                System.arraycopy(cacheSubscriptionArr, 0, cacheSubscriptionArr2, 0, length);
                cacheSubscriptionArr2[length] = cacheSubscription;
            } else {
                return;
            }
        } while (!this.f15579j.compareAndSet(cacheSubscriptionArr, cacheSubscriptionArr2));
    }

    /* renamed from: D */
    void m4292D(CacheSubscription<T> cacheSubscription) {
        CacheSubscription<T>[] cacheSubscriptionArr;
        CacheSubscription<T>[] cacheSubscriptionArr2;
        do {
            cacheSubscriptionArr = this.f15579j.get();
            int length = cacheSubscriptionArr.length;
            if (length != 0) {
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (cacheSubscriptionArr[i2] == cacheSubscription) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        cacheSubscriptionArr2 = f15575q;
                    } else {
                        cacheSubscriptionArr2 = new CacheSubscription[length - 1];
                        System.arraycopy(cacheSubscriptionArr, 0, cacheSubscriptionArr2, 0, i);
                        System.arraycopy(cacheSubscriptionArr, i + 1, cacheSubscriptionArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.f15579j.compareAndSet(cacheSubscriptionArr, cacheSubscriptionArr2));
    }

    /* renamed from: E */
    void m4291E(CacheSubscription<T> cacheSubscription) {
        if (cacheSubscription.getAndIncrement() == 0) {
            long j = cacheSubscription.f15591k;
            int i = cacheSubscription.f15590j;
            Node<T> node = cacheSubscription.f15589i;
            AtomicLong atomicLong = cacheSubscription.f15588h;
            Subscriber<? super T> subscriber = cacheSubscription.f15586f;
            int i2 = this.f15578i;
            int i3 = 1;
            while (true) {
                boolean z = this.f15585p;
                boolean z2 = this.f15580k == j;
                if (!z || !z2) {
                    if (!z2) {
                        long j2 = atomicLong.get();
                        if (j2 == Long.MIN_VALUE) {
                            cacheSubscription.f15589i = null;
                            return;
                        } else if (j2 != j) {
                            int i4 = i;
                            Node<T> node2 = node;
                            if (i == i2) {
                                node2 = node.f15593b;
                                i4 = 0;
                            }
                            subscriber.onNext((Object) node2.f15592a[i4]);
                            i = i4 + 1;
                            j++;
                            node = node2;
                        }
                    }
                    cacheSubscription.f15591k = j;
                    cacheSubscription.f15590j = i;
                    cacheSubscription.f15589i = node;
                    int addAndGet = cacheSubscription.addAndGet(-i3);
                    i3 = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                } else {
                    cacheSubscription.f15589i = null;
                    Throwable th = this.f15584o;
                    if (th != null) {
                        subscriber.onError(th);
                        return;
                    } else {
                        subscriber.onComplete();
                        return;
                    }
                }
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        this.f15585p = true;
        for (CacheSubscription<T> cacheSubscription : this.f15579j.getAndSet(f15576r)) {
            m4291E(cacheSubscription);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        if (this.f15585p) {
            RxJavaPlugins.m3354t(th);
            return;
        }
        this.f15584o = th;
        this.f15585p = true;
        for (CacheSubscription<T> cacheSubscription : this.f15579j.getAndSet(f15576r)) {
            m4291E(cacheSubscription);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        int i = this.f15583n;
        if (i == this.f15578i) {
            Node<T> node = new Node<>(i);
            node.f15592a[0] = t;
            this.f15583n = 1;
            this.f15582m.f15593b = node;
            this.f15582m = node;
        } else {
            this.f15582m.f15592a[i] = t;
            this.f15583n = i + 1;
        }
        this.f15580k++;
        for (CacheSubscription<T> cacheSubscription : this.f15579j.get()) {
            m4291E(cacheSubscription);
        }
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        subscription.request(Long.MAX_VALUE);
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        CacheSubscription<T> cacheSubscription = new CacheSubscription<>(subscriber, this);
        subscriber.onSubscribe(cacheSubscription);
        m4293C(cacheSubscription);
        if (this.f15577h.get() || !this.f15577h.compareAndSet(false, true)) {
            m4291E(cacheSubscription);
        } else {
            this.f15411g.m4493v(this);
        }
    }
}
