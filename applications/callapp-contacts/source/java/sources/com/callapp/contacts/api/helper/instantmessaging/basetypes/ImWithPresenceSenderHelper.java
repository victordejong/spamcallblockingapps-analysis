package com.callapp.contacts.api.helper.instantmessaging.basetypes;

import com.callapp.contacts.model.contact.ChatData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.framework.util.CollectionUtils;
import java.util.Collection;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instantmessaging/basetypes/ImWithPresenceSenderHelper.class */
public abstract class ImWithPresenceSenderHelper extends BaseImSenderHelper {
    public ImWithPresenceSenderHelper(String str, int i) {
        super(str, i);
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public boolean canUseIm(ContactData contactData) {
        return CollectionUtils.m26068b(getChatDatas(contactData));
    }

    protected abstract Collection<? extends ChatData> getChatDatas(ContactData contactData);
}
