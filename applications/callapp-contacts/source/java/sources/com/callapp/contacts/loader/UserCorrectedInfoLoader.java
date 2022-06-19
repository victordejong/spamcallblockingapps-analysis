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
    /* renamed from: a */
    public static void m28896a(ContactData contactData, UserCorrectedData userCorrectedData) {
        if (userCorrectedData != null && StringUtils.m26045b((CharSequence) userCorrectedData.getFullName())) {
            contactData.setUserCorrectedData(userCorrectedData);
            contactData.updateFullName();
        }
        if (userCorrectedData == null || !CollectionUtils.m26068b(userCorrectedData.getUserCorrectedPositive())) {
            return;
        }
        contactData.setUserCorrectedData(userCorrectedData);
    }

    @Override // com.callapp.contacts.loader.DeviceIdAndPhoneBasedContactLoader
    /* renamed from: c */
    public final void mo28856c(LoadContext loadContext) {
        ContactData contactData = loadContext.f25322a;
        Set<ContactField> set = loadContext.f25323b;
        m28896a(contactData, (!contactData.isContactInDevice() && CollectionUtils.m26070a((Set) set, (Set) ContactFieldEnumSets.NAME_FIELDS)) || CollectionUtils.m26070a((Set) set, (Set) ContactFieldEnumSets.SOCIAL_NETWORKS_IDS) ? UserCorrectedDataManager.m28898a(contactData.getDeviceId(), contactData.getPhone().m26101a(), true) : null);
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.phone, ContactField.deviceId);
    }
}
