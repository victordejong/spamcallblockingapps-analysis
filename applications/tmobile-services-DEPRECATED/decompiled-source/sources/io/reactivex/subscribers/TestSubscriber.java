package io.reactivex.subscribers;

import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.observers.BaseTestConsumer;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subscribers/TestSubscriber.class */
public class TestSubscriber<T> extends BaseTestConsumer<T, TestSubscriber<T>> implements FlowableSubscriber<T>, Subscription, Disposable {

    /* renamed from: m */
    private final Subscriber<? super T> f19797m;

    /* renamed from: n */
    private volatile boolean f19798n;

    /* renamed from: o */
    private final AtomicReference<Subscription> f19799o;

    /* renamed from: p */
    private final AtomicLong f19800p;

    /* renamed from: q */
    private QueueSubscription<T> f19801q;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/subscribers/TestSubscriber$EmptySubscriber.class */
    enum EmptySubscriber implements FlowableSubscriber<Object> {
        INSTANCE;

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
        }
    }

    public TestSubscriber() {
        this(EmptySubscriber.INSTANCE, Long.MAX_VALUE);
    }

    public TestSubscriber(Subscriber<? super T> subscriber, long j) {
        if (j >= 0) {
            this.f19797m = subscriber;
            this.f19799o = new AtomicReference<>();
            this.f19800p = new AtomicLong(j);
            return;
        }
        throw new IllegalArgumentException("Negative initial request not allowed");
    }

    /* renamed from: a */
    protected void m3167a() {
    }

    @Override // org.reactivestreams.Subscription
    public final void cancel() {
        if (!this.f19798n) {
            this.f19798n = true;
            SubscriptionHelper.cancel(this.f19799o);
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        cancel();
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this.f19798n;
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (!this.f19442j) {
            this.f19442j = true;
            if (this.f19799o.get() == null) {
                this.f19440h.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            Thread.currentThread();
            this.f19441i++;
            this.f19797m.onComplete();
        } finally {
            this.f19438f.countDown();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        if (!this.f19442j) {
            this.f19442j = true;
            if (this.f19799o.get() == null) {
                this.f19440h.add(new NullPointerException("onSubscribe not called in proper order"));
            }
        }
        try {
            Thread.currentThread();
            this.f19440h.add(th);
            if (th == null) {
                this.f19440h.add(new IllegalStateException("onError received a null Throwable"));
            }
            this.f19797m.onError(th);
        } finally {
            this.f19438f.countDown();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        if (!this.f19442j) {
            this.f19442j = true;
            if (this.f19799o.get() == null) {
                this.f19440h.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        Thread.currentThread();
        if (this.f19444l == 2) {
            while (true) {
                try {
                    T poll = this.f19801q.poll();
                    if (poll != null) {
                        this.f19439g.add(poll);
                    } else {
                        return;
                    }
                } catch (Throwable th) {
                    this.f19440h.add(th);
                    this.f19801q.cancel();
                    return;
                }
            }
        } else {
            this.f19439g.add(t);
            if (t == null) {
                this.f19440h.add(new NullPointerException("onNext received a null value"));
            }
            this.f19797m.onNext(t);
        }
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        Thread.currentThread();
        if (subscription == null) {
            this.f19440h.add(new NullPointerException("onSubscribe received a null Subscription"));
        } else if (!this.f19799o.compareAndSet(null, subscription)) {
            subscription.cancel();
            if (this.f19799o.get() != SubscriptionHelper.CANCELLED) {
                this.f19440h.add(new IllegalStateException("onSubscribe received multiple subscriptions: " + subscription));
            }
        } else {
            int i = this.f19443k;
            if (i != 0 && (subscription instanceof QueueSubscription)) {
                QueueSubscription<T> queueSubscription = (QueueSubscription) subscription;
                this.f19801q = queueSubscription;
                int requestFusion = queueSubscription.requestFusion(i);
                this.f19444l = requestFusion;
                if (requestFusion == 1) {
                    this.f19442j = true;
                    Thread.currentThread();
                    while (true) {
                        try {
                            T poll = this.f19801q.poll();
                            if (poll != null) {
                                this.f19439g.add(poll);
                            } else {
                                this.f19441i++;
                                return;
                            }
                        } catch (Throwable th) {
                            this.f19440h.add(th);
                            return;
                        }
                    }
                }
            }
            this.f19797m.onSubscribe(subscription);
            long andSet = this.f19800p.getAndSet(0L);
            if (andSet != 0) {
                subscription.request(andSet);
            }
            m3167a();
        }
    }

    @Override // org.reactivestreams.Subscription
    public final void request(long j) {
        SubscriptionHelper.deferredRequest(this.f19799o, this.f19800p, j);
    }
}
