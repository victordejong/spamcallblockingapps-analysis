package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.event.bus.EventType;
import com.callapp.framework.phone.Phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/OnMissedCallCardChangeListener.class */
public interface OnMissedCallCardChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public static final EventType<OnMissedCallCardChangeListener, Phone> f12953a = _$$Lambda$WLkTLktkV_bsrmOVEpJ2ntxLWeE.INSTANCE;

    void b(Phone phone);
}
