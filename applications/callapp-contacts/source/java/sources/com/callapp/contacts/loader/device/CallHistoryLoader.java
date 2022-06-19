package com.callapp.contacts.loader.device;

import com.callapp.contacts.loader.SimpleContactLoader;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.framework.phone.Phone;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/CallHistoryLoader.class */
public class CallHistoryLoader extends SimpleContactLoader {
    /* renamed from: a */
    public static void m28857a(ContactData contactData) {
        HashMap hashMap = new HashMap(contactData.getPhones().size());
        for (Phone phone : contactData.getPhones()) {
            hashMap.put(phone.m26101a(), CallLogUtils.m27555b(Collections.singletonList(phone)));
        }
        if (!contactData.isCallHistoryListEquals(hashMap)) {
            contactData.setCallHistoryData(hashMap);
            contactData.updateCallHistoryData();
        }
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    /* renamed from: a */
    public final void mo27726a(LoadContext loadContext) {
        if (loadContext.f25323b.contains(ContactField.callHistoryData)) {
            m28857a(loadContext.f25322a);
        }
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.phone);
    }
}
