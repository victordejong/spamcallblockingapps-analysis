package com.privacystar.core.data.call.call_event;

import android.content.Context;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.call.call_event.CallHistoryHelper;
import com.privacystar.core.data.call.call_event.LogItem;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.util.CallLogUtil;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/call_event/LogItemHelper.class */
public class LogItemHelper {
    private static LogItem sEmptyLogItem;
    private static LogItemHelper sInstance;
    private Context mContext;

    private LogItemHelper(Context context) {
        this.mContext = context;
    }

    public static boolean containsOnlySms(List<LogItem> list) {
        boolean z = false;
        Boolean bool = null;
        Boolean bool2 = null;
        if (list != null) {
            Timber.m28v("Checking logitems for sms: %s", Arrays.toString(list.toArray()));
            Iterator<LogItem> it = list.iterator();
            while (true) {
                bool = bool2;
                if (!it.hasNext()) {
                    break;
                } else if (it.next().getType() != LogItem.LogItemType.SMS) {
                    bool = false;
                    break;
                } else if (bool2 == null) {
                    bool2 = true;
                }
            }
        }
        if (bool != null) {
            z = bool.booleanValue();
        }
        return z;
    }

    private static LogItem createEmptyLogItem() {
        LogItem logItem = new LogItem();
        logItem.setDirection(CallHistoryHelper.CallDirection.NO_DIRECTION);
        logItem.setType(LogItem.LogItemType.CALLER_ID);
        return logItem;
    }

    public static LogItem getEmptyLogItem() {
        if (sEmptyLogItem == null) {
            sEmptyLogItem = createEmptyLogItem();
        }
        return sEmptyLogItem;
    }

    public static LogItemHelper getInstance() {
        LogItemHelper instance;
        synchronized (LogItemHelper.class) {
            try {
                instance = getInstance(PSApplication.context());
            } catch (Throwable th) {
                throw th;
            }
        }
        return instance;
    }

    public static LogItemHelper getInstance(Context context) {
        LogItemHelper logItemHelper;
        synchronized (LogItemHelper.class) {
            try {
                if (sInstance == null) {
                    sInstance = new LogItemHelper(context.getApplicationContext());
                }
                logItemHelper = sInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return logItemHelper;
    }

    public LogItem getMostRecentEvent(Caller caller) {
        return getMostRecentEvent(caller.getNumber());
    }

    public LogItem getMostRecentEvent(String str) {
        Vector<LogItem> callHistory = CallHistoryHelper.getInstance().getCallHistory(str, CallHistoryHelper.HistoryFilter.ALL, 1);
        if (callHistory.size() > 0) {
            Timber.m37d("Fetched most recent call event for %s.", str);
            return callHistory.firstElement();
        }
        Timber.m37d("No event history for %s, returning an empty log item.", str);
        return getEmptyLogItem();
    }

    public LogItem logItemFromBasicLogInfo(CallLogUtil.BasicLogInfo basicLogInfo) {
        LogItem logItem = new LogItem();
        logItem.setPhoneNumber(basicLogInfo.getNumber());
        logItem.setDirection(basicLogInfo.getCallDirection());
        logItem.setDate(basicLogInfo.getRawDate().longValue());
        logItem.setBlocked(basicLogInfo.wasBlocked());
        logItem.setType(basicLogInfo.isCall() ? LogItem.typeFromCall(true) : LogItem.typeFromSms(true));
        return logItem;
    }
}
