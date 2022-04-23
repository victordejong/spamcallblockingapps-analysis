package io.reactivex.processors;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/processors/PublishProcessor.class */
public final class PublishProcessor<T> extends FlowableProcessor<T> {

    /* renamed from: i */
    static final PublishSubscription[] f19534i = new PublishSubscription[0];

    /* renamed from: j */
    static final PublishSubscription[] f19535j = new PublishSubscription[0];

    /* renamed from: g */
    final AtomicReference<PublishSubscription<T>[]> f19536g = new AtomicReference<>(f19535j);

    /* renamed from: h */
    Throwable f19537h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/PublishProcessor$PublishSubscription.class */
    public static final class PublishSubscription<T> extends AtomicLong implements Subscription {
        private static final long serialVersionUID = 3562861878281475070L;

        /* renamed from: f */
        final Subscriber<? super T> f19538f;

        /* renamed from: g */
        final PublishProcessor<T> f19539g;

        PublishSubscription(Subscriber<? super T> subscriber, PublishProcessor<T> publishProcessor) {
            this.f19538f = subscriber;
            this.f19539g = publishProcessor;
        }

        /* renamed from: a */
        public boolean m3329a() {
            return get() == Long.MIN_VALUE;
        }

        /* renamed from: b */
        public void m3328b() {
            if (get() != Long.MIN_VALUE) {
                this.f19538f.onComplete();
            }
        }

        /* renamed from: c */
        public void m3327c(Throwable th) {
            if (get() != Long.MIN_VALUE) {
                this.f19538f.onError(th);
            } else {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f19539g.m3330E(this);
            }
        }

        /* renamed from: d */
        public void m3326d(T t) {
            long j = get();
            if (j != Long.MIN_VALUE) {
                if (j != 0) {
                    this.f19538f.onNext(t);
                    BackpressureHelper.m3449f(this, 1L);
                    return;
                }
                cancel();
                this.f19538f.onError(new MissingBackpressureException("Could not emit value due to lack of requests"));
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3453b(this, j);
            }
        }
    }

    PublishProcessor() {
    }

    /* renamed from: D */
    boolean m3331D(PublishSubscription<T> publishSubscription) {
        PublishSubscription<T>[] publishSubscriptionArr;
        PublishSubscription<T>[] publishSubscriptionArr2;
        do {
            publishSubscriptionArr = this.f19536g.get();
            if (publishSubscriptionArr == f19534i) {
                return false;
            }
            int length = publishSubscriptionArr.length;
            publishSubscriptionArr2 = new PublishSubscription[length + 1];
            System.arraycopy(publishSubscriptionArr, 0, publishSubscriptionArr2, 0, length);
            publishSubscriptionArr2[length] = publishSubscription;
        } while (!this.f19536g.compareAndSet(publishSubscriptionArr, publishSubscriptionArr2));
        return true;
    }

    /* renamed from: E */
    void m3330E(PublishSubscription<T> publishSubscription) {
        PublishSubscription<T>[] publishSubscriptionArr;
        PublishSubscription<T>[] publishSubscriptionArr2;
        do {
            publishSubscriptionArr = this.f19536g.get();
            if (publishSubscriptionArr != f19534i && publishSubscriptionArr != f19535j) {
                int length = publishSubscriptionArr.length;
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (publishSubscriptionArr[i2] == publishSubscription) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        publishSubscriptionArr2 = f19535j;
                    } else {
                        publishSubscriptionArr2 = new PublishSubscription[length - 1];
                        System.arraycopy(publishSubscriptionArr, 0, publishSubscriptionArr2, 0, i);
                        System.arraycopy(publishSubscriptionArr, i + 1, publishSubscriptionArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.f19536g.compareAndSet(publishSubscriptionArr, publishSubscriptionArr2));
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        PublishSubscription<T>[] publishSubscriptionArr = this.f19536g.get();
        PublishSubscription<T>[] publishSubscriptionArr2 = f19534i;
        if (publishSubscriptionArr != publishSubscriptionArr2) {
            for (PublishSubscription<T> publishSubscription : this.f19536g.getAndSet(publishSubscriptionArr2)) {
                publishSubscription.m3328b();
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        ObjectHelper.m4363e(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        PublishSubscription<T>[] publishSubscriptionArr = this.f19536g.get();
        PublishSubscription<T>[] publishSubscriptionArr2 = f19534i;
        if (publishSubscriptionArr == publishSubscriptionArr2) {
            RxJavaPlugins.m3354t(th);
            return;
        }
        this.f19537h = th;
        for (PublishSubscription<T> publishSubscription : this.f19536g.getAndSet(publishSubscriptionArr2)) {
            publishSubscription.m3327c(th);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        ObjectHelper.m4363e(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        for (PublishSubscription<T> publishSubscription : this.f19536g.get()) {
            publishSubscription.m3326d(t);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        if (this.f19536g.get() == f19534i) {
            subscription.cancel();
        } else {
            subscription.request(Long.MAX_VALUE);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        PublishSubscription<T> publishSubscription = new PublishSubscription<>(subscriber, this);
        subscriber.onSubscribe(publishSubscription);
        if (!m3331D(publishSubscription)) {
            Throwable th = this.f19537h;
            if (th != null) {
                subscriber.onError(th);
            } else {
                subscriber.onComplete();
            }
        } else if (publishSubscription.m3329a()) {
            m3330E(publishSubscription);
        }
    }
}
