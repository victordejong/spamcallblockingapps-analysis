package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.activity.interfaces.-$;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
/* renamed from: com.callapp.contacts.activity.interfaces._$$Lambda$CallLogLastSeenTimestampEventListener$wMsepEoM7yf0Fan9HZQgxtKeghk */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/_$$Lambda$CallLogLastSeenTimestampEventListener$wMsepEoM7yf0Fan9HZQgxtKeghk.class */
public final /* synthetic */ class C6639xd740976c implements EventType {
    public static final /* synthetic */ -$.Lambda.CallLogLastSeenTimestampEventListener.wMsepEoM7yf0Fan9HZQgxtKeghk INSTANCE = new C6639xd740976c();

    private /* synthetic */ C6639xd740976c() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        EventBusManager.CallAppDataType callAppDataType = (EventBusManager.CallAppDataType) obj2;
        ((CallLogLastSeenTimestampEventListener) obj).mo30225a();
    }
}
