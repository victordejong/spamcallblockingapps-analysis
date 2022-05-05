package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableAmb.class */
public final class FlowableAmb<T> extends Flowable<T> {

    /* renamed from: g */
    final Publisher<? extends T>[] f15451g;

    /* renamed from: h */
    final Iterable<? extends Publisher<? extends T>> f15452h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator.class */
    static final class AmbCoordinator<T> implements Subscription {

        /* renamed from: f */
        final Subscriber<? super T> f15453f;

        /* renamed from: g */
        final AmbInnerSubscriber<T>[] f15454g;

        /* renamed from: h */
        final AtomicInteger f15455h = new AtomicInteger();

        AmbCoordinator(Subscriber<? super T> subscriber, int i) {
            this.f15453f = subscriber;
            this.f15454g = new AmbInnerSubscriber[i];
        }

        /* renamed from: a */
        public void m4311a(Publisher<? extends T>[] publisherArr) {
            AmbInnerSubscriber<T>[] ambInnerSubscriberArr = this.f15454g;
            int length = ambInnerSubscriberArr.length;
            int i = 0;
            while (i < length) {
                int i2 = i + 1;
                ambInnerSubscriberArr[i] = new AmbInnerSubscriber<>(this, i2, this.f15453f);
                i = i2;
            }
            this.f15455h.lazySet(0);
            this.f15453f.onSubscribe(this);
            for (int i3 = 0; i3 < length && this.f15455h.get() == 0; i3++) {
                publisherArr[i3].mo5c(ambInnerSubscriberArr[i3]);
            }
        }

        /* renamed from: b */
        public boolean m4310b(int i) {
            int i2 = 0;
            if (this.f15455h.get() != 0 || !this.f15455h.compareAndSet(0, i)) {
                return false;
            }
            AmbInnerSubscriber<T>[] ambInnerSubscriberArr = this.f15454g;
            int length = ambInnerSubscriberArr.length;
            while (i2 < length) {
                int i3 = i2 + 1;
                if (i3 != i) {
                    ambInnerSubscriberArr[i2].cancel();
                }
                i2 = i3;
            }
            return true;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.f15455h.get() != -1) {
                this.f15455h.lazySet(-1);
                for (AmbInnerSubscriber<T> ambInnerSubscriber : this.f15454g) {
                    ambInnerSubscriber.cancel();
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                int i = this.f15455h.get();
                if (i > 0) {
                    this.f15454g[i - 1].request(j);
                } else if (i == 0) {
                    for (AmbInnerSubscriber<T> ambInnerSubscriber : this.f15454g) {
                        ambInnerSubscriber.request(j);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber.class */
    public static final class AmbInnerSubscriber<T> extends AtomicReference<Subscription> implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -1185974347409665484L;

        /* renamed from: f */
        final AmbCoordinator<T> f15456f;

        /* renamed from: g */
        final int f15457g;

        /* renamed from: h */
        final Subscriber<? super T> f15458h;

        /* renamed from: i */
        boolean f15459i;

        /* renamed from: j */
        final AtomicLong f15460j = new AtomicLong();

        AmbInnerSubscriber(AmbCoordinator<T> ambCoordinator, int i, Subscriber<? super T> subscriber) {
            this.f15456f = ambCoordinator;
            this.f15457g = i;
            this.f15458h = subscriber;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f15459i) {
                this.f15458h.onComplete();
            } else if (this.f15456f.m4310b(this.f15457g)) {
                this.f15459i = true;
                this.f15458h.onComplete();
            } else {
                get().cancel();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f15459i) {
                this.f15458h.onError(th);
            } else if (this.f15456f.m4310b(this.f15457g)) {
                this.f15459i = true;
                this.f15458h.onError(th);
            } else {
                get().cancel();
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f15459i) {
                this.f15458h.onNext(t);
            } else if (this.f15456f.m4310b(this.f15457g)) {
                this.f15459i = true;
                this.f15458h.onNext(t);
            } else {
                get().cancel();
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.deferredSetOnce(this, this.f15460j, subscription);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            SubscriptionHelper.deferredRequest(this, this.f15460j, j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super T> subscriber) {
        int i;
        Publisher<? extends T>[] publisherArr = this.f15451g;
        if (publisherArr == null) {
            Publisher<? extends T>[] publisherArr2 = new Publisher[8];
            try {
                Iterator<? extends Publisher<? extends T>> it = this.f15452h.iterator();
                int i2 = 0;
                while (true) {
                    publisherArr = publisherArr2;
                    i = i2;
                    if (!it.hasNext()) {
                        break;
                    }
                    Publisher<? extends T> publisher = (Publisher) it.next();
                    if (publisher == null) {
                        EmptySubscription.error(new NullPointerException("One of the sources is null"), subscriber);
                        return;
                    }
                    Publisher<? extends T>[] publisherArr3 = publisherArr2;
                    if (i2 == publisherArr2.length) {
                        publisherArr3 = new Publisher[(i2 >> 2) + i2];
                        System.arraycopy(publisherArr2, 0, publisherArr3, 0, i2);
                    }
                    publisherArr3[i2] = publisher;
                    i2++;
                    publisherArr2 = publisherArr3;
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                EmptySubscription.error(th, subscriber);
                return;
            }
        } else {
            i = publisherArr.length;
        }
        if (i == 0) {
            EmptySubscription.complete(subscriber);
        } else if (i == 1) {
            publisherArr[0].mo5c(subscriber);
        } else {
            new AmbCoordinator(subscriber, i).m4311a(publisherArr);
        }
    }
}
