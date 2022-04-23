package com.callapp.contacts.api.helper.instantmessaging;

import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.provider.ContactsContract;
import com.callapp.contacts.api.helper.instantmessaging.basetypes.LocalImSenderHelper;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.ExternalComAddContactFirstPopup;
import com.callapp.contacts.util.Activities;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instantmessaging/GooglePlusHangoutSenderHelper.class */
public class GooglePlusHangoutSenderHelper extends LocalImSenderHelper {
    public GooglePlusHangoutSenderHelper() {
        super(null, 2131231620);
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public int getImColor() {
        return 2131099913;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public Singletons.SenderType getType() {
        return Singletons.SenderType.GOOGLE_PLUS_HANGOUT;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public boolean hasIMAccount(ContactData contactData) {
        return contactData.hasGooglePlusHangoutAccount();
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public boolean isAppInstalled() {
        Uri withAppendedId = ContentUris.withAppendedId(ContactsContract.Data.CONTENT_URI, 1234L);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(withAppendedId);
        intent.setType(Constants.GOOGLE_PLUS_HANGOUT_DATA_ITEM_TYPE);
        return Activities.a(intent);
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public void openIm(Context context, ContactData contactData) {
        super.openIm(context, contactData);
        if (contactData.isContactInDevice()) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setType(Constants.GOOGLE_PLUS_HANGOUT_DATA_ITEM_TYPE);
            intent.setData(ContentUris.withAppendedId(ContactsContract.Data.CONTENT_URI, contactData.getGooglePlusHangoutDataId()));
            if (Activities.a(intent)) {
                intent.addFlags(Activities.getIntentFlagForNewDocument());
                Activities.a(context, intent);
                return;
            }
            return;
        }
        PopupManager.get().a(context, new ExternalComAddContactFirstPopup(contactData, "Hangout"));
    }
}
