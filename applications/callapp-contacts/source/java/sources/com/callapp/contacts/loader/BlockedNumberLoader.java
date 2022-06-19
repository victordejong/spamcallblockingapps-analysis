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
    /* renamed from: a */
    public final void mo27726a(LoadContext loadContext) {
        ContactData contactData = loadContext.f25322a;
        Phone phone = contactData.getPhone();
        String m28745c = BlockManager.m28745c(phone);
        if (RegexUtils.m31903d(m28745c) > 0) {
            BlockedNumberData blockedNumberData = contactData.getBlockedNumberData();
            if (blockedNumberData == null) {
                contactData.setBlockedNumberData(new BlockedNumberData(m28745c, phone.m26101a(), false, false, new Date().getTime()));
            } else {
                blockedNumberData.setFullName(m28745c);
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
