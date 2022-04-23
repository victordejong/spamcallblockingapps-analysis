package com.callapp.contacts.api.helper.instantmessaging;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.callapp.contacts.api.helper.instantmessaging.basetypes.ImWithPresenceSenderHelper;
import com.callapp.contacts.loader.im.BaseChatLoader;
import com.callapp.contacts.loader.im.YahooLoader;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.model.contact.ChatData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.util.Activities;
import java.util.Collection;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instantmessaging/YahooSenderHelper.class */
public class YahooSenderHelper extends ImWithPresenceSenderHelper {
    public YahooSenderHelper() {
        super(null, 2131231630);
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImWithPresenceSenderHelper
    public Collection<? extends ChatData> getChatDatas(ContactData contactData) {
        return contactData.getYahooData();
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public int getImColor() {
        return 2131100211;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public Singletons.SenderType getType() {
        return Singletons.SenderType.YAHOO;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public boolean hasIMAccount(ContactData contactData) {
        return true;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public void openIm(Context context, ContactData contactData) {
        super.openIm(context, contactData);
        BaseChatLoader.a(context, ContactUtils.a(contactData, 2, YahooLoader.f14722a), new BaseChatLoader.ChatStarter() { // from class: com.callapp.contacts.api.helper.instantmessaging.YahooSenderHelper.1
            @Override // com.callapp.contacts.loader.im.BaseChatLoader.ChatStarter
            public final void a(Context context2, String str) {
                Intent intent = new Intent("android.intent.action.SENDTO", new Uri.Builder().scheme("imto").authority("yahoo").appendPath(str).build());
                if (Activities.a(intent)) {
                    intent.addFlags(Activities.getIntentFlagForNewDocument());
                    Activities.a(context2, intent);
                }
            }
        });
    }
}
