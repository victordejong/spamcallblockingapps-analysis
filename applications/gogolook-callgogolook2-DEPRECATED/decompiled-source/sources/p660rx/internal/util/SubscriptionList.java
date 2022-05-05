package p660rx.internal.util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import p660rx.Subscription;
import p660rx.exceptions.Exceptions;
/* renamed from: rx.internal.util.SubscriptionList */
/* loaded from: classes3-dex2jar.jar:rx/internal/util/SubscriptionList.class */
public final class SubscriptionList implements Subscription {
    public List<Subscription> subscriptions;
    public volatile boolean unsubscribed;

    public SubscriptionList() {
    }

    public SubscriptionList(Subscription subscription) {
        this.subscriptions = new LinkedList();
        this.subscriptions.add(subscription);
    }

    public SubscriptionList(Subscription... subscriptionArr) {
        this.subscriptions = new LinkedList(Arrays.asList(subscriptionArr));
    }

    public static void unsubscribeFromAll(Collection<Subscription> collection) {
        if (collection != null) {
            ArrayList arrayList = null;
            for (Subscription subscription : collection) {
                try {
                    subscription.unsubscribe();
                } catch (Throwable th) {
                    ArrayList arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(th);
                    arrayList = arrayList2;
                }
            }
            Exceptions.throwIfAny(arrayList);
        }
    }

    public void add(Subscription subscription) {
        if (!subscription.isUnsubscribed()) {
            if (!this.unsubscribed) {
                synchronized (this) {
                    if (!this.unsubscribed) {
                        List<Subscription> list = this.subscriptions;
                        List<Subscription> list2 = list;
                        if (list == null) {
                            list2 = new LinkedList<>();
                            this.subscriptions = list2;
                        }
                        list2.add(subscription);
                        return;
                    }
                }
            }
            subscription.unsubscribe();
        }
    }

    @Override // p660rx.Subscription
    public boolean isUnsubscribed() {
        return this.unsubscribed;
    }

    public void remove(Subscription subscription) {
        if (!this.unsubscribed) {
            synchronized (this) {
                List<Subscription> list = this.subscriptions;
                if (!this.unsubscribed && list != null) {
                    boolean remove = list.remove(subscription);
                    if (remove) {
                        subscription.unsubscribe();
                    }
                }
            }
        }
    }

    @Override // p660rx.Subscription
    public void unsubscribe() {
        if (!this.unsubscribed) {
            synchronized (this) {
                if (!this.unsubscribed) {
                    this.unsubscribed = true;
                    List<Subscription> list = this.subscriptions;
                    this.subscriptions = null;
                    unsubscribeFromAll(list);
                }
            }
        }
    }
}
