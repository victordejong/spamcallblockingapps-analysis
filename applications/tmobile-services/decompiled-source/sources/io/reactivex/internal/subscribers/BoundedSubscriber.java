package io.reactivex.internal.subscribers;

import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.observers.LambdaConsumerIntrospection;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscribers/BoundedSubscriber.class */
public final class BoundedSubscriber<T> extends AtomicReference<Subscription> implements FlowableSubscriber<T>, Subscription, Disposable, LambdaConsumerIntrospection {
    private static final long serialVersionUID = -7251123623727029452L;

    /* renamed from: f */
    final Consumer<? super T> f19358f;

    /* renamed from: g */
    final Consumer<? super Throwable> f19359g;

    /* renamed from: h */
    final Action f19360h;

    /* renamed from: i */
    final Consumer<? super Subscription> f19361i;

    /* renamed from: j */
    int f19362j;

    /* renamed from: k */
    final int f19363k;

    @Override // org.reactivestreams.Subscription
    public void cancel() {
        SubscriptionHelper.cancel(this);
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        cancel();
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return get() == SubscriptionHelper.CANCELLED;
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        Subscription subscription = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (subscription != subscriptionHelper) {
            lazySet(subscriptionHelper);
            try {
                this.f19360h.run();
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                RxJavaPlugins.m3354t(th);
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        Subscription subscription = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (subscription != subscriptionHelper) {
            lazySet(subscriptionHelper);
            try {
                this.f19359g.accept(th);
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                RxJavaPlugins.m3354t(new CompositeException(th, th2));
            }
        } else {
            RxJavaPlugins.m3354t(th);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        if (!isDisposed()) {
            try {
                this.f19358f.accept(t);
                int i = this.f19362j + 1;
                if (i == this.f19363k) {
                    this.f19362j = 0;
                    get().request(this.f19363k);
                } else {
                    this.f19362j = i;
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                get().cancel();
                onError(th);
            }
        }
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        if (SubscriptionHelper.setOnce(this, subscription)) {
            try {
                this.f19361i.accept(this);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                subscription.cancel();
                onError(th);
            }
        }
    }

    @Override // org.reactivestreams.Subscription
    public void request(long j) {
        get().request(j);
    }
}
