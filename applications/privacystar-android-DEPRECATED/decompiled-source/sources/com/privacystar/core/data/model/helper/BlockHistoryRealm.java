package com.privacystar.core.data.model.helper;

import com.privacystar.core.data.call.call_event.LogItem;
import com.privacystar.core.data.call.caller.PhoneEventType;
import com.privacystar.core.data.model.BlockHistory;
import com.privacystar.core.data.model.BlockHistoryFields;
import com.privacystar.core.data.model.BlockList;
import hugo.weaving.DebugLog;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmResults;
import io.realm.Sort;
import java.util.Date;
import java.util.List;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/BlockHistoryRealm.class */
public class BlockHistoryRealm {
    public static final long DUPLICATE_BLOCK_ENTRY_THRESHOLD = 10000;

    @DebugLog
    public static void addNewBlockEvent(Realm realm, final BlockHistory blockHistory) {
        blockHistory.setTime(new Date());
        realm.executeTransaction(new Realm.Transaction(blockHistory) { // from class: com.privacystar.core.data.model.helper.BlockHistoryRealm$$Lambda$0
            private final BlockHistory arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = blockHistory;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                BlockHistoryRealm.lambda$addNewBlockEvent$0$BlockHistoryRealm(this.arg$1, realm2);
            }
        });
    }

    public static void addNewBlockEvent(Realm realm, String str, PhoneEventType phoneEventType) {
        if (wasNumberRecentlyBlocked(realm, str, 10000L)) {
            Timber.m37d("Number was already blocked within the last %dms. Discarding this block event.", 10000L);
            return;
        }
        BlockHistory blockHistory = new BlockHistory();
        blockHistory.setNumber(str);
        blockHistory.setCallerType(phoneEventType);
        blockHistory.setTime(new Date());
        addNewBlockEvent(realm, blockHistory);
    }

    public static LogItem convertToLogItem(BlockHistory blockHistory) {
        LogItem logItem = new LogItem();
        logItem.setPhoneNumber(blockHistory.getNumber());
        logItem.setType(LogItem.LogItemType.CALL);
        logItem.setBlocked(true);
        logItem.setName(blockHistory.getName());
        logItem.setDate(blockHistory.getTime().getTime());
        return logItem;
    }

    public static long getBlockCount(Realm realm) {
        return realm.where(BlockHistory.class).count();
    }

    public static long getBlockCount(Realm realm, BlockList blockList) {
        return getBlockCount(realm, blockList.getNumber());
    }

    public static long getBlockCount(Realm realm, String str) {
        return realm.where(BlockHistory.class).equalTo("number", str).count();
    }

    public static RealmResults<BlockHistory> getBlockHistory(Realm realm) {
        return realm.where(BlockHistory.class).findAll();
    }

    public static RealmResults<BlockHistory> getBlockHistory(Realm realm, BlockList blockList) {
        return getBlockHistory(realm, blockList.getNumber());
    }

    public static RealmResults<BlockHistory> getBlockHistory(Realm realm, String str) {
        return realm.where(BlockHistory.class).equalTo("number", str).findAll();
    }

    public static List<BlockHistory> getBlockHistoryCopy(Realm realm) {
        return realm.copyFromRealm(realm.where(BlockHistory.class).findAll().sort(BlockHistoryFields.TIME, Sort.DESCENDING));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$addNewBlockEvent$0$BlockHistoryRealm(BlockHistory blockHistory, Realm realm) {
        BlockHistory blockHistory2 = (BlockHistory) realm.copyToRealm((Realm) blockHistory, new ImportFlag[0]);
    }

    public static boolean wasNumberRecentlyBlocked(Realm realm, String str, long j) {
        return realm.where(BlockHistory.class).equalTo("number", str).greaterThanOrEqualTo(BlockHistoryFields.TIME, new Date(System.currentTimeMillis() - j)).findFirst() != null;
    }
}
