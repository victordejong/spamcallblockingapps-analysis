package com.callapp.contacts.loader;

import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.objectbox.UserSpamData;
import com.callapp.contacts.util.UserCorrectedInfoUtil;
import com.callapp.framework.util.CollectionUtils;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/UserSpamLoader.class */
public class UserSpamLoader extends DeviceIdAndPhoneBasedContactLoader {
    public static void a(ContactData contactData, UserSpamData userSpamData) {
        if (userSpamData != null) {
            contactData.setUserSpamData(userSpamData);
            contactData.updateSpamScore();
        }
    }

    @Override // com.callapp.contacts.loader.DeviceIdAndPhoneBasedContactLoader
    public final void c(LoadContext loadContext) {
        ContactData contactData = loadContext.f14535a;
        if (CollectionUtils.a(loadContext.f14536b, ContactField.spamScore)) {
            a(contactData, UserCorrectedInfoUtil.a(contactData.getPhone()));
        }
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.phone);
    }
}
