package com.privacystar.core.data.providers.standard;

import com.privacystar.core.data.call.call_details.CallDetails;
import com.privacystar.core.data.call.call_details.CallEvent;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.call.caller.CallerFactory;
import com.privacystar.core.data.providers.Merger;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/standard/CallDetailsMerger.class */
public class CallDetailsMerger extends Merger<CallDetails> {
    public static final long COMBINE_THRESHOLD = 30000;

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.privacystar.core.data.providers.Merger
    public CallDetails combine(List<CallDetails> list) {
        if (list.isEmpty()) {
            return null;
        }
        Caller caller = CallerFactory.getInstance().getCaller(list.get(0).getCaller().getNumber());
        CallEvent callEvent = new CallEvent(list.get(0).getMostRecentEvent());
        for (int i = 1; i < list.size(); i++) {
            callEvent.mergeWith(list.get(i).getMostRecentEvent());
        }
        return new CallDetails(caller, callEvent);
    }

    public int compare(CallDetails callDetails, CallDetails callDetails2) {
        if (numbersEqual(callDetails, callDetails2) && timeWithinThreshold(callDetails, callDetails2)) {
            return 0;
        }
        return callDetails.getMostRecentEvent().getDate() - callDetails2.getMostRecentEvent().getDate() > 0 ? -1 : 1;
    }

    public long getThreshold() {
        return 30000L;
    }

    public boolean numbersEqual(CallDetails callDetails, CallDetails callDetails2) {
        return callDetails.getCaller().getNumber().equals(callDetails2.getCaller().getNumber());
    }

    public boolean timeWithinThreshold(CallDetails callDetails, CallDetails callDetails2) {
        return Math.abs(callDetails.getMostRecentEvent().getDate() - callDetails2.getMostRecentEvent().getDate()) < getThreshold();
    }
}
