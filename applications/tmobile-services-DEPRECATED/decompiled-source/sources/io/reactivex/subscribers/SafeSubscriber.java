package io.reactivex.subscribers;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subscribers/SafeSubscriber.class */
public final class SafeSubscriber<T> implements FlowableSubscriber<T>, Subscription {

    /* renamed from: f */
    final Subscriber<? super T> f19788f;

    /* renamed from: g */
    Subscription f19789g;

    /* renamed from: h */
    boolean f19790h;

    /* renamed from: a */
    void m3170a() {
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f19788f.onSubscribe(EmptySubscription.INSTANCE);
            try {
                this.f19788f.onError(nullPointerException);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                RxJavaPlugins.m3354t(new CompositeException(nullPointerException, th));
            }
        } catch (Throwable th2) {
            Exceptions.m4428b(th2);
            RxJavaPlugins.m3354t(new CompositeException(nullPointerException, th2));
        }
    }

    /* renamed from: b */
    void m3169b() {
        this.f19790h = true;
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f19788f.onSubscribe(EmptySubscription.INSTANCE);
            try {
                this.f19788f.onError(nullPointerException);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                RxJavaPlugins.m3354t(new CompositeException(nullPointerException, th));
            }
        } catch (Throwable th2) {
            Exceptions.m4428b(th2);
            RxJavaPlugins.m3354t(new CompositeException(nullPointerException, th2));
        }
    }

    @Override // org.reactivestreams.Subscription
    public void cancel() {
        try {
            this.f19789g.cancel();
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            RxJavaPlugins.m3354t(th);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (!this.f19790h) {
            this.f19790h = true;
            if (this.f19789g == null) {
                m3170a();
                return;
            }
            try {
                this.f19788f.onComplete();
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                RxJavaPlugins.m3354t(th);
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        if (this.f19790h) {
            RxJavaPlugins.m3354t(th);
            return;
        }
        this.f19790h = true;
        if (this.f19789g == null) {
            NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
            try {
                this.f19788f.onSubscribe(EmptySubscription.INSTANCE);
                try {
                    this.f19788f.onError(new CompositeException(th, nullPointerException));
                } catch (Throwable th2) {
                    Exceptions.m4428b(th2);
                    RxJavaPlugins.m3354t(new CompositeException(th, nullPointerException, th2));
                }
            } catch (Throwable th3) {
                Exceptions.m4428b(th3);
                RxJavaPlugins.m3354t(new CompositeException(th, nullPointerException, th3));
            }
        } else {
            Throwable th4 = th;
            if (th == null) {
                th4 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            try {
                this.f19788f.onError(th4);
            } catch (Throwable th5) {
                Exceptions.m4428b(th5);
                RxJavaPlugins.m3354t(new CompositeException(th4, th5));
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        if (!this.f19790h) {
            if (this.f19789g == null) {
                m3169b();
            } else if (t == null) {
                NullPointerException nullPointerException = new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
                try {
                    this.f19789g.cancel();
                    onError(nullPointerException);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    onError(new CompositeException(nullPointerException, th));
                }
            } else {
                try {
                    this.f19788f.onNext(t);
                } catch (Throwable th2) {
                    Exceptions.m4428b(th2);
                    try {
                        this.f19789g.cancel();
                        onError(th2);
                    } catch (Throwable th3) {
                        Exceptions.m4428b(th3);
                        onError(new CompositeException(th2, th3));
                    }
                }
            }
        }
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        if (SubscriptionHelper.validate(this.f19789g, subscription)) {
            this.f19789g = subscription;
            try {
                this.f19788f.onSubscribe(this);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f19790h = true;
                try {
                    subscription.cancel();
                    RxJavaPlugins.m3354t(th);
                } catch (Throwable th2) {
                    Exceptions.m4428b(th2);
                    RxJavaPlugins.m3354t(new CompositeException(th, th2));
                }
            }
        }
    }

    @Override // org.reactivestreams.Subscription
    public void request(long j) {
        try {
            this.f19789g.request(j);
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            try {
                this.f19789g.cancel();
                RxJavaPlugins.m3354t(th);
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                RxJavaPlugins.m3354t(new CompositeException(th, th2));
            }
        }
    }
}
