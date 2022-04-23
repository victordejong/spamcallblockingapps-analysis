package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener.class */
public interface OnBadgeNotificationDataChangeListener {
    public static final EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType> b_ = _$$Lambda$c_pU0ZPGcdT1nmXVCqKIMvI3eZQ.INSTANCE;

    void a(EventBusManager.CallAppDataType callAppDataType);
}
