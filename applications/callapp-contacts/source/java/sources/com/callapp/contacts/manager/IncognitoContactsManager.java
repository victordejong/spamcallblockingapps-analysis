package com.callapp.contacts.manager;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.objectbox.IncognitoData;
import com.callapp.contacts.model.objectbox.IncognitoData_;
import io.objectbox.C17944a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/IncognitoContactsManager.class */
public class IncognitoContactsManager {
    /* renamed from: a */
    public static IncognitoData m28656a(String str) {
        return (IncognitoData) CallAppApplication.get().getObjectBoxStore().m4727d(IncognitoData.class).m4700e().m4611a(IncognitoData_.phoneOrIdKey, str).m4618a().m4641a();
    }

    /* renamed from: b */
    public static IncognitoData m28655b(ContactData contactData) {
        return m28656a(ContactData.generateId(contactData.getPhone(), contactData.getDeviceId()));
    }

    /* renamed from: a */
    public final boolean m28657a(ContactData contactData) {
        return m28655b(contactData) != null;
    }

    /* renamed from: c */
    public final void m28654c(ContactData contactData) {
        AnalyticsManager.get().mo28446a(Constants.INCOGNITO, "User added incognito contact", "", 0.0d);
        IncognitoData m28655b = m28655b(contactData);
        IncognitoData incognitoData = m28655b;
        if (m28655b == null) {
            incognitoData = new IncognitoData();
            incognitoData.setPhoneOrIdKey(ContactData.generateId(contactData.getPhone(), contactData.getDeviceId()));
        }
        CallAppApplication.get().getObjectBoxStore().m4727d(IncognitoData.class).m4711a((C17944a) incognitoData);
        contactData.setIsIncognito(true);
        Prefs.f26503fO.set(Boolean.FALSE);
        EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CONTACTS, false);
    }

    public long getIncognitoContactsCount() {
        return CallAppApplication.get().getObjectBoxStore().m4727d(IncognitoData.class).m4709b();
    }
}
