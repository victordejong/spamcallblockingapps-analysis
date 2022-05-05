package com.privacystar.core.data.model.helper;

import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.call.caller.CallerFactory;
import com.privacystar.core.data.model.ApprovedList;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import io.realm.Realm;
import io.realm.RealmResults;
import java.util.Date;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/ApprovedListRealm.class */
public class ApprovedListRealm {
    private static void addToApprovedListImpl(Realm realm, final String str) {
        realm.executeTransaction(new Realm.Transaction(str) { // from class: com.privacystar.core.data.model.helper.ApprovedListRealm$$Lambda$1
            private final String arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = str;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                ApprovedListRealm.lambda$addToApprovedListImpl$1$ApprovedListRealm(this.arg$1, realm2);
            }
        });
    }

    public static void clearApproveList(Realm realm) {
        realm.executeTransaction(ApprovedListRealm$$Lambda$2.$instance);
    }

    public static RealmResults<ApprovedList> getApprovedListEntries(Realm realm) {
        return realm.where(ApprovedList.class).findAll();
    }

    public static boolean isCallerApproved(Realm realm, Caller caller) {
        return isCallerApproved(realm, caller.getNumber());
    }

    public static boolean isCallerApproved(Realm realm, String str) {
        return 0 < realm.where(ApprovedList.class).equalTo("number", str).count();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$addToApprovedListImpl$1$ApprovedListRealm(String str, Realm realm) {
        try {
            ApprovedList approvedList = (ApprovedList) realm.createObject(ApprovedList.class, str);
            Date date = new Date();
            approvedList.setAdded(date);
            approvedList.setNumberLastCached(date);
            trackApprovedNumberAction(str, Event.ApprovedListAction.APPROVE);
        } catch (Exception e) {
            Timber.m23w(e, "Couldn't add number to approved list.", new Object[0]);
            trackApprovedNumberAction(str, Event.ApprovedListAction.FAIL);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$triggerItemUpdate$3$ApprovedListRealm(Realm realm, String str, Realm realm2) {
        ApprovedList retrieveApprovedEntry = retrieveApprovedEntry(realm, str);
        if (retrieveApprovedEntry != null) {
            retrieveApprovedEntry.setUpdateTrigger(retrieveApprovedEntry.getUpdateTrigger() + 1);
        }
    }

    private static void removeFromApprovedListImpl(Realm realm, final String str) {
        realm.executeTransaction(new Realm.Transaction(str) { // from class: com.privacystar.core.data.model.helper.ApprovedListRealm$$Lambda$0
            private final String arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = str;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                ApprovedListRealm.retrieveApprovedEntry(realm2, this.arg$1).deleteFromRealm();
            }
        });
        trackApprovedNumberAction(str, Event.ApprovedListAction.UNAPPROVE);
    }

    public static ApprovedList retrieveApprovedEntry(Realm realm, String str) {
        return (ApprovedList) realm.where(ApprovedList.class).equalTo("number", str).findFirst();
    }

    public static boolean setApproved(Realm realm, String str, boolean z) {
        boolean z2;
        ApprovedList retrieveApprovedEntry = retrieveApprovedEntry(realm, str);
        if (z) {
            if (retrieveApprovedEntry == null) {
                BlockListRealm.setBlockDisabled(realm, str);
                addToApprovedListImpl(realm, str);
                z2 = true;
            } else {
                Timber.m28v("Requested to add %s to Approve List but it was already there.", str);
                z2 = false;
            }
        } else if (retrieveApprovedEntry != null) {
            removeFromApprovedListImpl(realm, str);
            z2 = true;
        } else {
            Timber.m28v("Tried to unapprove number but it wasn't previously approved.", new Object[0]);
            z2 = false;
        }
        CallerFactory.getInstance().getCaller(str).updateInApprovedList();
        return z2;
    }

    private static void trackApprovedNumberAction(String str, Event.ApprovedListAction approvedListAction) {
        AnalyticsManager.INSTANCE.fire(new Event.ApprovedNumberEvent(str, approvedListAction));
    }

    public static void triggerItemUpdate(final Realm realm, final String str) {
        realm.executeTransaction(new Realm.Transaction(realm, str) { // from class: com.privacystar.core.data.model.helper.ApprovedListRealm$$Lambda$3
            private final Realm arg$1;
            private final String arg$2;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = realm;
                this.arg$2 = str;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                ApprovedListRealm.lambda$triggerItemUpdate$3$ApprovedListRealm(this.arg$1, this.arg$2, realm2);
            }
        });
    }
}
