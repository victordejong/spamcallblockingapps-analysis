package io.realm.internal;

import io.realm.RealmChangeListener;
import io.realm.internal.ObservableCollection;
import io.realm.internal.core.DescriptorOrdering;
import io.realm.internal.sync.OsSubscription;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/SubscriptionAwareOsResults.class */
public class SubscriptionAwareOsResults extends OsResults {
    private OsSubscription subscription;
    private boolean subscriptionChanged;
    private long delayedNotificationPtr = 0;
    private boolean collectionChanged = false;
    private boolean firstCallback = true;

    SubscriptionAwareOsResults(OsSharedRealm osSharedRealm, Table table, long j, String str) {
        super(osSharedRealm, table, j);
        this.subscription = null;
        this.subscription = new OsSubscription(this, str);
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

    public static SubscriptionAwareOsResults createFromQuery(OsSharedRealm osSharedRealm, TableQuery tableQuery, DescriptorOrdering descriptorOrdering, String str) {
        tableQuery.validateQuery();
        return new SubscriptionAwareOsResults(osSharedRealm, tableQuery.getTable(), nativeCreateResults(osSharedRealm.getNativePtr(), tableQuery.getNativePtr(), descriptorOrdering.getNativePtr()), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void triggerDelayedChangeListener() {
        OsSubscription osSubscription = this.subscriptionChanged ? this.subscription : null;
        if (this.delayedNotificationPtr != 0 || osSubscription == null || this.firstCallback || osSubscription.getState() == OsSubscription.SubscriptionState.ERROR || osSubscription.getState() == OsSubscription.SubscriptionState.COMPLETE) {
            OsCollectionChangeSet emptyLoadChangeSet = this.delayedNotificationPtr == 0 ? new EmptyLoadChangeSet(osSubscription, this.firstCallback, true) : new OsCollectionChangeSet(this.delayedNotificationPtr, this.firstCallback, osSubscription, true);
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
