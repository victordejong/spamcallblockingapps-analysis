package com.callapp.contacts.api.helper.instantmessaging;

import android.content.Context;
import android.provider.Telephony;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.local.SmsAction;
import com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper;
import com.callapp.contacts.manager.ActionsManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.model.contact.ContactData;
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instantmessaging/SmsSenderHelper.class */
public class SmsSenderHelper extends BaseImSenderHelper {
    public SmsSenderHelper() {
        super(null, 2131231624);
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public boolean canUseIm(ContactData contactData) {
        return true;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public String getAnalyticsNameLabel() {
        return MRAIDNativeFeature.SMS;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public int getImColor() {
        return 2131100121;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public String getPackageName() {
        return Telephony.Sms.getDefaultSmsPackage(CallAppApplication.get());
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public Singletons.SenderType getType() {
        return Singletons.SenderType.SMS;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public boolean hasIMAccount(ContactData contactData) {
        return true;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public boolean isAppInstalled() {
        return true;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public void openIm(Context context, ContactData contactData) {
        super.openIm(context, contactData);
        ((SmsAction) ActionsManager.get().a(SmsAction.class)).a(context, contactData);
    }
}
