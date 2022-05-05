package com.privacystar.core.data.model.helper;

import android.support.annotation.NonNull;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.blocking.BlockDataCollator;
import com.privacystar.core.data.call.call_details.CallDetails;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.call.caller.CallerFactory;
import com.privacystar.core.data.model.BlockList;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.blocking.CallBlockingUtil;
import com.privacystar.core.service.network.handler.BlockListPutHandler;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmResults;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/BlockListRealm.class */
public class BlockListRealm {

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/BlockListRealm$BlockListActive.class */
    public enum BlockListActive {
        ACTIVE(true),
        INACTIVE(false);
        
        boolean value;

        BlockListActive(boolean z) {
            this.value = z;
        }

        public boolean getValue() {
            return this.value;
        }
    }

    private static void addToBlockList(Realm realm, CallDetails callDetails) {
        addToBlockList(realm, callDetails.getCaller());
    }

    public static void addToBlockList(Realm realm, Caller caller) {
        if (retrieveBlockEntry(realm, caller) == null) {
            addToBlockListImpl(realm, caller);
            caller.updateInBlockList();
            BlockListPutHandler.getInstance().generateAndEnqueueRequest(realm);
            return;
        }
        Timber.m28v("Requested to add %s to Block List but it was already there.", caller);
    }

    private static void addToBlockListImpl(Realm realm, final Caller caller) {
        realm.executeTransaction(new Realm.Transaction(caller) { // from class: com.privacystar.core.data.model.helper.BlockListRealm$$Lambda$0
            private final Caller arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = caller;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                BlockListRealm.lambda$addToBlockListImpl$0$BlockListRealm(this.arg$1, realm2);
            }
        });
    }

    public static void addToOrUpdateBlockList(Realm realm, Caller caller) {
        addToOrUpdateBlockList(realm, caller, true);
    }

    public static void addToOrUpdateBlockList(Realm realm, Caller caller, boolean z) {
        BlockList retrieveBlockEntry = retrieveBlockEntry(realm, caller);
        if (retrieveBlockEntry == null) {
            addToBlockListImpl(realm, caller);
        } else {
            updateBlockListImpl(realm, retrieveBlockEntry, caller.getDisplayName());
        }
        caller.updateInBlockList();
        if (z) {
            BlockListPutHandler.getInstance().generateAndEnqueueRequest(realm);
        }
    }

    public static void addToOrUpdateBlockList(Realm realm, String str) {
        addToOrUpdateBlockList(realm, CallerFactory.getInstance().getCaller(str));
    }

    public static void addToOrUpdateBlockList(Realm realm, String str, boolean z) {
        addToOrUpdateBlockList(realm, CallerFactory.getInstance().getCaller(str), z);
    }

    public static void addToOrUpdateBlockList(Realm realm, List<String> list, boolean z) {
        if (list == null) {
            Timber.m37d("Received a null list of numbers to add to blockList", new Object[0]);
            return;
        }
        for (String str : list) {
            addToOrUpdateBlockList(realm, str, z);
        }
    }

    public static void clearBlockList(Realm realm) {
        realm.executeTransaction(BlockListRealm$$Lambda$5.$instance);
    }

    public static RealmResults<BlockList> getBlockListEntries(Realm realm) {
        return realm.where(BlockList.class).findAll();
    }

    public static RealmResults<BlockList> getBlockListEntries(Realm realm, BlockListActive blockListActive) {
        return realm.where(BlockList.class).equalTo("blockActive", Boolean.valueOf(blockListActive.getValue())).findAll();
    }

    public static RealmResults<BlockList> getBlockListEntries(Realm realm, boolean z) {
        return realm.where(BlockList.class).equalTo("blockActive", Boolean.valueOf(z)).findAll();
    }

    @NonNull
    public static List<String> getBlockListNumbersIfActive(Realm realm, BlockListActive blockListActive) {
        RealmResults<BlockList> blockListEntries = getBlockListEntries(realm, blockListActive);
        ArrayList arrayList = new ArrayList();
        Iterator it = blockListEntries.iterator();
        while (it.hasNext()) {
            arrayList.add(((BlockList) it.next()).getNumber());
        }
        return arrayList;
    }

    public static boolean isCallerBlocked(Realm realm, Caller caller) {
        return isCallerBlocked(realm, caller.getNumber());
    }

    public static boolean isCallerBlocked(Realm realm, String str) {
        boolean z = true;
        if (0 >= realm.where(BlockList.class).equalTo("number", str).equalTo("blockActive", (Boolean) true).count()) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$addToBlockListImpl$0$BlockListRealm(Caller caller, Realm realm) {
        try {
            BlockList blockList = (BlockList) realm.createObject(BlockList.class, caller.getNumber());
            blockList.setName(caller.getDisplayName());
            blockList.setBlockActive(true);
            blockList.setAdded(new Date());
            realm.copyToRealm((Realm) BlockDataCollator.eventControlFromBlockListEntry(blockList), new ImportFlag[0]);
            blockList.setOperation(EventControlRealm.getEventControlFromNumber(realm, blockList.getNumber()));
            CallBlockingUtil.setDataChanged(PSApplication.context());
            trackBlockNumberAction(caller.getNumber(), Event.BlockListAction.BLOCK);
        } catch (Exception e) {
            Timber.m23w(e, "Couldn't add number to blockList.", new Object[0]);
            trackBlockNumberAction(caller.getNumber(), Event.BlockListAction.FAIL);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$setBlockDisabled$4$BlockListRealm(BlockList blockList, boolean z, Realm realm) {
        blockList.setBlockActive(false);
        if (z) {
            blockList.getOperation().deleteFromRealm();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$setBlockEnabled$3$BlockListRealm(BlockList blockList, Realm realm, Realm realm2) {
        blockList.setBlockActive(true);
        realm2.copyToRealm((Realm) BlockDataCollator.eventControlFromBlockListEntry(blockList), new ImportFlag[0]);
        blockList.setOperation(EventControlRealm.getEventControlFromNumber(realm2, blockList.getNumber()));
        trackBlockNumberAction(blockList.getNumber(), Event.BlockListAction.BLOCK);
        BlockListPutHandler.getInstance().generateAndEnqueueRequest(realm);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$updateBlockListImpl$1$BlockListRealm(BlockList blockList, String str, boolean z, Realm realm) {
        blockList.setName(str);
        blockList.setBlockActive(false);
        if (z) {
            blockList.getOperation().deleteFromRealm();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$updateBlockListImpl$2$BlockListRealm(BlockList blockList, String str, Realm realm, Realm realm2) {
        blockList.setName(str);
        blockList.setBlockActive(true);
        realm.copyToRealm((Realm) BlockDataCollator.eventControlFromBlockListEntry(blockList), new ImportFlag[0]);
        blockList.setOperation(EventControlRealm.getEventControlFromNumber(realm, blockList.getNumber()));
    }

    public static BlockList retrieveBlockEntry(Realm realm, Caller caller) {
        return retrieveBlockEntry(realm, caller.getNumber());
    }

    public static BlockList retrieveBlockEntry(Realm realm, String str) {
        return (BlockList) realm.where(BlockList.class).equalTo("number", str).findFirst();
    }

    public static void setBlockDisabled(Realm realm, Caller caller) {
        setBlockDisabled(realm, caller.getNumber());
    }

    public static void setBlockDisabled(Realm realm, final BlockList blockList) {
        final boolean z = false;
        if (blockList == null) {
            Timber.m37d("Error unblocking record, caller was never blocked.", new Object[0]);
            return;
        }
        if (blockList.getOperation() != null) {
            z = true;
        }
        realm.executeTransaction(new Realm.Transaction(blockList, z) { // from class: com.privacystar.core.data.model.helper.BlockListRealm$$Lambda$4
            private final BlockList arg$1;
            private final boolean arg$2;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = blockList;
                this.arg$2 = z;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                BlockListRealm.lambda$setBlockDisabled$4$BlockListRealm(this.arg$1, this.arg$2, realm2);
            }
        });
        CallerFactory.getInstance().getCaller(blockList.getNumber()).updateInBlockList();
        if (z) {
            trackBlockNumberAction(blockList.getNumber(), Event.BlockListAction.UNBLOCK);
            CallBlockingUtil.setDataChanged(PSApplication.context());
        }
        BlockListPutHandler.getInstance().generateAndEnqueueRequest(realm);
    }

    public static void setBlockDisabled(Realm realm, String str) {
        setBlockDisabled(realm, retrieveBlockEntry(realm, str));
    }

    public static boolean setBlockEnabled(final Realm realm, Caller caller) {
        final BlockList retrieveBlockEntry = retrieveBlockEntry(realm, caller);
        ApprovedListRealm.setApproved(realm, caller.getNumber(), false);
        if (retrieveBlockEntry == null) {
            addToBlockList(realm, caller);
            return true;
        } else if (retrieveBlockEntry.isBlockActive()) {
            return false;
        } else {
            realm.executeTransaction(new Realm.Transaction(retrieveBlockEntry, realm) { // from class: com.privacystar.core.data.model.helper.BlockListRealm$$Lambda$3
                private final BlockList arg$1;
                private final Realm arg$2;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = retrieveBlockEntry;
                    this.arg$2 = realm;
                }

                @Override // io.realm.Realm.Transaction
                public void execute(Realm realm2) {
                    BlockListRealm.lambda$setBlockEnabled$3$BlockListRealm(this.arg$1, this.arg$2, realm2);
                }
            });
            CallBlockingUtil.setDataChanged(PSApplication.context());
            caller.updateInBlockList();
            return true;
        }
    }

    public static boolean setBlockEnabled(Realm realm, String str) {
        return setBlockEnabled(realm, CallerFactory.getInstance().getCaller(str));
    }

    private static void trackBlockNumberAction(String str, Event.BlockListAction blockListAction) {
        AnalyticsManager.INSTANCE.fire(new Event.BlockNumberEvent(str, blockListAction));
    }

    private static void updateBlockListImpl(final Realm realm, final BlockList blockList, final String str) {
        if (blockList.isBlockActive()) {
            final boolean z = blockList.getOperation() != null;
            realm.executeTransaction(new Realm.Transaction(blockList, str, z) { // from class: com.privacystar.core.data.model.helper.BlockListRealm$$Lambda$1
                private final BlockList arg$1;
                private final String arg$2;
                private final boolean arg$3;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = blockList;
                    this.arg$2 = str;
                    this.arg$3 = z;
                }

                @Override // io.realm.Realm.Transaction
                public void execute(Realm realm2) {
                    BlockListRealm.lambda$updateBlockListImpl$1$BlockListRealm(this.arg$1, this.arg$2, this.arg$3, realm2);
                }
            });
            if (z) {
                CallBlockingUtil.setDataChanged(PSApplication.context());
                trackBlockNumberAction(blockList.getNumber(), Event.BlockListAction.UNBLOCK);
                return;
            }
            return;
        }
        realm.executeTransaction(new Realm.Transaction(blockList, str, realm) { // from class: com.privacystar.core.data.model.helper.BlockListRealm$$Lambda$2
            private final BlockList arg$1;
            private final String arg$2;
            private final Realm arg$3;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = blockList;
                this.arg$2 = str;
                this.arg$3 = realm;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                BlockListRealm.lambda$updateBlockListImpl$2$BlockListRealm(this.arg$1, this.arg$2, this.arg$3, realm2);
            }
        });
        CallBlockingUtil.setDataChanged(PSApplication.context());
        trackBlockNumberAction(blockList.getNumber(), Event.BlockListAction.BLOCK);
    }
}
