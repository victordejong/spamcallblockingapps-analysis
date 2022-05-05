package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscribers.QueueDrainSubscriber;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.QueueDrainHelper;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.subscribers.DisposableSubscriber;
import io.reactivex.subscribers.SerializedSubscriber;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBufferBoundarySupplier.class */
public final class FlowableBufferBoundarySupplier<T, U extends Collection<? super T>, B> extends AbstractFlowableWithUpstream<T, U> {

    /* renamed from: h */
    final Callable<? extends Publisher<B>> f15524h;

    /* renamed from: i */
    final Callable<U> f15525i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBufferBoundarySupplier$BufferBoundarySubscriber.class */
    public static final class BufferBoundarySubscriber<T, U extends Collection<? super T>, B> extends DisposableSubscriber<B> {

        /* renamed from: g */
        final BufferBoundarySupplierSubscriber<T, U, B> f15526g;

        /* renamed from: h */
        boolean f15527h;

        BufferBoundarySubscriber(BufferBoundarySupplierSubscriber<T, U, B> bufferBoundarySupplierSubscriber) {
            this.f15526g = bufferBoundarySupplierSubscriber;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f15527h) {
                this.f15527h = true;
                this.f15526g.m4301o();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f15527h) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f15527h = true;
            this.f15526g.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(B b) {
            if (!this.f15527h) {
                this.f15527h = true;
                m3174a();
                this.f15526g.m4301o();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBufferBoundarySupplier$BufferBoundarySupplierSubscriber.class */
    static final class BufferBoundarySupplierSubscriber<T, U extends Collection<? super T>, B> extends QueueDrainSubscriber<T, U, U> implements FlowableSubscriber<T>, Subscription, Disposable {

        /* renamed from: m */
        final Callable<U> f15528m;

        /* renamed from: n */
        final Callable<? extends Publisher<B>> f15529n;

        /* renamed from: o */
        Subscription f15530o;

        /* renamed from: p */
        final AtomicReference<Disposable> f15531p = new AtomicReference<>();

        /* renamed from: q */
        U f15532q;

        BufferBoundarySupplierSubscriber(Subscriber<? super U> subscriber, Callable<U> callable, Callable<? extends Publisher<B>> callable2) {
            super(subscriber, new MpscLinkedQueue());
            this.f15528m = callable;
            this.f15529n = callable2;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!this.f19386j) {
                this.f19386j = true;
                this.f15530o.cancel();
                m4302n();
                if (m3478h()) {
                    this.f19385i.clear();
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f15530o.cancel();
            m4302n();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15531p.get() == DisposableHelper.DISPOSED;
        }

        /* renamed from: m */
        public boolean mo3407f(Subscriber<? super U> subscriber, U u) {
            this.f19384h.onNext(u);
            return true;
        }

        /* renamed from: n */
        void m4302n() {
            DisposableHelper.dispose(this.f15531p);
        }

        /* renamed from: o */
        void m4301o() {
            try {
                U call = this.f15528m.call();
                ObjectHelper.m4363e(call, "The buffer supplied is null");
                U u = call;
                try {
                    Object call2 = this.f15529n.call();
                    ObjectHelper.m4363e(call2, "The boundary publisher supplied is null");
                    Publisher publisher = (Publisher) call2;
                    BufferBoundarySubscriber bufferBoundarySubscriber = new BufferBoundarySubscriber(this);
                    if (DisposableHelper.replace(this.f15531p, bufferBoundarySubscriber)) {
                        synchronized (this) {
                            U u2 = this.f15532q;
                            if (u2 != null) {
                                this.f15532q = u;
                                publisher.mo5c(bufferBoundarySubscriber);
                                m3476j(u2, false, this);
                            }
                        }
                    }
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f19386j = true;
                    this.f15530o.cancel();
                    this.f19384h.onError(th);
                }
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                cancel();
                this.f19384h.onError(th2);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            synchronized (this) {
                U u = this.f15532q;
                if (u != null) {
                    this.f15532q = null;
                    this.f19385i.offer(u);
                    this.f19387k = true;
                    if (m3478h()) {
                        QueueDrainHelper.m3401e(this.f19385i, this.f19384h, false, this, this);
                    }
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            cancel();
            this.f19384h.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            synchronized (this) {
                U u = this.f15532q;
                if (u != null) {
                    u.add(t);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15530o, subscription)) {
                this.f15530o = subscription;
                Subscriber<? super V> subscriber = this.f19384h;
                try {
                    U call = this.f15528m.call();
                    ObjectHelper.m4363e(call, "The buffer supplied is null");
                    this.f15532q = call;
                    try {
                        Object call2 = this.f15529n.call();
                        ObjectHelper.m4363e(call2, "The boundary publisher supplied is null");
                        Publisher publisher = (Publisher) call2;
                        BufferBoundarySubscriber bufferBoundarySubscriber = new BufferBoundarySubscriber(this);
                        this.f15531p.set(bufferBoundarySubscriber);
                        subscriber.onSubscribe(this);
                        if (!this.f19386j) {
                            subscription.request(Long.MAX_VALUE);
                            publisher.mo5c(bufferBoundarySubscriber);
                        }
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        this.f19386j = true;
                        subscription.cancel();
                        EmptySubscription.error(th, subscriber);
                    }
                } catch (Throwable th2) {
                    Exceptions.m4428b(th2);
                    this.f19386j = true;
                    subscription.cancel();
                    EmptySubscription.error(th2, subscriber);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            m3474l(j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super U> subscriber) {
        this.f15411g.m4493v(new BufferBoundarySupplierSubscriber(new SerializedSubscriber(subscriber), this.f15525i, this.f15524h));
    }
}
