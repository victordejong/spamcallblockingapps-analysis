package com.callapp.contacts.loader;

import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.UserCorrectedData;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/UserCorrectedInfoLoader.class */
public class UserCorrectedInfoLoader extends DeviceIdAndPhoneBasedContactLoader {
    public static void a(ContactData contactData, UserCorrectedData userCorrectedData) {
        if (userCorrectedData != null && StringUtils.b((CharSequence) userCorrectedData.getFullName())) {
            contactData.setUserCorrectedData(userCorrectedData);
            contactData.updateFullName();
        }
        if (userCorrectedData != null && CollectionUtils.b(userCorrectedData.getUserCorrectedPositive())) {
            contactData.setUserCorrectedData(userCorrectedData);
        }
    }

    @Override // com.callapp.contacts.loader.DeviceIdAndPhoneBasedContactLoader
    public final void c(LoadContext loadContext) {
        ContactData contactData = loadContext.f14535a;
        Set<ContactField> set = loadContext.f14536b;
        a(contactData, (!contactData.isContactInDevice() && CollectionUtils.a((Set) set, (Set) ContactFieldEnumSets.NAME_FIELDS)) || CollectionUtils.a((Set) set, (Set) ContactFieldEnumSets.SOCIAL_NETWORKS_IDS) ? UserCorrectedDataManager.a(contactData.getDeviceId(), contactData.getPhone().a(), true) : null);
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.phone, ContactField.deviceId);
    }
}
