package io.realm.internal.sync;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/sync/SubscriptionAction.class */
public class SubscriptionAction {
    private final String subscriptionName;
    public static final SubscriptionAction NO_SUBSCRIPTION = new SubscriptionAction(null);
    public static final SubscriptionAction ANONYMOUS_SUBSCRIPTION = new SubscriptionAction("");

    private SubscriptionAction(String str) {
        this.subscriptionName = str;
    }

    public static SubscriptionAction create(String str) {
        return new SubscriptionAction(str);
    }

    public String getName() {
        return this.subscriptionName;
    }

    public boolean shouldCreateSubscriptions() {
        return this.subscriptionName != null;
    }
}
