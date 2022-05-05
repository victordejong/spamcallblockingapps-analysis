package p660rx.internal.subscriptions;

import p660rx.Subscription;
/* renamed from: rx.internal.subscriptions.Unsubscribed */
/* loaded from: classes3-dex2jar.jar:rx/internal/subscriptions/Unsubscribed.class */
public enum Unsubscribed implements Subscription {
    INSTANCE;

    @Override // p660rx.Subscription
    public boolean isUnsubscribed() {
        return true;
    }

    @Override // p660rx.Subscription
    public void unsubscribe() {
    }
}
