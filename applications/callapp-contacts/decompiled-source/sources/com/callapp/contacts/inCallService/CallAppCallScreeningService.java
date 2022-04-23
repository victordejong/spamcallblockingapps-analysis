package com.callapp.contacts.inCallService;

import android.os.Build;
import android.telecom.Call;
import android.telecom.CallScreeningService;
import android.util.Pair;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManager;
import com.callapp.contacts.manager.BlockManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.call.CallState;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.phone.Phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/inCallService/CallAppCallScreeningService.class */
public class CallAppCallScreeningService extends CallScreeningService {
    private void a(Call.Details details) {
        respondToCall(details, new CallScreeningService.CallResponse.Builder().build());
    }

    @Override // android.telecom.CallScreeningService
    public void onScreenCall(Call.Details details) {
        if (Build.VERSION.SDK_INT < 29) {
            a(details);
            return;
        }
        Phone a2 = PhoneManager.get().a(details.getHandle() != null ? details.getHandle().getSchemeSpecificPart() : "");
        CLog.a(CallAppCallScreeningService.class, "Call screening service triggered for phone: ".concat(String.valueOf(a2)));
        Pair<Boolean, String> a3 = BlockManager.a(a2);
        if (!((Boolean) a3.first).booleanValue()) {
            PhoneStateManager.get().addToCallScreeningServiceHandleList(details, a2, ((Boolean) a3.first).booleanValue());
        } else if (PhoneStateManager.get().handleBlockedCall(a2, true)) {
            CallScreeningService.CallResponse.Builder builder = new CallScreeningService.CallResponse.Builder();
            builder.setRejectCall(true);
            builder.setDisallowCall(true);
            builder.setSkipNotification(true);
            respondToCall(details, builder.build());
            CallData callData = new CallData(a2, CallState.DISCONNECTED, Boolean.TRUE);
            callData.setBlocked(true);
            AnalyticsDataManager.a(callData, System.currentTimeMillis());
            return;
        } else {
            PhoneStateManager.get().addToCallScreeningServiceHandleList(details, a2, ((Boolean) a3.first).booleanValue());
        }
        a(details);
    }
}
