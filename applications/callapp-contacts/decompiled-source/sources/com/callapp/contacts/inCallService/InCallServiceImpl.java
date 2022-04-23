package com.callapp.contacts.inCallService;

import android.content.ComponentName;
import android.content.Intent;
import android.os.IBinder;
import android.telecom.Call;
import android.telecom.CallAudioState;
import android.telecom.InCallService;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.service.CallAppService;
import com.callapp.contacts.util.CLog;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/inCallService/InCallServiceImpl.class */
public class InCallServiceImpl extends InCallService {
    @Override // android.telecom.InCallService, android.app.Service
    public IBinder onBind(Intent intent) {
        TelecomAdapter.getInstance().setInCallService(this);
        CLog.a(InCallServiceImpl.class, "InCallServiceImpl onBind");
        return super.onBind(intent);
    }

    @Override // android.telecom.InCallService
    public void onBringToForeground(boolean z) {
        CallData incomingOrConnectingOrConnectedCall;
        CLog.a(InCallServiceImpl.class, "InCallServiceImpl onBringToForeground showDialpad: ".concat(String.valueOf(z)));
        Intent intent = new Intent("com.callapp.contacts.ACTION_START_CALL_SCREEN");
        intent.setComponent(new ComponentName(getApplication(), CallAppService.class));
        intent.putExtra(BaseContactDetailsActivity.EXTRA_SHOW_KEYPAD, z);
        if (!PhoneStateManager.get().shouldConferenceScreenAppear() && (incomingOrConnectingOrConnectedCall = PhoneManager.get().getIncomingOrConnectingOrConnectedCall()) != null) {
            intent.putExtra(Constants.EXTRA_PHONE_NUMBER, incomingOrConnectingOrConnectedCall.getNumber().getRawNumber());
            intent.putExtra(Constants.EXTRA_IS_INCOMING, incomingOrConnectingOrConnectedCall.isIncoming());
            PhoneStateManager.get().showCallAppIfNeeded(incomingOrConnectingOrConnectedCall, true, z, false);
        }
        CallAppService.a(this, intent, true);
    }

    @Override // android.telecom.InCallService
    public void onCallAdded(Call call) {
        PhoneStateManager.get().onCallAdded(call);
        if (getCallAudioState() != null) {
            PhoneStateManager.get().onAudioStateChanged(getCallAudioState());
        }
        CLog.a(InCallServiceImpl.class, "InCallServiceImpl onCallAdded ".concat(String.valueOf(call)));
    }

    @Override // android.telecom.InCallService
    public void onCallAudioStateChanged(CallAudioState callAudioState) {
        PhoneStateManager.get().onAudioStateChanged(callAudioState);
        CLog.a(InCallServiceImpl.class, "InCallServiceImpl onCallAudioStateChanged audioState: ".concat(String.valueOf(callAudioState)));
        PhoneStateManager.get().handleRinger();
    }

    @Override // android.telecom.InCallService
    public void onCallRemoved(Call call) {
        CLog.a(InCallServiceImpl.class, "InCallServiceImpl onCallRemoved ".concat(String.valueOf(call)));
    }

    @Override // android.telecom.InCallService
    public void onCanAddCallChanged(boolean z) {
        CLog.a(InCallServiceImpl.class, "InCallServiceImpl canAddCall: ".concat(String.valueOf(z)));
    }

    @Override // android.telecom.InCallService
    public void onSilenceRinger() {
        CLog.a(InCallServiceImpl.class, "InCallServiceImpl onSilenceRinger called ");
        PhoneStateManager.get().internalSilenceRinger();
    }

    @Override // android.telecom.InCallService, android.app.Service
    public boolean onUnbind(Intent intent) {
        CLog.a(InCallServiceImpl.class, "InCallServiceImpl onUnbind");
        super.onUnbind(intent);
        TelecomAdapter.getInstance().f14427b = null;
        return false;
    }
}
