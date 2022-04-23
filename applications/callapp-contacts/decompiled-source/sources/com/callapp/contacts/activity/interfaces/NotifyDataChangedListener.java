package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.model.DataChangedInfo;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/NotifyDataChangedListener.class */
public interface NotifyDataChangedListener {

    /* renamed from: b  reason: collision with root package name */
    public static final EventType<NotifyDataChangedListener, DataChangedInfo> f12951b = _$$Lambda$1kotnpso6VigZ0BCI2l3_1JpQCY.INSTANCE;

    void a(DataChangedInfo dataChangedInfo);
}
