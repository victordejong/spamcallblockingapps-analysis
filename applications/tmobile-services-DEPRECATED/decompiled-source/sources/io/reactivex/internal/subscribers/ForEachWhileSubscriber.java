package io.reactivex.internal.subscribers;

import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscribers/ForEachWhileSubscriber.class */
public final class ForEachWhileSubscriber<T> extends AtomicReference<Subscription> implements FlowableSubscriber<T>, Disposable {
    private static final long serialVersionUID = -4403180040475402120L;

    /* renamed from: f */
    final Predicate<? super T> f19366f;

    /* renamed from: g */
    final Consumer<? super Throwable> f19367g;

    /* renamed from: h */
    final Action f19368h;

    /* renamed from: i */
    boolean f19369i;

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        SubscriptionHelper.cancel(this);
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return get() == SubscriptionHelper.CANCELLED;
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (!this.f19369i) {
            this.f19369i = true;
            try {
                this.f19368h.run();
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                RxJavaPlugins.m3354t(th);
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        if (this.f19369i) {
            RxJavaPlugins.m3354t(th);
            return;
        }
        this.f19369i = true;
        try {
            this.f19367g.accept(th);
        } catch (Throwable th2) {
            Exceptions.m4428b(th2);
            RxJavaPlugins.m3354t(new CompositeException(th, th2));
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        if (!this.f19369i) {
            try {
                if (!this.f19366f.mo3191a(t)) {
                    dispose();
                    onComplete();
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                dispose();
                onError(th);
            }
        }
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        SubscriptionHelper.setOnce(this, subscription, Long.MAX_VALUE);
    }
}
