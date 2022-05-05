package com.privacystar.core.data.call.call_details;

import com.privacystar.core.data.call.call_details.CallEvent;
import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/call_details/CallDetailsHelper.class */
public class CallDetailsHelper {
    private static CallDetailsHelper instance;

    private CallDetailsHelper() {
    }

    public static boolean containsOnlySms(Collection<CallEvent> collection) {
        boolean z = false;
        if (collection != null) {
            Iterator<CallEvent> it = collection.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().getType() != CallEvent.EventType.SMS) {
                        z = false;
                        break;
                    }
                } else {
                    z = true;
                    break;
                }
            }
        }
        return z;
    }

    public static CallDetailsHelper getInstance() {
        CallDetailsHelper callDetailsHelper;
        synchronized (CallDetailsHelper.class) {
            try {
                if (instance == null) {
                    instance = new CallDetailsHelper();
                }
                callDetailsHelper = instance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return callDetailsHelper;
    }

    public static boolean hasPsData(CallDetails callDetails) {
        return callDetails.getCaller().hasPsData() || callDetails.containsBlockedEvent();
    }
}
