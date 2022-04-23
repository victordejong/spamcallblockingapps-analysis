package com.callapp.contacts.api.helper.instantmessaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.provider.ContactsContract;
import com.callapp.contacts.api.helper.instantmessaging.basetypes.LocalImSenderHelper;
import com.callapp.contacts.framework.dao.ContentQuery;
import com.callapp.contacts.framework.dao.RowCallback;
import com.callapp.contacts.framework.dao.RowContext;
import com.callapp.contacts.framework.dao.column.Column;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.ExternalComAddContactFirstPopup;
import com.callapp.contacts.util.Activities;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instantmessaging/ViberSenderHelper.class */
public class ViberSenderHelper extends LocalImSenderHelper {
    public ViberSenderHelper() {
        super(Constants.VIBER_INTENT_COMPONENT_NAME, 2131231626);
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public String getAnalyticsNameLabel() {
        return "vb";
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public int getImColor() {
        return 2131100211;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public String getPackageName() {
        return Constants.VIBER_ACCOUNT_TYPE;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public Singletons.SenderType getType() {
        return Singletons.SenderType.VIBER;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public boolean hasIMAccount(ContactData contactData) {
        return contactData.hasViberAccount();
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public void openIm(Context context, ContactData contactData) {
        super.openIm(context, contactData);
        if (!contactData.isContactInDevice()) {
            PopupManager.get().a(context, new ExternalComAddContactFirstPopup(contactData, "Viber"));
            return;
        }
        Long l = (Long) new ContentQuery(ContactsContract.Data.CONTENT_URI).a(Constants.ID_COLUMN).b((Column<String>) Constants.CONTACT_ID_COLUMN, "=", (String) Long.valueOf(contactData.getDeviceId())).b("mimetype", "=", Constants.VIBER_NUMBER_MESSAGE_MIME_TYPE).a((RowCallback<RowCallback<Long>>) new RowCallback<Long>() { // from class: com.callapp.contacts.api.helper.instantmessaging.ViberSenderHelper.1
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public /* synthetic */ Long onRow(RowContext rowContext) {
                return (Long) rowContext.a(Constants.ID_COLUMN);
            }
        }, (RowCallback<Long>) null);
        boolean z = false;
        if (l != null) {
            z = false;
            if (l.longValue() > 0) {
                Uri withAppendedPath = Uri.withAppendedPath(ContactsContract.Data.CONTENT_URI, String.valueOf(l));
                Intent intent = new Intent("android.intent.action.VIEW", withAppendedPath);
                intent.setDataAndType(withAppendedPath, Constants.VIBER_NUMBER_MESSAGE_MIME_TYPE);
                z = false;
                if (Activities.a(intent)) {
                    intent.addFlags(Activities.getIntentFlagForNewDocument());
                    Activities.a(context, intent);
                    z = true;
                }
            }
        }
        if (!z) {
            Intent intent2 = new Intent("android.intent.action.MAIN");
            intent2.setComponent(ComponentName.unflattenFromString(Constants.VIBER_INTENT_COMPONENT_NAME));
            if (Activities.a(intent2)) {
                intent2.addFlags(Activities.getIntentFlagForNewDocument());
                Activities.a(context, intent2);
            }
        }
    }
}
