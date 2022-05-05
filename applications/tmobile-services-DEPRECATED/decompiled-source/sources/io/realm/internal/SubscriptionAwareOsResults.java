package io.realm.internal;

import io.realm.RealmChangeListener;
import io.realm.internal.ObservableCollection;
import io.realm.internal.core.DescriptorOrdering;
import io.realm.internal.sync.OsSubscription;
import io.realm.internal.sync.SubscriptionAction;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/SubscriptionAwareOsResults.class */
public class SubscriptionAwareOsResults extends OsResults {

    /* renamed from: o */
    private boolean f20179o;

    /* renamed from: p */
    private OsSubscription f20180p;

    /* renamed from: n */
    private long f20178n = 0;

    /* renamed from: q */
    private boolean f20181q = false;

    /* renamed from: r */
    private boolean f20182r = true;

    SubscriptionAwareOsResults(OsSharedRealm osSharedRealm, Table table, long j, SubscriptionAction subscriptionAction) {
        super(osSharedRealm, table, j);
        this.f20180p = null;
        OsSubscription osSubscription = new OsSubscription(this, subscriptionAction);
        this.f20180p = osSubscription;
        osSubscription.m2547a(new RealmChangeListener<OsSubscription>() { // from class: io.realm.internal.SubscriptionAwareOsResults.1
            /* renamed from: b */
            public void mo2506a(OsSubscription osSubscription2) {
                SubscriptionAwareOsResults.this.f20179o = true;
            }
        });
        RealmNotifier realmNotifier = osSharedRealm.realmNotifier;
        realmNotifier.addBeginSendingNotificationsCallback(new Runnable() { // from class: io.realm.internal.SubscriptionAwareOsResults.2
            @Override // java.lang.Runnable
            public void run() {
                SubscriptionAwareOsResults.this.f20179o = false;
                SubscriptionAwareOsResults.this.f20181q = false;
                SubscriptionAwareOsResults.this.f20178n = 0L;
            }
        });
        realmNotifier.addFinishedSendingNotificationsCallback(new Runnable() { // from class: io.realm.internal.SubscriptionAwareOsResults.3
            @Override // java.lang.Runnable
            public void run() {
                if (SubscriptionAwareOsResults.this.f20181q || SubscriptionAwareOsResults.this.f20179o) {
                    SubscriptionAwareOsResults.this.m2673F();
                }
            }
        });
    }

    /* renamed from: E */
    public static SubscriptionAwareOsResults m2674E(OsSharedRealm osSharedRealm, TableQuery tableQuery, DescriptorOrdering descriptorOrdering, SubscriptionAction subscriptionAction) {
        tableQuery.m2603x();
        return new SubscriptionAwareOsResults(osSharedRealm, tableQuery.m2615l(), OsResults.nativeCreateResults(osSharedRealm.getNativePtr(), tableQuery.getNativePtr(), descriptorOrdering.getNativePtr()), subscriptionAction);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: F */
    public void m2673F() {
        OsSubscription osSubscription = this.f20179o ? this.f20180p : null;
        if (this.f20178n != 0 || osSubscription == null || this.f20182r || osSubscription.m2545c() == OsSubscription.SubscriptionState.ERROR || osSubscription.m2545c() == OsSubscription.SubscriptionState.COMPLETE) {
            OsCollectionChangeSet emptyLoadChangeSet = this.f20178n == 0 ? new EmptyLoadChangeSet(osSubscription, this.f20182r, true) : new OsCollectionChangeSet(this.f20178n, this.f20182r, osSubscription, true);
            if (!emptyLoadChangeSet.mo2799e() || !m2717o()) {
                this.f20150j = true;
                this.f20182r = false;
                this.f20152l.m2805c(new ObservableCollection.Callback(emptyLoadChangeSet));
            }
        }
    }

    @Override // io.realm.internal.OsResults, io.realm.internal.ObservableCollection
    public void notifyChangeListeners(long j) {
        this.f20181q = true;
        this.f20178n = j;
    }
}
