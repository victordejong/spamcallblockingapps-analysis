package zendesk.suas;

import java.util.Arrays;
import java.util.Collection;
/* loaded from: classes3-dex2jar.jar:zendesk/suas/CombinedSubscription.class */
public class CombinedSubscription implements Subscription {
    private final Collection<Subscription> subscriptions;

    private CombinedSubscription(Collection<Subscription> collection) {
        this.subscriptions = collection;
    }

    public static Subscription from(Collection<Subscription> collection) {
        return new CombinedSubscription(collection);
    }

    public static Subscription from(Subscription... subscriptionArr) {
        return new CombinedSubscription(Arrays.asList(subscriptionArr));
    }

    @Override // zendesk.suas.Subscription
    public void addListener() {
        for (Subscription subscription : this.subscriptions) {
            subscription.addListener();
        }
    }

    @Override // zendesk.suas.Subscription
    public void informWithCurrentState() {
        for (Subscription subscription : this.subscriptions) {
            subscription.informWithCurrentState();
        }
    }

    @Override // zendesk.suas.Subscription
    public void removeListener() {
        for (Subscription subscription : this.subscriptions) {
            subscription.removeListener();
        }
    }
}
