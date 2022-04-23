package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.activity.interfaces.-$;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/_$$Lambda$DefaultDialer$t5I6pezOGAy0hHg7ArKbXECYZh4.class */
public final /* synthetic */ class _$$Lambda$DefaultDialer$t5I6pezOGAy0hHg7ArKbXECYZh4 implements EventType {
    public static final /* synthetic */ -$.Lambda.DefaultDialer.t5I6pezOGAy0hHg7ArKbXECYZh4 INSTANCE = new _$$Lambda$DefaultDialer$t5I6pezOGAy0hHg7ArKbXECYZh4();

    private /* synthetic */ _$$Lambda$DefaultDialer$t5I6pezOGAy0hHg7ArKbXECYZh4() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        EventBusManager.CallAppDataType callAppDataType = (EventBusManager.CallAppDataType) obj2;
        ((DefaultDialer) obj).onSetAsDefaultAppClicked();
    }
}
