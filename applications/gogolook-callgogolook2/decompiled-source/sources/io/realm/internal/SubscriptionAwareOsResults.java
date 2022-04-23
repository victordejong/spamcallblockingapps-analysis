package io.realm.internal;

import io.realm.RealmChangeListener;
import io.realm.internal.ObservableCollection;
import io.realm.internal.core.DescriptorOrdering;
import io.realm.internal.sync.OsSubscription;
import io.realm.internal.sync.SubscriptionAction;
/* loaded from: classes3-dex2jar.jar:io/realm/internal/SubscriptionAwareOsResults.class */
public class SubscriptionAwareOsResults extends OsResults {
    public OsSubscription subscription;
    public boolean subscriptionChanged;
    public long delayedNotificationPtr = 0;
    public boolean collectionChanged = false;
    public boolean firstCallback = true;

    public SubscriptionAwareOsResults(OsSharedRealm osSharedRealm, Table table, long j, SubscriptionAction subscriptionAction) {
        super(osSharedRealm, table, j);
        this.subscription = null;
        this.subscription = new OsSubscription(this, subscriptionAction);
        this.subscription.addChangeListener(new RealmChangeListener<OsSubscription>() { // from class: io.realm.internal.SubscriptionAwareOsResults.1
            public void onChange(OsSubscription osSubscription) {
                SubscriptionAwareOsResults.this.subscriptionChanged = true;
            }
        });
        RealmNotifier realmNotifier = osSharedRealm.realmNotifier;
        realmNotifier.addBeginSendingNotificationsCallback(new Runnable() { // from class: io.realm.internal.SubscriptionAwareOsResults.2
            @Override // java.lang.Runnable
            public void run() {
                SubscriptionAwareOsResults.this.subscriptionChanged = false;
                SubscriptionAwareOsResults.this.collectionChanged = false;
                SubscriptionAwareOsResults.this.delayedNotificationPtr = 0L;
            }
        });
        realmNotifier.addFinishedSendingNotificationsCallback(new Runnable() { // from class: io.realm.internal.SubscriptionAwareOsResults.3
            @Override // java.lang.Runnable
            public void run() {
                if (SubscriptionAwareOsResults.this.collectionChanged || SubscriptionAwareOsResults.this.subscriptionChanged) {
                    SubscriptionAwareOsResults.this.triggerDelayedChangeListener();
                }
            }
        });
    }

    public static SubscriptionAwareOsResults createFromQuery(OsSharedRealm osSharedRealm, TableQuery tableQuery, DescriptorOrdering descriptorOrdering, SubscriptionAction subscriptionAction) {
        tableQuery.validateQuery();
        return new SubscriptionAwareOsResults(osSharedRealm, tableQuery.getTable(), OsResults.nativeCreateResults(osSharedRealm.getNativePtr(), tableQuery.getNativePtr(), descriptorOrdering.getNativePtr()), subscriptionAction);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void triggerDelayedChangeListener() {
        OsSubscription osSubscription = this.subscriptionChanged ? this.subscription : null;
        if (this.delayedNotificationPtr != 0 || osSubscription == null || this.firstCallback || osSubscription.getState() == OsSubscription.SubscriptionState.ERROR || osSubscription.getState() == OsSubscription.SubscriptionState.COMPLETE) {
            long j = this.delayedNotificationPtr;
            OsCollectionChangeSet emptyLoadChangeSet = j == 0 ? new EmptyLoadChangeSet(osSubscription, this.firstCallback, true) : new OsCollectionChangeSet(j, this.firstCallback, osSubscription, true);
            if (!emptyLoadChangeSet.isEmpty() || !isLoaded()) {
                this.loaded = true;
                this.firstCallback = false;
                this.observerPairs.foreach(new ObservableCollection.Callback(emptyLoadChangeSet));
            }
        }
    }

    @Override // io.realm.internal.OsResults, io.realm.internal.ObservableCollection
    public void notifyChangeListeners(long j) {
        this.collectionChanged = true;
        this.delayedNotificationPtr = j;
    }
}
