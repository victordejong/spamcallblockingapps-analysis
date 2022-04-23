package p660rx;

import p660rx.internal.util.SubscriptionList;
/* renamed from: rx.SingleSubscriber */
/* loaded from: classes3-dex2jar.jar:rx/SingleSubscriber.class */
public abstract class SingleSubscriber<T> implements Subscription {

    /* renamed from: cs */
    public final SubscriptionList f33462cs = new SubscriptionList();

    public final void add(Subscription subscription) {
        this.f33462cs.add(subscription);
    }

    @Override // p660rx.Subscription
    public final boolean isUnsubscribed() {
        return this.f33462cs.isUnsubscribed();
    }

    public abstract void onError(Throwable th);

    public abstract void onSuccess(T t);

    @Override // p660rx.Subscription
    public final void unsubscribe() {
        this.f33462cs.unsubscribe();
    }
}
