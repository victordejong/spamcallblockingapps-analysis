package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscribers.QueueDrainSubscriber;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.QueueDrainHelper;
import io.reactivex.subscribers.DisposableSubscriber;
import io.reactivex.subscribers.SerializedSubscriber;
import java.util.Collection;
import java.util.concurrent.Callable;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBufferExactBoundary.class */
public final class FlowableBufferExactBoundary<T, U extends Collection<? super T>, B> extends AbstractFlowableWithUpstream<T, U> {

    /* renamed from: h */
    final Publisher<B> f15533h;

    /* renamed from: i */
    final Callable<U> f15534i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBufferExactBoundary$BufferBoundarySubscriber.class */
    static final class BufferBoundarySubscriber<T, U extends Collection<? super T>, B> extends DisposableSubscriber<B> {

        /* renamed from: g */
        final BufferExactBoundarySubscriber<T, U, B> f15535g;

        BufferBoundarySubscriber(BufferExactBoundarySubscriber<T, U, B> bufferExactBoundarySubscriber) {
            this.f15535g = bufferExactBoundarySubscriber;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f15535g.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f15535g.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(B b) {
            this.f15535g.m4299n();
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBufferExactBoundary$BufferExactBoundarySubscriber.class */
    static final class BufferExactBoundarySubscriber<T, U extends Collection<? super T>, B> extends QueueDrainSubscriber<T, U, U> implements FlowableSubscriber<T>, Subscription, Disposable {

        /* renamed from: m */
        final Callable<U> f15536m;

        /* renamed from: n */
        final Publisher<B> f15537n;

        /* renamed from: o */
        Subscription f15538o;

        /* renamed from: p */
        Disposable f15539p;

        /* renamed from: q */
        U f15540q;

        BufferExactBoundarySubscriber(Subscriber<? super U> subscriber, Callable<U> callable, Publisher<B> publisher) {
            super(subscriber, new MpscLinkedQueue());
            this.f15536m = callable;
            this.f15537n = publisher;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!this.f19386j) {
                this.f19386j = true;
                this.f15539p.dispose();
                this.f15538o.cancel();
                if (m3478h()) {
                    this.f19385i.clear();
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            cancel();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f19386j;
        }

        /* renamed from: m */
        public boolean mo3407f(Subscriber<? super U> subscriber, U u) {
            this.f19384h.onNext(u);
            return true;
        }

        /* renamed from: n */
        void m4299n() {
            try {
                U call = this.f15536m.call();
                ObjectHelper.m4363e(call, "The buffer supplied is null");
                U u = call;
                synchronized (this) {
                    U u2 = this.f15540q;
                    if (u2 != null) {
                        this.f15540q = u;
                        m3476j(u2, false, this);
                    }
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                cancel();
                this.f19384h.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            synchronized (this) {
                U u = this.f15540q;
                if (u != null) {
                    this.f15540q = null;
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
                U u = this.f15540q;
                if (u != null) {
                    u.add(t);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15538o, subscription)) {
                this.f15538o = subscription;
                try {
                    U call = this.f15536m.call();
                    ObjectHelper.m4363e(call, "The buffer supplied is null");
                    this.f15540q = call;
                    BufferBoundarySubscriber bufferBoundarySubscriber = new BufferBoundarySubscriber(this);
                    this.f15539p = bufferBoundarySubscriber;
                    this.f19384h.onSubscribe(this);
                    if (!this.f19386j) {
                        subscription.request(Long.MAX_VALUE);
                        this.f15537n.mo5c(bufferBoundarySubscriber);
                    }
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f19386j = true;
                    subscription.cancel();
                    EmptySubscription.error(th, this.f19384h);
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
        this.f15411g.m4493v(new BufferExactBoundarySubscriber(new SerializedSubscriber(subscriber), this.f15534i, this.f15533h));
    }
}
