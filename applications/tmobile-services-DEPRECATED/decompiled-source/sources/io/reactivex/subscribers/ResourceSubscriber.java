package io.reactivex.subscribers;

import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.ListCompositeDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.EndConsumerHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subscribers/ResourceSubscriber.class */
public abstract class ResourceSubscriber<T> implements FlowableSubscriber<T>, Disposable {

    /* renamed from: f */
    private final AtomicReference<Subscription> f19785f = new AtomicReference<>();

    /* renamed from: g */
    private final ListCompositeDisposable f19786g = new ListCompositeDisposable();

    /* renamed from: h */
    private final AtomicLong f19787h = new AtomicLong();

    /* renamed from: a */
    protected void m3172a() {
        m3171b(Long.MAX_VALUE);
    }

    /* renamed from: b */
    protected final void m3171b(long j) {
        SubscriptionHelper.deferredRequest(this.f19785f, this.f19787h, j);
    }

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        if (SubscriptionHelper.cancel(this.f19785f)) {
            this.f19786g.dispose();
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this.f19785f.get() == SubscriptionHelper.CANCELLED;
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        if (EndConsumerHelper.m3441d(this.f19785f, subscription, ResourceSubscriber.class)) {
            long andSet = this.f19787h.getAndSet(0L);
            if (andSet != 0) {
                subscription.request(andSet);
            }
            m3172a();
        }
    }
}
