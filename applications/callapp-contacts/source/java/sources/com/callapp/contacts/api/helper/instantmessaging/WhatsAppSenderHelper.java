package com.callapp.contacts.api.helper.instantmessaging;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.api.helper.instantmessaging.basetypes.LocalImSenderHelper;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instantmessaging/WhatsAppSenderHelper.class */
public class WhatsAppSenderHelper extends LocalImSenderHelper {
    public WhatsAppSenderHelper() {
        super(Constants.WHATSAPP_INTENT_COMPONENT_NAME, 2131231629);
    }

    public WhatsAppSenderHelper(String str, int i) {
        super(str, i);
    }

    /* renamed from: a */
    private void m29165a(Context context, String str, String str2) {
        StringBuilder sb = new StringBuilder("https://wa.me/");
        sb.append(str.substring(1));
        sb.append(StringUtils.m26045b((CharSequence) str2) ? "?text=".concat(String.valueOf(str2)) : "");
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(sb.toString()));
        intent.setPackage(getPackageName());
        if (Activities.m27672a(intent)) {
            Activities.m27685a(context, intent);
        }
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public String getAnalyticsNameLabel() {
        return "wa";
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public int getImColor() {
        return 2131100226;
    }

    public String getMimeType() {
        return Constants.WHATSAPP_MINETYPE;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public String getPackageName() {
        return Constants.WHATSAPP_ACCOUNT_TYPE;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public Singletons.SenderType getType() {
        return Singletons.SenderType.WHATSAPP;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0013  */
    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean hasIMAccount(com.callapp.contacts.model.contact.ContactData r4) {
        /*
            r3 = this;
            r0 = r4
            java.util.Collection r0 = r0.getPhones()
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
        La:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L37
            r0 = r5
            java.lang.Object r0 = r0.next()
            com.callapp.framework.phone.Phone r0 = (com.callapp.framework.phone.Phone) r0
            r6 = r0
            r0 = r6
            com.google.i18n.phonenumbers.PhoneNumberUtil$d r0 = r0.getLineType()
            com.google.i18n.phonenumbers.PhoneNumberUtil$d r1 = com.google.i18n.phonenumbers.PhoneNumberUtil.EnumC16104d.MOBILE
            if (r0 == r1) goto L31
            r0 = r6
            com.google.i18n.phonenumbers.PhoneNumberUtil$d r0 = r0.getLineType()
            com.google.i18n.phonenumbers.PhoneNumberUtil$d r1 = com.google.i18n.phonenumbers.PhoneNumberUtil.EnumC16104d.FIXED_LINE_OR_MOBILE
            if (r0 != r1) goto La
        L31:
            r0 = 1
            r7 = r0
            goto L3a
        L37:
            r0 = 0
            r7 = r0
        L3a:
            r0 = r7
            if (r0 != 0) goto L52
            r0 = r4
            boolean r0 = r0.getWhatsAppDataExtraction()
            if (r0 != 0) goto L52
            r0 = r4
            boolean r0 = r0.hasWhatsappAccount()
            if (r0 == 0) goto L50
            goto L52
        L50:
            r0 = 0
            return r0
        L52:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.api.helper.instantmessaging.WhatsAppSenderHelper.hasIMAccount(com.callapp.contacts.model.contact.ContactData):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void openIm(android.content.Context r7, com.callapp.contacts.model.contact.ContactData r8) {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.api.helper.instantmessaging.WhatsAppSenderHelper.openIm(android.content.Context, com.callapp.contacts.model.contact.ContactData):void");
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public void share(ShareData shareData) {
        if (shareData.getContactData() == null || !StringUtils.m26045b((CharSequence) shareData.getContactData().getPhone().m26101a())) {
            super.share(shareData);
        } else {
            m29165a(CallAppApplication.get(), shareData.getContactData().getPhone().m26101a(), getShareReferTextSubject(shareData.getContactData() != null ? shareData.getContactData().getFullName() : "", true));
        }
    }
}
