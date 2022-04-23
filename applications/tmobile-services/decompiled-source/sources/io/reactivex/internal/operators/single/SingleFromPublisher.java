package io.reactivex.internal.operators.single;

import io.reactivex.FlowableSubscriber;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.NoSuchElementException;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleFromPublisher.class */
public final class SingleFromPublisher<T> extends Single<T> {

    /* renamed from: f */
    final Publisher<? extends T> f19115f;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleFromPublisher$ToSingleObserver.class */
    static final class ToSingleObserver<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super T> f19116f;

        /* renamed from: g */
        Subscription f19117g;

        /* renamed from: h */
        T f19118h;

        /* renamed from: i */
        boolean f19119i;

        /* renamed from: j */
        volatile boolean f19120j;

        ToSingleObserver(SingleObserver<? super T> singleObserver) {
            this.f19116f = singleObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f19120j = true;
            this.f19117g.cancel();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f19120j;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f19119i) {
                this.f19119i = true;
                T t = this.f19118h;
                this.f19118h = null;
                if (t == null) {
                    this.f19116f.onError(new NoSuchElementException("The source Publisher is empty"));
                } else {
                    this.f19116f.onSuccess(t);
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f19119i) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f19119i = true;
            this.f19118h = null;
            this.f19116f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f19119i) {
                if (this.f19118h != null) {
                    this.f19117g.cancel();
                    this.f19119i = true;
                    this.f19118h = null;
                    this.f19116f.onError(new IndexOutOfBoundsException("Too many elements in the Publisher"));
                    return;
                }
                this.f19118h = t;
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f19117g, subscription)) {
                this.f19117g = subscription;
                this.f19116f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f19115f.mo5c(new ToSingleObserver(singleObserver));
    }
}
