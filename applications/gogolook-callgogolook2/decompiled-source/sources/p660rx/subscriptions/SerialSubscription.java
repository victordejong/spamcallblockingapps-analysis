package p660rx.subscriptions;

import p660rx.Subscription;
import p660rx.internal.subscriptions.SequentialSubscription;
/* renamed from: rx.subscriptions.SerialSubscription */
/* loaded from: classes3-dex2jar.jar:rx/subscriptions/SerialSubscription.class */
public final class SerialSubscription implements Subscription {
    public final SequentialSubscription state = new SequentialSubscription();

    @Override // p660rx.Subscription
    public boolean isUnsubscribed() {
        return this.state.isUnsubscribed();
    }

    public void set(Subscription subscription) {
        if (subscription != null) {
            this.state.update(subscription);
            return;
        }
        throw new IllegalArgumentException("Subscription can not be null");
    }

    @Override // p660rx.Subscription
    public void unsubscribe() {
        this.state.unsubscribe();
    }
}
