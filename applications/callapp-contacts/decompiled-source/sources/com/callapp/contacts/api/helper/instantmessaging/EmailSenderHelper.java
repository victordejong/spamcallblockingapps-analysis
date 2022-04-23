package com.callapp.contacts.api.helper.instantmessaging;

import android.content.Context;
import com.callapp.contacts.action.local.EmailAction;
import com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper;
import com.callapp.contacts.manager.ActionsManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.widget.referandearn.ReferAndEarnShareOptionsFragment;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instantmessaging/EmailSenderHelper.class */
public class EmailSenderHelper extends BaseImSenderHelper {
    public EmailSenderHelper() {
        super(null, 2131231619);
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public boolean canUseIm(ContactData contactData) {
        return contactData.hasVisibleEmails();
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public String getAnalyticsNameLabel() {
        return "em";
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public int getImColor() {
        return 2131099895;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public String getPackageName() {
        return "com.google.android.gm";
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public String getShareReferTexBody() {
        ReferAndEarnShareOptionsFragment.Companion companion = ReferAndEarnShareOptionsFragment.f16892a;
        return Activities.a(2131887540, ReferAndEarnShareOptionsFragment.Companion.a(getAnalyticsNameLabel(), false));
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public String getShareReferTextSubject(String str, boolean z) {
        return Activities.getString(2131887541);
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public Singletons.SenderType getType() {
        return Singletons.SenderType.EMAIL;
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
        ((EmailAction) ActionsManager.get().a(EmailAction.class)).a(context, contactData);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008c  */
    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void share(com.callapp.contacts.api.helper.instantmessaging.ShareData r7) {
        /*
            r6 = this;
            r0 = r7
            com.callapp.contacts.model.contact.ContactData r0 = r0.getContactData()
            if (r0 == 0) goto L_0x0041
            r0 = r7
            com.callapp.contacts.model.contact.ContactData r0 = r0.getContactData()
            java.util.Collection r0 = r0.getEmails()
            boolean r0 = com.callapp.framework.util.CollectionUtils.b(r0)
            if (r0 == 0) goto L_0x0041
            r0 = r7
            com.callapp.contacts.model.contact.ContactData r0 = r0.getContactData()
            java.util.Collection r0 = r0.getEmails()
            r8 = r0
            r0 = r8
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0041
            r0 = 1
            java.lang.String[] r0 = new java.lang.String[r0]
            r9 = r0
            r0 = r9
            r1 = 0
            r2 = r8
            java.util.Iterator r2 = r2.iterator()
            java.lang.Object r2 = r2.next()
            com.callapp.common.model.json.JSONEmail r2 = (com.callapp.common.model.json.JSONEmail) r2
            java.lang.String r2 = r2.getEmail()
            r0[r1] = r2
            goto L_0x0043
        L_0x0041:
            r0 = 0
            r9 = r0
        L_0x0043:
            android.content.Intent r0 = new android.content.Intent
            r1 = r0
            java.lang.String r2 = "android.intent.action.SEND"
            r1.<init>(r2)
            r8 = r0
            r0 = r8
            java.lang.String r1 = "application/image"
            android.content.Intent r0 = r0.setType(r1)
            r0 = r9
            boolean r0 = com.callapp.framework.util.CollectionUtils.b(r0)
            if (r0 == 0) goto L_0x0063
            r0 = r8
            java.lang.String r1 = "android.intent.extra.EMAIL"
            r2 = r9
            android.content.Intent r0 = r0.putExtra(r1, r2)
        L_0x0063:
            r0 = r8
            r1 = r6
            java.lang.String r1 = r1.getPackageName()
            android.content.Intent r0 = r0.setPackage(r1)
            r0 = r8
            java.lang.String r1 = "android.intent.extra.SUBJECT"
            r2 = r6
            java.lang.String r3 = ""
            r4 = 0
            java.lang.String r2 = r2.getShareReferTextSubject(r3, r4)
            android.content.Intent r0 = r0.putExtra(r1, r2)
            r0 = r8
            java.lang.String r1 = "android.intent.extra.TEXT"
            r2 = r6
            java.lang.String r2 = r2.getShareReferTexBody()
            android.content.Intent r0 = r0.putExtra(r1, r2)
            r0 = r7
            android.net.Uri r0 = r0.getImageUri()
            if (r0 == 0) goto L_0x0097
            r0 = r8
            java.lang.String r1 = "android.intent.extra.STREAM"
            r2 = r7
            android.net.Uri r2 = r2.getImageUri()
            android.content.Intent r0 = r0.putExtra(r1, r2)
        L_0x0097:
            r0 = r7
            android.content.Context r0 = r0.getContext()
            r1 = r8
            r2 = r7
            com.callapp.contacts.manager.popup.ActivityResult r2 = r2.getActivityResult()
            com.callapp.contacts.util.Activities.a(r0, r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.api.helper.instantmessaging.EmailSenderHelper.share(com.callapp.contacts.api.helper.instantmessaging.ShareData):void");
    }
}
