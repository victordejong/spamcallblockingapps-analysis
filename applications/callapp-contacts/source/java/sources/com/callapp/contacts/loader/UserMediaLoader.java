package com.callapp.contacts.loader;

import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.UserMediaData;
import com.callapp.framework.util.StringUtils;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/UserMediaLoader.class */
public class UserMediaLoader extends DeviceIdAndPhoneBasedContactLoader {
    @Override // com.callapp.contacts.loader.DeviceIdAndPhoneBasedContactLoader
    /* renamed from: c */
    public final void mo28856c(LoadContext loadContext) {
        ContactData contactData = loadContext.f25322a;
        UserMediaData m28895a = UserMediaManager.m28895a(contactData.getDeviceId(), contactData.getPhone());
        if (m28895a == null || !StringUtils.m26045b((CharSequence) m28895a.getPhotoUrl())) {
            return;
        }
        contactData.setUserMediaData(m28895a);
        contactData.updatePhoto();
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.phone, ContactField.deviceId);
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public Set<ContactField> getLoadedFields() {
        return ContactFieldEnumSets.PHOTO_FIELDS;
    }
}
