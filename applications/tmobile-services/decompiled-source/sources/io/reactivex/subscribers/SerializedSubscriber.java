package io.reactivex.subscribers;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AppendOnlyLinkedArrayList;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subscribers/SerializedSubscriber.class */
public final class SerializedSubscriber<T> implements FlowableSubscriber<T>, Subscription {

    /* renamed from: f */
    final Subscriber<? super T> f19791f;

    /* renamed from: g */
    final boolean f19792g;

    /* renamed from: h */
    Subscription f19793h;

    /* renamed from: i */
    boolean f19794i;

    /* renamed from: j */
    AppendOnlyLinkedArrayList<Object> f19795j;

    /* renamed from: k */
    volatile boolean f19796k;

    public SerializedSubscriber(Subscriber<? super T> subscriber) {
        this(subscriber, false);
    }

    public SerializedSubscriber(Subscriber<? super T> subscriber, boolean z) {
        this.f19791f = subscriber;
        this.f19792g = z;
    }

    /* renamed from: a */
    void m3168a() {
        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList;
        do {
            synchronized (this) {
                appendOnlyLinkedArrayList = this.f19795j;
                if (appendOnlyLinkedArrayList == null) {
                    this.f19794i = false;
                    return;
                }
                this.f19795j = null;
            }
        } while (!appendOnlyLinkedArrayList.m3460b((Subscriber<? super T>) this.f19791f));
    }

    @Override // org.reactivestreams.Subscription
    public void cancel() {
        this.f19793h.cancel();
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (!this.f19796k) {
            synchronized (this) {
                if (!this.f19796k) {
                    if (this.f19794i) {
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f19795j;
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList2 = appendOnlyLinkedArrayList;
                        if (appendOnlyLinkedArrayList == null) {
                            appendOnlyLinkedArrayList2 = new AppendOnlyLinkedArrayList<>(4);
                            this.f19795j = appendOnlyLinkedArrayList2;
                        }
                        appendOnlyLinkedArrayList2.m3459c(NotificationLite.complete());
                        return;
                    }
                    this.f19796k = true;
                    this.f19794i = true;
                    this.f19791f.onComplete();
                }
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        if (this.f19796k) {
            RxJavaPlugins.m3354t(th);
            return;
        }
        synchronized (this) {
            boolean z = true;
            if (!this.f19796k) {
                if (this.f19794i) {
                    this.f19796k = true;
                    AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f19795j;
                    AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList2 = appendOnlyLinkedArrayList;
                    if (appendOnlyLinkedArrayList == null) {
                        appendOnlyLinkedArrayList2 = new AppendOnlyLinkedArrayList<>(4);
                        this.f19795j = appendOnlyLinkedArrayList2;
                    }
                    Object error = NotificationLite.error(th);
                    if (this.f19792g) {
                        appendOnlyLinkedArrayList2.m3459c(error);
                    } else {
                        appendOnlyLinkedArrayList2.m3457e(error);
                    }
                    return;
                }
                this.f19796k = true;
                this.f19794i = true;
                z = false;
            }
            if (z) {
                RxJavaPlugins.m3354t(th);
            } else {
                this.f19791f.onError(th);
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        if (!this.f19796k) {
            if (t == null) {
                this.f19793h.cancel();
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            synchronized (this) {
                if (!this.f19796k) {
                    if (this.f19794i) {
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f19795j;
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList2 = appendOnlyLinkedArrayList;
                        if (appendOnlyLinkedArrayList == null) {
                            appendOnlyLinkedArrayList2 = new AppendOnlyLinkedArrayList<>(4);
                            this.f19795j = appendOnlyLinkedArrayList2;
                        }
                        appendOnlyLinkedArrayList2.m3459c(NotificationLite.next(t));
                        return;
                    }
                    this.f19794i = true;
                    this.f19791f.onNext(t);
                    m3168a();
                }
            }
        }
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        if (SubscriptionHelper.validate(this.f19793h, subscription)) {
            this.f19793h = subscription;
            this.f19791f.onSubscribe(this);
        }
    }

    @Override // org.reactivestreams.Subscription
    public void request(long j) {
        this.f19793h.request(j);
    }
}
