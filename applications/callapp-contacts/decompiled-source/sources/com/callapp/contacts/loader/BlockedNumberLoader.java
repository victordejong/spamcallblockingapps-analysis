package com.callapp.contacts.loader;

import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.manager.BlockManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.objectbox.BlockedNumberData;
import com.callapp.framework.phone.Phone;
import java.util.Date;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/BlockedNumberLoader.class */
public class BlockedNumberLoader extends SimpleContactLoader {
    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public final void a(LoadContext loadContext) {
        ContactData contactData = loadContext.f14535a;
        Phone phone = contactData.getPhone();
        String c2 = BlockManager.c(phone);
        if (RegexUtils.d(c2) > 0) {
            BlockedNumberData blockedNumberData = contactData.getBlockedNumberData();
            if (blockedNumberData == null) {
                contactData.setBlockedNumberData(new BlockedNumberData(c2, phone.a(), false, false, new Date().getTime()));
            } else {
                blockedNumberData.setFullName(c2);
                blockedNumberData.setWhen(new Date().getTime());
            }
            contactData.updateFullName();
        }
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.phone);
    }
}
