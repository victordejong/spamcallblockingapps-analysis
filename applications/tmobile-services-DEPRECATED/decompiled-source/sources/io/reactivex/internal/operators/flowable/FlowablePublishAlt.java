package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.flowables.ConnectableFlowable;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.ResettableConnectable;
import io.reactivex.internal.fuseable.HasUpstreamPublisher;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowablePublishAlt.class */
public final class FlowablePublishAlt<T> extends ConnectableFlowable<T> implements HasUpstreamPublisher<T>, ResettableConnectable {

    /* renamed from: g */
    final Publisher<T> f16289g;

    /* renamed from: h */
    final int f16290h;

    /* renamed from: i */
    final AtomicReference<PublishConnection<T>> f16291i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowablePublishAlt$InnerSubscription.class */
    public static final class InnerSubscription<T> extends AtomicLong implements Subscription {
        private static final long serialVersionUID = 2845000326761540265L;

        /* renamed from: f */
        final Subscriber<? super T> f16292f;

        /* renamed from: g */
        final PublishConnection<T> f16293g;

        /* renamed from: h */
        long f16294h;

        InnerSubscription(Subscriber<? super T> subscriber, PublishConnection<T> publishConnection) {
            this.f16292f = subscriber;
            this.f16293g = publishConnection;
        }

