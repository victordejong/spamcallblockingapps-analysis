package com.privacystar.core.data.blocking;

import com.privacystar.core.data.blocking.BlockFlags;
import com.privacystar.core.data.model.BlockList;
import com.privacystar.core.data.model.GroupBlock;
import com.privacystar.core.data.model.Operation;
import com.privacystar.core.data.model.helper.BlockListRealm;
import com.privacystar.core.data.model.helper.EventControlRealm;
import com.privacystar.core.data.model.helper.GroupBlockRealm;
import hugo.weaving.DebugLog;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmResults;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/blocking/BlockDataCollator.class */
public class BlockDataCollator {
    public static final String BLOCK_LIST_LABEL = "BL";
    private static final int BLOCK_LIST_PRIORITY = 1;
    public static final String GROUP_BLOCK_LABEL = "GB";
    private static final int GROUP_BLOCK_PRIORITY = 1;

    private static void addEventControlFromBlockList(Realm realm) {
        final RealmResults<BlockList> blockListEntries = BlockListRealm.getBlockListEntries(realm, BlockListRealm.BlockListActive.ACTIVE);
        realm.executeTransaction(new Realm.Transaction(blockListEntries) { // from class: com.privacystar.core.data.blocking.BlockDataCollator$$Lambda$0
            private final RealmResults arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = blockListEntries;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                BlockDataCollator.lambda$addEventControlFromBlockList$0$BlockDataCollator(this.arg$1, realm2);
            }
        });
    }

    private static void addEventControlFromGroupBlockList(Realm realm) {
        final RealmResults<GroupBlock> allBlockedGroups = GroupBlockRealm.getAllBlockedGroups(realm);
        realm.executeTransaction(new Realm.Transaction(allBlockedGroups) { // from class: com.privacystar.core.data.blocking.BlockDataCollator$$Lambda$1
            private final RealmResults arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = allBlockedGroups;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                BlockDataCollator.lambda$addEventControlFromGroupBlockList$1$BlockDataCollator(this.arg$1, realm2);
            }
        });
    }

    public static Operation eventControlFromBlockListEntry(BlockList blockList) {
        Operation operation = new Operation();
        operation.setActionCode(BlockFlags.ActionCode.BLOCK);
        operation.setEventCode(BlockFlags.EventCode.BOTH);
        operation.setMatchValue(blockList.getNumber());
        operation.setLabel(BLOCK_LIST_LABEL);
        operation.setPriority(1);
        return operation;
    }

    public static Operation eventControlFromGroupListEntry(GroupBlock groupBlock) {
        Operation operation = new Operation();
        eventControlFromGroupListEntry(groupBlock, operation);
        return operation;
    }

    public static void eventControlFromGroupListEntry(GroupBlock groupBlock, Operation operation) {
        operation.setActionCode(BlockFlags.ActionCode.BLOCK);
        operation.setEventCode(BlockFlags.EventCode.BOTH);
        operation.setMatchValue(groupBlock.getNumber());
        operation.setLabel(GROUP_BLOCK_LABEL);
        operation.setPriority(1);
    }

    private static List<Operation> eventControlFromOffendersDB() {
        return new ArrayList();
    }

    private static List<Operation> eventControlFromWhiteList() {
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$addEventControlFromBlockList$0$BlockDataCollator(RealmResults realmResults, Realm realm) {
        Iterator it = realmResults.iterator();
        while (it.hasNext()) {
            BlockList blockList = (BlockList) it.next();
            realm.copyToRealm((Realm) eventControlFromBlockListEntry(blockList), new ImportFlag[0]);
            blockList.setOperation(EventControlRealm.getEventControlFromNumber(realm, blockList.getNumber()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$addEventControlFromGroupBlockList$1$BlockDataCollator(RealmResults realmResults, Realm realm) {
        Iterator it = realmResults.iterator();
        while (it.hasNext()) {
            GroupBlock groupBlock = (GroupBlock) it.next();
            realm.copyToRealm((Realm) eventControlFromGroupListEntry(groupBlock), new ImportFlag[0]);
            groupBlock.setOperation(EventControlRealm.getEventControlFromNumber(realm, groupBlock.getNumber()));
        }
    }

    @DebugLog
    public static void refreshEventControl() {
        Timber.m37d("Refreshing Operation data.", new Object[0]);
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            EventControlRealm.clearEventControl(defaultInstance);
            Timber.m37d("Removed expired rows from Operation.", new Object[0]);
            List<Operation> eventControlFromWhiteList = eventControlFromWhiteList();
            List<Operation> eventControlFromOffendersDB = eventControlFromOffendersDB();
            addEventControlFromBlockList(defaultInstance);
            addEventControlFromGroupBlockList(defaultInstance);
            EventControlRealm.addEventControlList(defaultInstance, eventControlFromWhiteList);
            EventControlRealm.addEventControlList(defaultInstance, eventControlFromOffendersDB);
            if (defaultInstance != null) {
                defaultInstance.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (defaultInstance != null) {
                    if (th != null) {
                        try {
                            defaultInstance.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        defaultInstance.close();
                    }
                }
                throw th2;
            }
        }
    }
}
