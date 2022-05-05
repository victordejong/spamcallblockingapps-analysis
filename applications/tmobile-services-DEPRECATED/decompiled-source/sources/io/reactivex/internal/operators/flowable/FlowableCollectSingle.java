package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiConsumer;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.FuseToFlowable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCollectSingle.class */
public final class FlowableCollectSingle<T, U> extends Single<U> implements FuseToFlowable<U> {

    /* renamed from: f */
    final Flowable<T> f15600f;

    /* renamed from: g */
    final Callable<? extends U> f15601g;

    /* renamed from: h */
    final BiConsumer<? super U, ? super T> f15602h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCollectSingle$CollectSubscriber.class */
    static final class CollectSubscriber<T, U> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super U> f15603f;

        /* renamed from: g */
        final BiConsumer<? super U, ? super T> f15604g;

        /* renamed from: h */
        final U f15605h;

        /* renamed from: i */
        Subscription f15606i;

        /* renamed from: j */
        boolean f15607j;

        CollectSubscriber(SingleObserver<? super U> singleObserver, U u, BiConsumer<? super U, ? super T> biConsumer) {
            this.f15603f = singleObserver;
            this.f15604g = biConsumer;
            this.f15605h = u;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f15606i.cancel();
            this.f15606i = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15606i == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f15607j) {
                this.f15607j = true;
                this.f15606i = SubscriptionHelper.CANCELLED;
                this.f15603f.onSuccess((U) this.f15605h);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f15607j) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f15607j = true;
            this.f15606i = SubscriptionHelper.CANCELLED;
            this.f15603f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f15607j) {
                try {
                    this.f15604g.mo4369a((U) this.f15605h, t);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f15606i.cancel();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15606i, subscription)) {
                this.f15606i = subscription;
                this.f15603f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super U> singleObserver) {
        try {
            Object call = this.f15601g.call();
            ObjectHelper.m4363e(call, "The initialSupplier returned a null value");
            this.f15600f.m4493v(new CollectSubscriber(singleObserver, call, this.f15602h));
        } catch (Throwable th) {
            EmptyDisposable.error(th, singleObserver);
        }
    }
}