        /* renamed from: a */
        public boolean m4141a() {
            return get() == Long.MIN_VALUE;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f16293g.m4137d(this);
                this.f16293g.m4138c();
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            BackpressureHelper.m3453b(this, j);
            this.f16293g.m4138c();
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowablePublishAlt$PublishConnection.class */
    static final class PublishConnection<T> extends AtomicInteger implements FlowableSubscriber<T>, Disposable {

        /* renamed from: p */
        static final InnerSubscription[] f16295p = new InnerSubscription[0];

        /* renamed from: q */
        static final InnerSubscription[] f16296q = new InnerSubscription[0];
        private static final long serialVersionUID = -1672047311619175801L;

        /* renamed from: f */
        final AtomicReference<PublishConnection<T>> f16297f;

        /* renamed from: g */
        final AtomicReference<Subscription> f16298g = new AtomicReference<>();

        /* renamed from: h */
        final AtomicBoolean f16299h = new AtomicBoolean();

        /* renamed from: i */
        final AtomicReference<InnerSubscription<T>[]> f16300i = new AtomicReference<>(f16295p);

        /* renamed from: j */
        final int f16301j;

        /* renamed from: k */
        volatile SimpleQueue<T> f16302k;

        /* renamed from: l */
        int f16303l;

        /* renamed from: m */
        volatile boolean f16304m;

        /* renamed from: n */
        Throwable f16305n;

        /* renamed from: o */
        int f16306o;

        PublishConnection(AtomicReference<PublishConnection<T>> atomicReference, int i) {
            this.f16297f = atomicReference;
            this.f16301j = i;
        }

        /* renamed from: a */
        boolean m4140a(InnerSubscription<T> innerSubscription) {
            InnerSubscription<T>[] innerSubscriptionArr;
            InnerSubscription<T>[] innerSubscriptionArr2;
            do {
                innerSubscriptionArr = this.f16300i.get();
                if (innerSubscriptionArr == f16296q) {
                    return false;
                }
                int length = innerSubscriptionArr.length;
                innerSubscriptionArr2 = new InnerSubscription[length + 1];
                System.arraycopy(innerSubscriptionArr, 0, innerSubscriptionArr2, 0, length);
                innerSubscriptionArr2[length] = innerSubscription;
            } while (!this.f16300i.compareAndSet(innerSubscriptionArr, innerSubscriptionArr2));
            return true;
        }

        /* renamed from: b */
        boolean m4139b(boolean z, boolean z2) {
            InnerSubscription<T>[] andSet;
            if (!z || !z2) {
                return false;
            }
            Throwable th = this.f16305n;
            if (th != null) {
                m4136e(th);
                return true;
            }
            for (InnerSubscription<T> innerSubscription : this.f16300i.getAndSet(f16296q)) {
                if (!innerSubscription.m4141a()) {
                    innerSubscription.f16292f.onComplete();
                }
            }
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r13v0 */
        /* JADX WARN: Type inference failed for: r13v1, types: [long] */
        /* JADX WARN: Type inference failed for: r13v6 */
        /* JADX WARN: Type inference failed for: r13v7 */
        /* JADX WARN: Type inference failed for: r21v0 */
        /* JADX WARN: Type inference failed for: r21v2, types: [long] */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m4138c() {
            /*
                Method dump skipped, instructions count: 433
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowablePublishAlt.PublishConnection.m4138c():void");
        }

        /* renamed from: d */
        void m4137d(InnerSubscription<T> innerSubscription) {
            InnerSubscription<T>[] innerSubscriptionArr;
            InnerSubscription<T>[] innerSubscriptionArr2;
            do {
                innerSubscriptionArr = this.f16300i.get();
                int length = innerSubscriptionArr.length;
                if (length != 0) {
                    int i = -1;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        } else if (innerSubscriptionArr[i2] == innerSubscription) {
                            i = i2;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (i >= 0) {
                        if (length == 1) {
                            innerSubscriptionArr2 = f16295p;
                        } else {
                            innerSubscriptionArr2 = new InnerSubscription[length - 1];
                            System.arraycopy(innerSubscriptionArr, 0, innerSubscriptionArr2, 0, i);
                            System.arraycopy(innerSubscriptionArr, i + 1, innerSubscriptionArr2, i, (length - i) - 1);
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } while (!this.f16300i.compareAndSet(innerSubscriptionArr, innerSubscriptionArr2));
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f16300i.getAndSet(f16296q);
            this.f16297f.compareAndSet(this, null);
            SubscriptionHelper.cancel(this.f16298g);
        }

        /* renamed from: e */
        void m4136e(Throwable th) {
            InnerSubscription<T>[] andSet;
            for (InnerSubscription<T> innerSubscription : this.f16300i.getAndSet(f16296q)) {
                if (!innerSubscription.m4141a()) {
                    innerSubscription.f16292f.onError(th);
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f16300i.get() == f16296q;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16304m = true;
            m4138c();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16304m) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f16305n = th;
            this.f16304m = true;
            m4138c();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f16303l != 0 || this.f16302k.offer(t)) {
                m4138c();
            } else {
                onError(new MissingBackpressureException("Prefetch queue is full?!"));
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.setOnce(this.f16298g, subscription)) {
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int requestFusion = queueSubscription.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f16303l = requestFusion;
                        this.f16302k = queueSubscription;
                        this.f16304m = true;
                        m4138c();
                        return;
                    } else if (requestFusion == 2) {
                        this.f16303l = requestFusion;
                        this.f16302k = queueSubscription;
                        subscription.request(this.f16301j);
                        return;
                    }
                }
                this.f16302k = new SpscArrayQueue(this.f16301j);
                subscription.request(this.f16301j);
            }
        }
    }

    @Override // io.reactivex.flowables.ConnectableFlowable
    /* renamed from: C */
    public void mo4105C(Consumer<? super Disposable> consumer) {
        PublishConnection<T> publishConnection;
        PublishConnection<T> publishConnection2;
        do {
            publishConnection = this.f16291i.get();
            if (publishConnection != null) {
                publishConnection2 = publishConnection;
                if (!publishConnection.isDisposed()) {
                    break;
                }
            }
            publishConnection2 = new PublishConnection<>(this.f16291i, this.f16290h);
        } while (!this.f16291i.compareAndSet(publishConnection, publishConnection2));
        boolean z = true;
        if (publishConnection2.f16299h.get() || !publishConnection2.f16299h.compareAndSet(false, true)) {
            z = false;
        }
        try {
            consumer.accept(publishConnection2);
            if (z) {
                this.f16289g.mo5c(publishConnection2);
            }
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            throw ExceptionHelper.m3434e(th);
        }
    }

    @Override // io.reactivex.internal.disposables.ResettableConnectable
    /* renamed from: b */
    public void mo3733b(Disposable disposable) {
        this.f16291i.compareAndSet((PublishConnection) disposable, null);
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        PublishConnection<T> publishConnection;
        PublishConnection<T> publishConnection2;
        do {
            publishConnection = this.f16291i.get();
            publishConnection2 = publishConnection;
            if (publishConnection != null) {
                break;
            }
            publishConnection2 = new PublishConnection<>(this.f16291i, this.f16290h);
        } while (!this.f16291i.compareAndSet(publishConnection, publishConnection2));
        InnerSubscription<T> innerSubscription = new InnerSubscription<>(subscriber, publishConnection2);
        subscriber.onSubscribe(innerSubscription);
        if (!publishConnection2.m4140a(innerSubscription)) {
            Throwable th = publishConnection2.f16305n;
            if (th != null) {
                subscriber.onError(th);
            } else {
                subscriber.onComplete();
            }
        } else if (innerSubscription.m4141a()) {
            publishConnection2.m4137d(innerSubscription);
        } else {
            publishConnection2.m4138c();
        }
    }
}
