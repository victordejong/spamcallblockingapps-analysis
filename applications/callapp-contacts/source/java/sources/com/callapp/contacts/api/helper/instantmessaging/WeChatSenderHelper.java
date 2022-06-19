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
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instantmessaging/WeChatSenderHelper.class */
public class WeChatSenderHelper extends LocalImSenderHelper {
    public WeChatSenderHelper() {
        super(Constants.WECHAT_INTENT_COMPONENT_NAME, 2131231627);
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public String getAnalyticsNameLabel() {
        return "wc";
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public int getImColor() {
        return 2131100225;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public String getPackageName() {
        return Constants.WECHAT_ACCOUNT_TYPE;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public Singletons.SenderType getType() {
        return Singletons.SenderType.WE_CHAT;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public boolean hasIMAccount(ContactData contactData) {
        return contactData.hasWeChatAccount();
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public void openIm(Context context, ContactData contactData) {
        super.openIm(context, contactData);
        if (!contactData.isContactInDevice()) {
            PopupManager.get().m28207a(context, new ExternalComAddContactFirstPopup(contactData, "WeChat"));
            return;
        }
        Long l = (Long) new ContentQuery(ContactsContract.Data.CONTENT_URI).m29023a(Constants.ID_COLUMN).m29014b((Column<String>) Constants.CONTACT_ID_COLUMN, "=", (String) Long.valueOf(contactData.getDeviceId())).m29012b("mimetype", "=", "vnd.android.cursor.item/vnd.com.tencent.mm.chatting.profile").m29025a((RowCallback<RowCallback<Long>>) new RowCallback<Long>() { // from class: com.callapp.contacts.api.helper.instantmessaging.WeChatSenderHelper.1
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public /* synthetic */ Long onRow(RowContext rowContext) {
                return (Long) rowContext.m29003a(Constants.ID_COLUMN);
            }
        }, (RowCallback<Long>) null);
        boolean z = false;
        if (l != null) {
            z = false;
            if (l.longValue() > 0) {
                Uri withAppendedPath = Uri.withAppendedPath(ContactsContract.Data.CONTENT_URI, String.valueOf(l));
                Intent intent = new Intent("android.intent.action.VIEW", withAppendedPath);
                intent.setDataAndType(withAppendedPath, "vnd.android.cursor.item/vnd.com.tencent.mm.chatting.profile");
                z = false;
                if (Activities.m27672a(intent)) {
                    intent.addFlags(Activities.getIntentFlagForNewDocument());
                    Activities.m27685a(context, intent);
                    z = true;
                }
            }
        }
        if (z) {
            return;
        }
        Intent intent2 = new Intent("android.intent.action.MAIN");
        intent2.setComponent(ComponentName.unflattenFromString(Constants.WECHAT_INTENT_COMPONENT_NAME));
        if (!Activities.m27672a(intent2)) {
            return;
        }
        intent2.addFlags(Activities.getIntentFlagForNewDocument());
        Activities.m27685a(context, intent2);
    }
}
