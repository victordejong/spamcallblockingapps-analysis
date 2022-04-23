package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.activity.interfaces.-$;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/_$$Lambda$CallLogLastSeenTimestampEventListener$wMsepEoM7yf0Fan9HZQgxtKeghk.class */
public final /* synthetic */ class _$$Lambda$CallLogLastSeenTimestampEventListener$wMsepEoM7yf0Fan9HZQgxtKeghk implements EventType {
    public static final /* synthetic */ -$.Lambda.CallLogLastSeenTimestampEventListener.wMsepEoM7yf0Fan9HZQgxtKeghk INSTANCE = new _$$Lambda$CallLogLastSeenTimestampEventListener$wMsepEoM7yf0Fan9HZQgxtKeghk();

    private /* synthetic */ _$$Lambda$CallLogLastSeenTimestampEventListener$wMsepEoM7yf0Fan9HZQgxtKeghk() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        EventBusManager.CallAppDataType callAppDataType = (EventBusManager.CallAppDataType) obj2;
        ((CallLogLastSeenTimestampEventListener) obj).a();
    }
}
