package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.event.bus.EventType;
import com.callapp.framework.phone.Phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/OnMissedCallReminderMenuClickListener.class */
public interface OnMissedCallReminderMenuClickListener {

    /* renamed from: a  reason: collision with root package name */
    public static final EventType<OnMissedCallReminderMenuClickListener, Phone> f12954a = _$$Lambda$K_MDJuBvC8dIFvHU3PjEFoIF2lk.INSTANCE;

    void a(Phone phone);
}
