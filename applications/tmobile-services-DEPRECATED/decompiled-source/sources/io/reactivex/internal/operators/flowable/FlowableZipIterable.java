package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Iterator;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableZipIterable.class */
public final class FlowableZipIterable<T, U, V> extends AbstractFlowableWithUpstream<T, V> {

    /* renamed from: h */
    final Iterable<U> f16953h;

    /* renamed from: i */
    final BiFunction<? super T, ? super U, ? extends V> f16954i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableZipIterable$ZipIterableSubscriber.class */
    static final class ZipIterableSubscriber<T, U, V> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: f */
        final Subscriber<? super V> f16955f;

        /* renamed from: g */
        final Iterator<U> f16956g;

        /* renamed from: h */
        final BiFunction<? super T, ? super U, ? extends V> f16957h;

        /* renamed from: i */
        Subscription f16958i;

        /* renamed from: j */
        boolean f16959j;

        ZipIterableSubscriber(Subscriber<? super V> subscriber, Iterator<U> it, BiFunction<? super T, ? super U, ? extends V> biFunction) {
            this.f16955f = subscriber;
            this.f16956g = it;
            this.f16957h = biFunction;
        }

        /* renamed from: a */
        void m4011a(Throwable th) {
            Exceptions.m4428b(th);
            this.f16959j = true;
            this.f16958i.cancel();
            this.f16955f.onError(th);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f16958i.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f16959j) {
                this.f16959j = true;
                this.f16955f.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16959j) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f16959j = true;
            this.f16955f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f16959j) {
                try {
                    U next = this.f16956g.next();
                    ObjectHelper.m4363e(next, "The iterator returned a null value");
                    try {
                        Object apply = this.f16957h.apply(t, next);
                        ObjectHelper.m4363e(apply, "The zipper function returned a null value");
                        this.f16955f.onNext(apply);
                        try {
                            if (!this.f16956g.hasNext()) {
                                this.f16959j = true;
                                this.f16958i.cancel();
                                this.f16955f.onComplete();
                            }
                        } catch (Throwable th) {
                            m4011a(th);
                        }
                    } catch (Throwable th2) {
                        m4011a(th2);
                    }
                } catch (Throwable th3) {
                    m4011a(th3);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16958i, subscription)) {
                this.f16958i = subscription;
                this.f16955f.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f16958i.request(j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super V> subscriber) {
        try {
            Iterator<U> it = this.f16953h.iterator();
            ObjectHelper.m4363e(it, "The iterator returned by other is null");
            Iterator<U> it2 = it;
            try {
                if (!it2.hasNext()) {
                    EmptySubscription.complete(subscriber);
                } else {
                    this.f15411g.m4493v(new ZipIterableSubscriber(subscriber, it2, this.f16954i));
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                EmptySubscription.error(th, subscriber);
            }
        } catch (Throwable th2) {
            Exceptions.m4428b(th2);
            EmptySubscription.error(th2, subscriber);
        }
    }
}
