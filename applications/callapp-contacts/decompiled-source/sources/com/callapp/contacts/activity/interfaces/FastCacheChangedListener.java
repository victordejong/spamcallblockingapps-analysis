package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.model.contact.ContactData;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/FastCacheChangedListener.class */
public interface FastCacheChangedListener {

    /* renamed from: b  reason: collision with root package name */
    public static final EventType<FastCacheChangedListener, ContactData> f12946b = _$$Lambda$RJfvGg2ammD0WYY2sneV2JN2ZgA.INSTANCE;

    void a(ContactData contactData);
}
