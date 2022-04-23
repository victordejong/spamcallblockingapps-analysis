package com.callapp.contacts.manager.phone;

import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.model.call.CallData;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/phone/CallStateListener.class */
public interface CallStateListener {

    /* renamed from: d  reason: collision with root package name */
    public static final EventType<CallStateListener, CallData> f15121d = new EventType<CallStateListener, CallData>() { // from class: com.callapp.contacts.manager.phone.CallStateListener.1
        @Override // com.callapp.contacts.event.bus.EventType
        public final /* synthetic */ void fire(CallStateListener callStateListener, CallData callData) {
            callStateListener.onCallStateChanged(callData);
        }
    };

    void onCallStateChanged(CallData callData);
}
