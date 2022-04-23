package io.reactivex.internal.operators.flowable;

import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatWithCompletable.class */
public final class FlowableConcatWithCompletable<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final CompletableSource f15690h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatWithCompletable$ConcatWithSubscriber.class */
    static final class ConcatWithSubscriber<T> extends AtomicReference<Disposable> implements FlowableSubscriber<T>, CompletableObserver, Subscription {
        private static final long serialVersionUID = -7346385463600070225L;

        /* renamed from: f */
        final Subscriber<? super T> f15691f;

        /* renamed from: g */
        Subscription f15692g;

        /* renamed from: h */
        CompletableSource f15693h;

        /* renamed from: i */
        boolean f15694i;

        ConcatWithSubscriber(Subscriber<? super T> subscriber, CompletableSource completableSource) {
            this.f15691f = subscriber;
            this.f15693h = completableSource;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f15692g.cancel();
            DisposableHelper.dispose(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f15694i) {
                this.f15691f.onComplete();
                return;
            }
            this.f15694i = true;
            this.f15692g = SubscriptionHelper.CANCELLED;
            CompletableSource completableSource = this.f15693h;
            this.f15693h = null;
            completableSource.mo4514b(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f15691f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f15691f.onNext(t);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15692g, subscription)) {
                this.f15692g = subscription;
                this.f15691f.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f15692g.request(j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new ConcatWithSubscriber(subscriber, this.f15690h));
    }
}
