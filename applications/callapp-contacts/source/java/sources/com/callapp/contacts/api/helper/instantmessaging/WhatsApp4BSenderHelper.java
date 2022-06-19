package com.callapp.contacts.api.helper.instantmessaging;

import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.model.Constants;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instantmessaging/WhatsApp4BSenderHelper.class */
public class WhatsApp4BSenderHelper extends WhatsAppSenderHelper {
    public WhatsApp4BSenderHelper() {
        super(Constants.WHATSAPP_4B_INTENT_COMPONENT_NAME, 2131231628);
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.WhatsAppSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public String getAnalyticsNameLabel() {
        return "w4b";
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.WhatsAppSenderHelper
    public String getMimeType() {
        return Constants.WHATSAPP_4B_MINETYPE;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.WhatsAppSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public String getPackageName() {
        return Constants.WHATSAPP_4B_ACCOUNT_TYPE;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.WhatsAppSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public Singletons.SenderType getType() {
        return Singletons.SenderType.WHATSAPP4B;
    }
}
