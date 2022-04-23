package io.realm.internal.sync;
/* loaded from: classes3-dex2jar.jar:io/realm/internal/sync/SubscriptionAction.class */
public class SubscriptionAction {
    public final String subscriptionName;
    public final long timeToLiveMs;
    public final boolean update;
    public static final SubscriptionAction NO_SUBSCRIPTION = new SubscriptionAction(null, 0, false);
    public static final SubscriptionAction ANONYMOUS_SUBSCRIPTION = new SubscriptionAction("", Long.MAX_VALUE, false);

    public SubscriptionAction(String str, long j, boolean z) {
        this.subscriptionName = str;
        this.timeToLiveMs = j;
        this.update = z;
    }

    public static SubscriptionAction create(String str, long j) {
        return new SubscriptionAction(str, j, false);
    }

    public static SubscriptionAction update(String str, long j) {
        return new SubscriptionAction(str, j, true);
    }

    public String getName() {
        return this.subscriptionName;
    }

    public long getTimeToLiveMs() {
        return this.timeToLiveMs;
    }

    public boolean isUpdate() {
        return this.update;
    }

    public boolean shouldCreateSubscriptions() {
        return this.subscriptionName != null;
    }
}
