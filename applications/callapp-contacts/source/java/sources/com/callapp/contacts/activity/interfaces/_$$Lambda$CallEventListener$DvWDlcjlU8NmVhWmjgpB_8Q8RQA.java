package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.activity.interfaces.-$;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/_$$Lambda$CallEventListener$DvWDlcjlU8NmVhWmjgpB_8Q8RQA.class */
public final /* synthetic */ class _$$Lambda$CallEventListener$DvWDlcjlU8NmVhWmjgpB_8Q8RQA implements EventType {
    public static final /* synthetic */ -$.Lambda.CallEventListener.DvWDlcjlU8NmVhWmjgpB-8Q8RQA INSTANCE = new _$$Lambda$CallEventListener$DvWDlcjlU8NmVhWmjgpB_8Q8RQA();

    private /* synthetic */ _$$Lambda$CallEventListener$DvWDlcjlU8NmVhWmjgpB_8Q8RQA() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        EventBusManager.CallAppDataType callAppDataType = (EventBusManager.CallAppDataType) obj2;
        ((CallEventListener) obj).mo30229a();
    }
}
