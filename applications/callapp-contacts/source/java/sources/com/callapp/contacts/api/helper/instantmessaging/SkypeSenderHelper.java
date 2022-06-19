package com.callapp.contacts.api.helper.instantmessaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.callapp.common.model.json.JSONIMaddress;
import com.callapp.contacts.api.helper.instantmessaging.basetypes.ImWithPresenceSenderHelper;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ChatData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.util.Activities;
import com.callapp.framework.util.StringUtils;
import java.util.Collection;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instantmessaging/SkypeSenderHelper.class */
public class SkypeSenderHelper extends ImWithPresenceSenderHelper {
    public SkypeSenderHelper() {
        super(Constants.SKYPE_INTENT_COMPONENT_NAME, 2131231623);
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImWithPresenceSenderHelper
    public Collection<? extends ChatData> getChatDatas(ContactData contactData) {
        return contactData.getSkypeData();
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public int getImColor() {
        return 2131100119;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public Singletons.SenderType getType() {
        return Singletons.SenderType.SKYPE;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public boolean hasIMAccount(ContactData contactData) {
        return contactData.hasSkypeAccount();
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public void openIm(Context context, ContactData contactData) {
        super.openIm(context, contactData);
        if (PhoneStateManager.get().isIncomingCallRingingState()) {
            return;
        }
        JSONIMaddress specificIMAccount = contactData.getSpecificIMAccount(3);
        if (specificIMAccount != null && StringUtils.m26045b((CharSequence) specificIMAccount.getIMAddress())) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("skype:" + specificIMAccount.getIMAddress() + "?chat"));
            intent.setComponent(ComponentName.unflattenFromString(Constants.SKYPE_INTENT_COMPONENT_NAME));
            if (Activities.m27672a(intent)) {
                intent.addFlags(Activities.getIntentFlagForNewDocument());
                Activities.m27685a(context, intent);
                return;
            }
        }
        Intent intent2 = new Intent("android.intent.action.MAIN");
        intent2.setComponent(ComponentName.unflattenFromString(Constants.SKYPE_INTENT_COMPONENT_NAME));
        if (!Activities.m27672a(intent2)) {
            return;
        }
        intent2.addFlags(Activities.getIntentFlagForNewDocument());
        Activities.m27685a(context, intent2);
    }
}
