package io.reactivex.internal.operators.flowable;

import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscribers.SinglePostCompleteSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatWithSingle.class */
public final class FlowableConcatWithSingle<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final SingleSource<? extends T> f15699h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatWithSingle$ConcatWithSubscriber.class */
    static final class ConcatWithSubscriber<T> extends SinglePostCompleteSubscriber<T, T> implements SingleObserver<T> {
        private static final long serialVersionUID = -7346385463600070225L;

        /* renamed from: j */
        final AtomicReference<Disposable> f15700j = new AtomicReference<>();

        /* renamed from: k */
        SingleSource<? extends T> f15701k;

        ConcatWithSubscriber(Subscriber<? super T> subscriber, SingleSource<? extends T> singleSource) {
            super(subscriber);
            this.f15701k = singleSource;
        }

        @Override // io.reactivex.internal.subscribers.SinglePostCompleteSubscriber, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            DisposableHelper.dispose(this.f15700j);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f19392g = SubscriptionHelper.CANCELLED;
            SingleSource<? extends T> singleSource = this.f15701k;
            this.f15701k = null;
            singleSource.mo4457b(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f19391f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f19394i++;
            this.f19391f.onNext(t);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this.f15700j, disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            m3473a(t);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new ConcatWithSubscriber(subscriber, this.f15699h));
    }
}
