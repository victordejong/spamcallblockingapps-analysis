package io.reactivex.internal.subscriptions;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscriptions/AsyncSubscription.class */
public final class AsyncSubscription extends AtomicLong implements AbstractC10434d, AbstractC9861b {
    public static final long serialVersionUID = 7028635084060361255L;
    public final AtomicReference<AbstractC10434d> actual;
    public final AtomicReference<AbstractC9861b> resource;

    public AsyncSubscription() {
        this.resource = new AtomicReference<>();
        this.actual = new AtomicReference<>();
    }

    public AsyncSubscription(AbstractC9861b bVar) {
        this();
        this.resource.lazySet(bVar);
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        dispose();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        SubscriptionHelper.cancel(this.actual);
        DisposableHelper.dispose(this.resource);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.actual.get() == SubscriptionHelper.CANCELLED;
    }

    public boolean replaceResource(AbstractC9861b bVar) {
        return DisposableHelper.replace(this.resource, bVar);
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        SubscriptionHelper.deferredRequest(this.actual, this, j);
    }

    public boolean setResource(AbstractC9861b bVar) {
        return DisposableHelper.set(this.resource, bVar);
    }

    public void setSubscription(AbstractC10434d dVar) {
        SubscriptionHelper.deferredSetOnce(this.actual, this, dVar);
    }
}
