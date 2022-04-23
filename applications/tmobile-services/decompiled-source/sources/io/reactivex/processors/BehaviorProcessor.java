package io.reactivex.processors;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AppendOnlyLinkedArrayList;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/processors/BehaviorProcessor.class */
public final class BehaviorProcessor<T> extends FlowableProcessor<T> {

    /* renamed from: n */
    static final Object[] f19499n = new Object[0];

    /* renamed from: o */
    static final BehaviorSubscription[] f19500o = new BehaviorSubscription[0];

    /* renamed from: p */
    static final BehaviorSubscription[] f19501p = new BehaviorSubscription[0];

    /* renamed from: h */
    final ReadWriteLock f19503h;

    /* renamed from: i */
    final Lock f19504i;

    /* renamed from: j */
    final Lock f19505j;

    /* renamed from: m */
    long f19508m;

    /* renamed from: k */
    final AtomicReference<Object> f19506k = new AtomicReference<>();

    /* renamed from: g */
    final AtomicReference<BehaviorSubscription<T>[]> f19502g = new AtomicReference<>(f19500o);

    /* renamed from: l */
    final AtomicReference<Throwable> f19507l = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/BehaviorProcessor$BehaviorSubscription.class */
    public static final class BehaviorSubscription<T> extends AtomicLong implements Subscription, AppendOnlyLinkedArrayList.NonThrowingPredicate<Object> {
        private static final long serialVersionUID = 3293175281126227086L;

        /* renamed from: f */
        final Subscriber<? super T> f19509f;

        /* renamed from: g */
        final BehaviorProcessor<T> f19510g;

        /* renamed from: h */
        boolean f19511h;

        /* renamed from: i */
        boolean f19512i;

        /* renamed from: j */
        AppendOnlyLinkedArrayList<Object> f19513j;

        /* renamed from: k */
        boolean f19514k;

        /* renamed from: l */
        volatile boolean f19515l;

        /* renamed from: m */
        long f19516m;

        BehaviorSubscription(Subscriber<? super T> subscriber, BehaviorProcessor<T> behaviorProcessor) {
            this.f19509f = subscriber;
            this.f19510g = behaviorProcessor;
        }

        @Override // io.reactivex.internal.util.AppendOnlyLinkedArrayList.NonThrowingPredicate, io.reactivex.functions.Predicate
        /* renamed from: a */
        public boolean mo3191a(Object obj) {
            if (this.f19515l) {
                return true;
            }
            if (NotificationLite.isComplete(obj)) {
                this.f19509f.onComplete();
                return true;
            } else if (NotificationLite.isError(obj)) {
                this.f19509f.onError(NotificationLite.getError(obj));
                return true;
            } else {
                long j = get();
                if (j != 0) {
                    this.f19509f.onNext((Object) NotificationLite.getValue(obj));
                    if (j == Long.MAX_VALUE) {
                        return false;
                    }
                    decrementAndGet();
                    return false;
                }
                cancel();
                this.f19509f.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
                return true;
            }
        }

        /* renamed from: b */
        void m3341b() {
            if (!this.f19515l) {
                synchronized (this) {
                    if (!this.f19515l) {
                        if (!this.f19511h) {
                            BehaviorProcessor<T> behaviorProcessor = this.f19510g;
                            Lock lock = behaviorProcessor.f19504i;
                            lock.lock();
                            this.f19516m = behaviorProcessor.f19508m;
                            Object obj = behaviorProcessor.f19506k.get();
                            lock.unlock();
                            this.f19512i = obj != null;
                            this.f19511h = true;
                            if (obj != null && !mo3191a(obj)) {
                                m3340c();
                            }
                        }
                    }
                }
            }
        }

