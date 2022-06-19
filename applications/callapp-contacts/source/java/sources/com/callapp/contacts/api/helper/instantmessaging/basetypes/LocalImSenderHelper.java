package com.callapp.contacts.api.helper.instantmessaging.basetypes;

import com.callapp.contacts.model.contact.ContactData;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instantmessaging/basetypes/LocalImSenderHelper.class */
public abstract class LocalImSenderHelper extends BaseImSenderHelper {
    public LocalImSenderHelper(String str, int i) {
        super(str, i);
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public boolean canUseIm(ContactData contactData) {
        return hasIMAccount(contactData) && isAppInstalled();
    }
}
