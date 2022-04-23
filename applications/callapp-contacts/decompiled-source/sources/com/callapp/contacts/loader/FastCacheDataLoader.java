package com.callapp.contacts.loader;

import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.FastCacheData;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/FastCacheDataLoader.class */
public class FastCacheDataLoader extends SimpleContactLoader {
    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public final void a(LoadContext loadContext) {
        ContactData contactData = loadContext.f14535a;
        FastCacheData a2 = FastCacheDataManager.a(contactData.getPhone(), contactData.getDeviceId());
        if (a2 != null) {
            contactData.setFastCacheData(a2);
            contactData.updateFullName();
            contactData.updatePhoto();
            contactData.updateSpamScore();
        }
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.DEVICE_ID;
    }
}
