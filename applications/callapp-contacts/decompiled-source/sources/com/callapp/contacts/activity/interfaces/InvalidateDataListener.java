package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/InvalidateDataListener.class */
public interface InvalidateDataListener {

    /* renamed from: b  reason: collision with root package name */
    public static final EventType<InvalidateDataListener, EventBusManager.CallAppDataType> f12949b = _$$Lambda$YgKQq6nFik8TnsnZ5AB7aRDB4L0.INSTANCE;

    void invalidateData(EventBusManager.CallAppDataType callAppDataType);
}
