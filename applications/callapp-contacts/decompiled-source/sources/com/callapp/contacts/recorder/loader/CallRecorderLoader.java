package com.callapp.contacts.recorder.loader;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.loader.SimpleContactLoader;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.recorder.CallRecorderManager;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/loader/CallRecorderLoader.class */
public class CallRecorderLoader extends SimpleContactLoader {
    public static void a(final ContactData contactData) {
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.recorder.loader.CallRecorderLoader.1
            @Override // java.lang.Runnable
            public final void run() {
                ContactData contactData2 = ContactData.this;
                if (contactData2 != null) {
                    Collection<Phone> phones = contactData2.getPhones();
                    ArrayList arrayList = new ArrayList();
                    for (Phone phone : phones) {
                        CallRecorderManager.get();
                        arrayList.addAll(CallRecorderManager.a(phone, ContactData.this.getDeviceId()));
                    }
                    if (!CollectionUtils.a((Collection) arrayList, (Collection) ContactData.this.getRecords())) {
                        ContactData.this.setContactRecords(arrayList);
                    }
                }
            }
        });
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public final void a(LoadContext loadContext) {
        a(loadContext.f14535a);
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.deviceId, ContactField.phones);
    }
}
