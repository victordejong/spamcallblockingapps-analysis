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
    /* renamed from: a */
    private void m28967a(Call.Details details) {
        respondToCall(details, new CallScreeningService.CallResponse.Builder().build());
    }

    @Override // android.telecom.CallScreeningService
    public void onScreenCall(Call.Details details) {
        if (Build.VERSION.SDK_INT < 29) {
            m28967a(details);
            return;
        }
        Phone m28239a = PhoneManager.get().m28239a(details.getHandle() != null ? details.getHandle().getSchemeSpecificPart() : "");
        CLog.m27611a(CallAppCallScreeningService.class, "Call screening service triggered for phone: ".concat(String.valueOf(m28239a)));
        Pair<Boolean, String> m28755a = BlockManager.m28755a(m28239a);
        if (!((Boolean) m28755a.first).booleanValue()) {
            PhoneStateManager.get().addToCallScreeningServiceHandleList(details, m28239a, ((Boolean) m28755a.first).booleanValue());
        } else if (PhoneStateManager.get().handleBlockedCall(m28239a, true)) {
            CallScreeningService.CallResponse.Builder builder = new CallScreeningService.CallResponse.Builder();
            builder.setRejectCall(true);
            builder.setDisallowCall(true);
            builder.setSkipNotification(true);
            respondToCall(details, builder.build());
            CallData callData = new CallData(m28239a, CallState.DISCONNECTED, Boolean.TRUE);
            callData.setBlocked(true);
            AnalyticsDataManager.m31630a(callData, System.currentTimeMillis());
            return;
        } else {
            PhoneStateManager.get().addToCallScreeningServiceHandleList(details, m28239a, ((Boolean) m28755a.first).booleanValue());
        }
        m28967a(details);
    }
}
