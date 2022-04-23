package com.privacystar.core.util;

import com.privacystar.core.data.call.call_event.LogItem;
import com.privacystar.core.data.model.BlockHistory;
import com.privacystar.core.data.model.helper.BlockHistoryRealm;
import com.privacystar.core.data.sqlite.p008db.caller_id.CallerIdHelper;
import com.privacystar.core.data.sqlite.p008db.caller_id.CallerIdModel;
import com.privacystar.core.util.CallLogUtil;
import io.realm.Realm;
import io.realm.RealmResults;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/PhoneActivityHelper.class */
public class PhoneActivityHelper {
    public static List<CallLogUtil.BasicLogInfo> convertLogItemList(Realm realm, List<LogItem> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (LogItem logItem : list) {
            arrayList.add(logItem.toBasicLogInfo(realm));
        }
        return arrayList;
    }

    public static List<LogItem> getActivityForNumber(String str) {
        return new ArrayList();
    }

    public static List<LogItem> getAllBlockingHistory(Realm realm) {
        RealmResults<BlockHistory> blockHistory = BlockHistoryRealm.getBlockHistory(realm);
        ArrayList arrayList = new ArrayList();
        Iterator it = blockHistory.iterator();
        while (it.hasNext()) {
            arrayList.add(BlockHistoryRealm.convertToLogItem((BlockHistory) it.next()));
        }
        return arrayList;
    }

    public static List<LogItem> getBlockHistoryFromNumber(Realm realm, String str) {
        RealmResults<BlockHistory> blockHistory = BlockHistoryRealm.getBlockHistory(realm, str);
        ArrayList arrayList = new ArrayList();
        Iterator it = blockHistory.iterator();
        while (it.hasNext()) {
            arrayList.add(BlockHistoryRealm.convertToLogItem((BlockHistory) it.next()));
        }
        return arrayList;
    }

    @Deprecated
    public static List<LogItem> getCallerIDHistory() {
        ArrayList arrayList = new ArrayList();
        for (CallerIdModel.CallerId callerId : CallerIdHelper.getInstance().getAllCachedIds()) {
            arrayList.add(callerId.toLogItem());
        }
        return arrayList;
    }
}
