package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/InvalidateDataListener.class */
public interface InvalidateDataListener {

    /* renamed from: b */
    public static final EventType<InvalidateDataListener, EventBusManager.CallAppDataType> f23122b = _$$Lambda$YgKQq6nFik8TnsnZ5AB7aRDB4L0.INSTANCE;

    void invalidateData(EventBusManager.CallAppDataType callAppDataType);
}
