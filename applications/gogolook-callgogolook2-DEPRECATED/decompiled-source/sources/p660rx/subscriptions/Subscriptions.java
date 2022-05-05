package p660rx.subscriptions;

import p660rx.Subscription;
import p660rx.functions.Action0;
/* renamed from: rx.subscriptions.Subscriptions */
/* loaded from: classes3-dex2jar.jar:rx/subscriptions/Subscriptions.class */
public final class Subscriptions {
    public static final Unsubscribed UNSUBSCRIBED = new Unsubscribed();

    /* renamed from: rx.subscriptions.Subscriptions$Unsubscribed */
    /* loaded from: classes3-dex2jar.jar:rx/subscriptions/Subscriptions$Unsubscribed.class */
    public static final class Unsubscribed implements Subscription {
        @Override // p660rx.Subscription
        public boolean isUnsubscribed() {
            return true;
        }

        @Override // p660rx.Subscription
        public void unsubscribe() {
        }
    }

    public static Subscription create(Action0 action0) {
        return BooleanSubscription.create(action0);
    }

    public static Subscription empty() {
        return BooleanSubscription.create();
    }

    public static Subscription unsubscribed() {
        return UNSUBSCRIBED;
    }
}
