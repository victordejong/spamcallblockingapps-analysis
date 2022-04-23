package com.callapp.contacts.loader.api;

import com.callapp.contacts.loader.DeviceIdAndPhoneBasedContactLoader;
import com.callapp.contacts.manager.IncognitoContactsManager;
import com.callapp.contacts.model.contact.ContactField;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/api/IncognitoContactLoader.class */
public class IncognitoContactLoader extends DeviceIdAndPhoneBasedContactLoader {
    @Override // com.callapp.contacts.loader.DeviceIdAndPhoneBasedContactLoader
    public final void c(LoadContext loadContext) {
        loadContext.f14535a.setIsIncognito(new IncognitoContactsManager().a(loadContext.f14535a));
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.phone, ContactField.deviceId, ContactField.deviceIdChanged);
    }
}
