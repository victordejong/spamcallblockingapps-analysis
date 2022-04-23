package io.reactivex.internal.subscriptions;

import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscriptions/AsyncSubscription.class */
public final class AsyncSubscription extends AtomicLong implements Subscription, Disposable {
    private static final long serialVersionUID = 7028635084060361255L;

    /* renamed from: g */
    final AtomicReference<Disposable> f19404g = new AtomicReference<>();

    /* renamed from: f */
    final AtomicReference<Subscription> f19403f = new AtomicReference<>();

    @Override // org.reactivestreams.Subscription
    public void cancel() {
        dispose();
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        SubscriptionHelper.cancel(this.f19403f);
        DisposableHelper.dispose(this.f19404g);
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f19403f.get() == SubscriptionHelper.CANCELLED;
    }

    @Override // org.reactivestreams.Subscription
    public void request(long j) {
        SubscriptionHelper.deferredRequest(this.f19403f, this, j);
    }
}
