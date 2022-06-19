package com.callapp.contacts.api.helper.instantmessaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.provider.ContactsContract;
import com.callapp.common.model.json.JSONIMaddress;
import com.callapp.contacts.api.helper.instantmessaging.basetypes.LocalImSenderHelper;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.ExternalComAddContactFirstPopup;
import com.callapp.contacts.util.Activities;
import com.callapp.framework.util.StringUtils;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instantmessaging/DuoSenderHelper.class */
public class DuoSenderHelper extends LocalImSenderHelper {
    public DuoSenderHelper() {
        super(Constants.DUO_VIDEO_INTENT_COMPONENT_NAME, 2131231618);
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public int getImColor() {
        return 2131099894;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public Singletons.SenderType getType() {
        return Singletons.SenderType.VIBER;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public boolean hasIMAccount(ContactData contactData) {
        return contactData.hasDuoAccount();
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public void openIm(Context context, ContactData contactData) {
        String str;
        super.openIm(context, contactData);
        if (!contactData.isContactInDevice()) {
            PopupManager.get().m28207a(context, new ExternalComAddContactFirstPopup(contactData, "Duo"));
            return;
        }
        Iterator<JSONIMaddress> it2 = contactData.getImAddresses().iterator();
        while (true) {
            if (!it2.hasNext()) {
                str = null;
                break;
            }
            JSONIMaddress next = it2.next();
            if (next.getProtocol() == 1508) {
                str = next.getIMAddress();
                break;
            }
        }
        if (!StringUtils.m26045b((CharSequence) str)) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(Uri.withAppendedPath(ContactsContract.AUTHORITY_URI, "data/".concat(String.valueOf(str))), Constants.DUO_VIDEO_MIME_TYPE);
        intent.setComponent(ComponentName.unflattenFromString(Constants.DUO_VIDEO_INTENT_COMPONENT_NAME));
        intent.addFlags(Activities.getIntentFlagForNewDocument());
        Activities.m27685a(context, intent);
    }
}
