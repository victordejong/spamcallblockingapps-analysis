package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.model.contact.ContactData;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/OnIncognitoCallStartedListener.class */
public interface OnIncognitoCallStartedListener {

    /* renamed from: a */
    public static final EventType<OnIncognitoCallStartedListener, ContactData> f23126a = _$$Lambda$znuyVXy3zu8ydiuLOP1h8LHCqLU.INSTANCE;

    void onIncognitoCallStarted(ContactData contactData);
}