        /* renamed from: c */
        void m3340c() {
            AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList;
            while (!this.f19515l) {
                synchronized (this) {
                    appendOnlyLinkedArrayList = this.f19513j;
                    if (appendOnlyLinkedArrayList == null) {
                        this.f19512i = false;
                        return;
                    }
                    this.f19513j = null;
                }
                appendOnlyLinkedArrayList.m3458d(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!this.f19515l) {
                this.f19515l = true;
                this.f19510g.m3344E(this);
            }
        }

        /* renamed from: d */
        void m3339d(Object obj, long j) {
            if (!this.f19515l) {
                if (!this.f19514k) {
                    synchronized (this) {
                        if (!this.f19515l) {
                            if (this.f19516m != j) {
                                if (this.f19512i) {
                                    AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f19513j;
                                    AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList2 = appendOnlyLinkedArrayList;
                                    if (appendOnlyLinkedArrayList == null) {
                                        appendOnlyLinkedArrayList2 = new AppendOnlyLinkedArrayList<>(4);
                                        this.f19513j = appendOnlyLinkedArrayList2;
                                    }
                                    appendOnlyLinkedArrayList2.m3459c(obj);
                                    return;
                                }
                                this.f19511h = true;
                                this.f19514k = true;
                            } else {
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                }
                mo3191a(obj);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this, j);
            }
        }
    }

    BehaviorProcessor() {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f19503h = reentrantReadWriteLock;
        this.f19504i = reentrantReadWriteLock.readLock();
        this.f19505j = this.f19503h.writeLock();
    }

    /* renamed from: D */
    boolean m3345D(BehaviorSubscription<T> behaviorSubscription) {
        BehaviorSubscription<T>[] behaviorSubscriptionArr;
        BehaviorSubscription<T>[] behaviorSubscriptionArr2;
        do {
            behaviorSubscriptionArr = this.f19502g.get();
            if (behaviorSubscriptionArr == f19501p) {
                return false;
            }
            int length = behaviorSubscriptionArr.length;
            behaviorSubscriptionArr2 = new BehaviorSubscription[length + 1];
            System.arraycopy(behaviorSubscriptionArr, 0, behaviorSubscriptionArr2, 0, length);
            behaviorSubscriptionArr2[length] = behaviorSubscription;
        } while (!this.f19502g.compareAndSet(behaviorSubscriptionArr, behaviorSubscriptionArr2));
        return true;
    }

    /* renamed from: E */
    void m3344E(BehaviorSubscription<T> behaviorSubscription) {
        BehaviorSubscription<T>[] behaviorSubscriptionArr;
        BehaviorSubscription<T>[] behaviorSubscriptionArr2;
        do {
            behaviorSubscriptionArr = this.f19502g.get();
            int length = behaviorSubscriptionArr.length;
            if (length != 0) {
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (behaviorSubscriptionArr[i2] == behaviorSubscription) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        behaviorSubscriptionArr2 = f19500o;
                    } else {
                        behaviorSubscriptionArr2 = new BehaviorSubscription[length - 1];
                        System.arraycopy(behaviorSubscriptionArr, 0, behaviorSubscriptionArr2, 0, i);
                        System.arraycopy(behaviorSubscriptionArr, i + 1, behaviorSubscriptionArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.f19502g.compareAndSet(behaviorSubscriptionArr, behaviorSubscriptionArr2));
    }

    /* renamed from: F */
    void m3343F(Object obj) {
        Lock lock = this.f19505j;
        lock.lock();
        this.f19508m++;
        this.f19506k.lazySet(obj);
        lock.unlock();
    }

    /* renamed from: G */
    BehaviorSubscription<T>[] m3342G(Object obj) {
        BehaviorSubscription<T>[] behaviorSubscriptionArr = this.f19502g.get();
        BehaviorSubscription<T>[] behaviorSubscriptionArr2 = f19501p;
        BehaviorSubscription<T>[] behaviorSubscriptionArr3 = behaviorSubscriptionArr;
        if (behaviorSubscriptionArr != behaviorSubscriptionArr2) {
            BehaviorSubscription<T>[] andSet = this.f19502g.getAndSet(behaviorSubscriptionArr2);
            behaviorSubscriptionArr3 = andSet;
            if (andSet != f19501p) {
                m3343F(obj);
                behaviorSubscriptionArr3 = andSet;
            }
        }
        return behaviorSubscriptionArr3;
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (this.f19507l.compareAndSet(null, ExceptionHelper.f19422a)) {
            Object complete = NotificationLite.complete();
            for (BehaviorSubscription<T> behaviorSubscription : m3342G(complete)) {
                behaviorSubscription.m3339d(complete, this.f19508m);
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        ObjectHelper.m4363e(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f19507l.compareAndSet(null, th)) {
            RxJavaPlugins.m3354t(th);
            return;
        }
        Object error = NotificationLite.error(th);
        for (BehaviorSubscription<T> behaviorSubscription : m3342G(error)) {
            behaviorSubscription.m3339d(error, this.f19508m);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        ObjectHelper.m4363e(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f19507l.get() == null) {
            Object next = NotificationLite.next(t);
            m3343F(next);
            for (BehaviorSubscription<T> behaviorSubscription : this.f19502g.get()) {
                behaviorSubscription.m3339d(next, this.f19508m);
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        if (this.f19507l.get() != null) {
            subscription.cancel();
        } else {
            subscription.request(Long.MAX_VALUE);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        BehaviorSubscription<T> behaviorSubscription = new BehaviorSubscription<>(subscriber, this);
        subscriber.onSubscribe(behaviorSubscription);
        if (!m3345D(behaviorSubscription)) {
            Throwable th = this.f19507l.get();
            if (th == ExceptionHelper.f19422a) {
                subscriber.onComplete();
            } else {
                subscriber.onError(th);
            }
        } else if (behaviorSubscription.f19515l) {
            m3344E(behaviorSubscription);
        } else {
            behaviorSubscription.m3341b();
        }
    }
}
