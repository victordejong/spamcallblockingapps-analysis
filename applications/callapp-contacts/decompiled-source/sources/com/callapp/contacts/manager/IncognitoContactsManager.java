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
import io.objectbox.a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/IncognitoContactsManager.class */
public class IncognitoContactsManager {
    public static IncognitoData a(String str) {
        return (IncognitoData) CallAppApplication.get().getObjectBoxStore().d(IncognitoData.class).e().a(IncognitoData_.phoneOrIdKey, str).a().a();
    }

    public static IncognitoData b(ContactData contactData) {
        return a(ContactData.generateId(contactData.getPhone(), contactData.getDeviceId()));
    }

    public final boolean a(ContactData contactData) {
        return b(contactData) != null;
    }

    public final void c(ContactData contactData) {
        AnalyticsManager.get().a(Constants.INCOGNITO, "User added incognito contact", "", 0.0d);
        IncognitoData b2 = b(contactData);
        IncognitoData incognitoData = b2;
        if (b2 == null) {
            incognitoData = new IncognitoData();
            incognitoData.setPhoneOrIdKey(ContactData.generateId(contactData.getPhone(), contactData.getDeviceId()));
        }
        CallAppApplication.get().getObjectBoxStore().d(IncognitoData.class).a((a) incognitoData);
        contactData.setIsIncognito(true);
        Prefs.fO.set(Boolean.FALSE);
        EventBusManager.f14368a.a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f12949b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CONTACTS, false);
    }

    public long getIncognitoContactsCount() {
        return CallAppApplication.get().getObjectBoxStore().d(IncognitoData.class).b();
    }
}
