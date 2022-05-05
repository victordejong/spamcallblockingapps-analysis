package io.reactivex.internal.operators.flowable;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscribers.SinglePostCompleteSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatWithMaybe.class */
public final class FlowableConcatWithMaybe<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final MaybeSource<? extends T> f15695h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatWithMaybe$ConcatWithSubscriber.class */
    static final class ConcatWithSubscriber<T> extends SinglePostCompleteSubscriber<T, T> implements MaybeObserver<T> {
        private static final long serialVersionUID = -7346385463600070225L;

        /* renamed from: j */
        final AtomicReference<Disposable> f15696j = new AtomicReference<>();

        /* renamed from: k */
        MaybeSource<? extends T> f15697k;

        /* renamed from: l */
        boolean f15698l;

        ConcatWithSubscriber(Subscriber<? super T> subscriber, MaybeSource<? extends T> maybeSource) {
            super(subscriber);
            this.f15697k = maybeSource;
        }

        @Override // io.reactivex.internal.subscribers.SinglePostCompleteSubscriber, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            DisposableHelper.dispose(this.f15696j);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f15698l) {
                this.f19391f.onComplete();
                return;
            }
            this.f15698l = true;
            this.f19392g = SubscriptionHelper.CANCELLED;
            MaybeSource<? extends T> maybeSource = this.f15697k;
            this.f15697k = null;
            maybeSource.mo4485b(this);
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

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this.f15696j, disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            m3473a(t);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new ConcatWithSubscriber(subscriber, this.f15695h));
    }
}
