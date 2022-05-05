package com.privacystar.core.data.model.helper;

import com.privacystar.core.PSApplication;
import com.privacystar.core.data.blocking.BlockDataCollator;
import com.privacystar.core.data.model.GroupBlock;
import com.privacystar.core.data.model.Operation;
import com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract;
import com.privacystar.core.service.blocking.CallBlockingUtil;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmResults;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/GroupBlockRealm.class */
public class GroupBlockRealm {
    private static final String BLOCK_ACTIVE_FIELD = "blockActive";
    private static final String NUMBER_FIELD = "number";

    public static void addGroupBlocking(Realm realm, String str) {
        addGroupBlocking(realm, str, null);
    }

    public static void addGroupBlocking(Realm realm, String str, BasicSettingsContract.OnAddBlockGroupCompleteListener onAddBlockGroupCompleteListener) {
        String appendAsterisk = appendAsterisk(str);
        if (retrieveBlockEntry(realm, appendAsterisk) != null) {
            updateGroupBlocking(realm, true, appendAsterisk, onAddBlockGroupCompleteListener);
        } else {
            putGroupBlocking(realm, appendAsterisk, onAddBlockGroupCompleteListener);
        }
    }

    private static String appendAsterisk(String str) {
        return str.replace("*", "") + "*";
    }

    public static RealmResults<GroupBlock> getAllBlockedGroups(Realm realm) {
        return realm.where(GroupBlock.class).equalTo("blockActive", (Boolean) true).findAll();
    }

    public static RealmResults<GroupBlock> getBlockListEntries(Realm realm) {
        return realm.where(GroupBlock.class).findAll();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$putGroupBlocking$2$GroupBlockRealm(String str, Realm realm) {
        GroupBlock groupBlock = (GroupBlock) realm.createObject(GroupBlock.class, str);
        groupBlock.setBlockActive(true);
        groupBlock.setBlockOffline(true);
        groupBlock.setOperation((Operation) realm.copyToRealm((Realm) BlockDataCollator.eventControlFromGroupListEntry(groupBlock), new ImportFlag[0]));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$putGroupBlocking$3$GroupBlockRealm(BasicSettingsContract.OnAddBlockGroupCompleteListener onAddBlockGroupCompleteListener) {
        if (onAddBlockGroupCompleteListener != null) {
            onAddBlockGroupCompleteListener.onAddBlockGroupComplete();
        }
        CallBlockingUtil.setDataChanged(PSApplication.context());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$setBlockDisabled$4$GroupBlockRealm(GroupBlock groupBlock, boolean z, Realm realm) {
        groupBlock.setBlockActive(false);
        if (z) {
            groupBlock.getOperation().deleteFromRealm();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$updateGroupBlocking$0$GroupBlockRealm(String str, boolean z, Realm realm) {
        GroupBlock retrieveBlockEntry = retrieveBlockEntry(realm, str);
        retrieveBlockEntry.setBlockActive(z);
        retrieveBlockEntry.setBlockOffline(z);
        Operation eventControlFromNumber = EventControlRealm.getEventControlFromNumber(realm, retrieveBlockEntry.getNumber());
        Operation operation = eventControlFromNumber;
        if (eventControlFromNumber == null) {
            operation = (Operation) realm.createObject(Operation.class);
            BlockDataCollator.eventControlFromGroupListEntry(retrieveBlockEntry, operation);
            realm.copyToRealm((Realm) operation, new ImportFlag[0]);
        }
        retrieveBlockEntry.setOperation(operation);
        CallBlockingUtil.setDataChanged(PSApplication.context());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$updateGroupBlocking$1$GroupBlockRealm(BasicSettingsContract.OnAddBlockGroupCompleteListener onAddBlockGroupCompleteListener) {
        if (onAddBlockGroupCompleteListener != null) {
            onAddBlockGroupCompleteListener.onAddBlockGroupComplete();
        }
    }

    private static void putGroupBlocking(Realm realm, final String str, final BasicSettingsContract.OnAddBlockGroupCompleteListener onAddBlockGroupCompleteListener) {
        realm.executeTransactionAsync(new Realm.Transaction(str) { // from class: com.privacystar.core.data.model.helper.GroupBlockRealm$$Lambda$2
            private final String arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = str;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                GroupBlockRealm.lambda$putGroupBlocking$2$GroupBlockRealm(this.arg$1, realm2);
            }
        }, new Realm.Transaction.OnSuccess(onAddBlockGroupCompleteListener) { // from class: com.privacystar.core.data.model.helper.GroupBlockRealm$$Lambda$3
            private final BasicSettingsContract.OnAddBlockGroupCompleteListener arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = onAddBlockGroupCompleteListener;
            }

            @Override // io.realm.Realm.Transaction.OnSuccess
            public void onSuccess() {
                GroupBlockRealm.lambda$putGroupBlocking$3$GroupBlockRealm(this.arg$1);
            }
        });
    }

    public static GroupBlock retrieveBlockEntry(Realm realm, String str) {
        return (GroupBlock) realm.where(GroupBlock.class).equalTo("number", appendAsterisk(str)).findFirst();
    }

    public static void setBlockDisabled(Realm realm, final GroupBlock groupBlock) {
        final boolean z = false;
        if (groupBlock == null) {
            Timber.m37d("Error unblocking record, caller was never blocked.", new Object[0]);
            return;
        }
        if (groupBlock.getOperation() != null) {
            z = true;
        }
        realm.executeTransaction(new Realm.Transaction(groupBlock, z) { // from class: com.privacystar.core.data.model.helper.GroupBlockRealm$$Lambda$4
            private final GroupBlock arg$1;
            private final boolean arg$2;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = groupBlock;
                this.arg$2 = z;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                GroupBlockRealm.lambda$setBlockDisabled$4$GroupBlockRealm(this.arg$1, this.arg$2, realm2);
            }
        });
        if (z) {
            CallBlockingUtil.setDataChanged(PSApplication.context());
        }
    }

    public static void setBlockDisabled(Realm realm, String str) {
        setBlockDisabled(realm, retrieveBlockEntry(realm, appendAsterisk(str)));
    }

    private static void updateGroupBlocking(Realm realm, final boolean z, final String str, final BasicSettingsContract.OnAddBlockGroupCompleteListener onAddBlockGroupCompleteListener) {
        realm.executeTransactionAsync(new Realm.Transaction(str, z) { // from class: com.privacystar.core.data.model.helper.GroupBlockRealm$$Lambda$0
            private final String arg$1;
            private final boolean arg$2;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = str;
                this.arg$2 = z;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                GroupBlockRealm.lambda$updateGroupBlocking$0$GroupBlockRealm(this.arg$1, this.arg$2, realm2);
            }
        }, new Realm.Transaction.OnSuccess(onAddBlockGroupCompleteListener) { // from class: com.privacystar.core.data.model.helper.GroupBlockRealm$$Lambda$1
            private final BasicSettingsContract.OnAddBlockGroupCompleteListener arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = onAddBlockGroupCompleteListener;
            }

            @Override // io.realm.Realm.Transaction.OnSuccess
            public void onSuccess() {
                GroupBlockRealm.lambda$updateGroupBlocking$1$GroupBlockRealm(this.arg$1);
            }
        });
    }
}
