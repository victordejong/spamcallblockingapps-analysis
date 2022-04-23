package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.activity.interfaces.-$;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/_$$Lambda$c_pU0ZPGcdT1nmXVCqKIMvI3eZQ.class */
public final /* synthetic */ class _$$Lambda$c_pU0ZPGcdT1nmXVCqKIMvI3eZQ implements EventType {
    public static final /* synthetic */ -$.Lambda.c_pU0ZPGcdT1nmXVCqKIMvI3eZQ INSTANCE = new _$$Lambda$c_pU0ZPGcdT1nmXVCqKIMvI3eZQ();

    private /* synthetic */ _$$Lambda$c_pU0ZPGcdT1nmXVCqKIMvI3eZQ() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((OnBadgeNotificationDataChangeListener) obj).a((EventBusManager.CallAppDataType) obj2);
    }
}
