package com.callapp.contacts.loader;

import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.IMExtractedPhotoData;
import com.callapp.framework.util.StringUtils;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/IMExtractorLoader.class */
public class IMExtractorLoader extends DeviceIdAndPhoneBasedContactLoader {
    @Override // com.callapp.contacts.loader.DeviceIdAndPhoneBasedContactLoader
    /* renamed from: c */
    public final void mo28856c(LoadContext loadContext) {
        ContactData contactData = loadContext.f25322a;
        IMExtractedPhotoData m28935a = IMExtractedPhotoDataManager.m28935a(contactData.getDeviceId(), contactData.getPhone());
        if (m28935a == null || !StringUtils.m26045b((CharSequence) m28935a.getUrl())) {
            return;
        }
        contactData.setImExtractedPhotoData(m28935a);
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
