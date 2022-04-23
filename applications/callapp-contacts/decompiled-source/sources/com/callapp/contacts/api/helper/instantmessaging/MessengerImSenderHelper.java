package com.callapp.contacts.api.helper.instantmessaging;

import com.callapp.contacts.api.helper.instantmessaging.basetypes.LocalImSenderHelper;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0016J\b\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016¨\u0006\u0015"}, d2 = {"Lcom/callapp/contacts/api/helper/instantmessaging/MessengerImSenderHelper;", "Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/LocalImSenderHelper;", "()V", "getAnalyticsNameLabel", "", "getImColor", "", "getPackageName", "getType", "Lcom/callapp/contacts/manager/Singletons$SenderType;", "hasIMAccount", "", "contact", "Lcom/callapp/contacts/model/contact/ContactData;", "openIm", "", "context", "Landroid/content/Context;", "share", "shareData", "Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instantmessaging/MessengerImSenderHelper.class */
public final class MessengerImSenderHelper extends LocalImSenderHelper {
    public MessengerImSenderHelper() {
        super(Constants.MESSENGER_ACCOUNT_TYPE, 2131231621);
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public final String getAnalyticsNameLabel() {
        return "ms";
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public final int getImColor() {
        return 2131100136;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public final String getPackageName() {
        return "com.facebook.orca";
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public final Singletons.SenderType getType() {
        return Singletons.SenderType.MESSENGER;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public final boolean hasIMAccount(ContactData contact) {
        p.d(contact, "contact");
        return contact.hasMessengerAccount();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void openIm(android.content.Context r7, com.callapp.contacts.model.contact.ContactData r8) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r1 = "context"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r8
            java.lang.String r1 = "contact"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r8
            boolean r0 = r0.isContactInDevice()
            if (r0 == 0) goto L_0x008f
            com.callapp.contacts.framework.dao.ContentQuery r0 = new com.callapp.contacts.framework.dao.ContentQuery
            r1 = r0
            android.net.Uri r2 = android.provider.ContactsContract.Data.CONTENT_URI
            r1.<init>(r2)
            com.callapp.contacts.framework.dao.column.LongColumn r1 = com.callapp.contacts.model.Constants.ID_COLUMN
            com.callapp.contacts.framework.dao.column.Column r1 = (com.callapp.contacts.framework.dao.column.Column) r1
            com.callapp.contacts.framework.dao.ContentQuery r0 = r0.a(r1)
            com.callapp.contacts.framework.dao.column.LongColumn r1 = com.callapp.contacts.model.Constants.CONTACT_ID_COLUMN
            com.callapp.contacts.framework.dao.column.Column r1 = (com.callapp.contacts.framework.dao.column.Column) r1
            java.lang.String r2 = "="
            r3 = r8
            long r3 = r3.getDeviceId()
            java.lang.Long r3 = java.lang.Long.valueOf(r3)
            com.callapp.contacts.framework.dao.ContentQuery r0 = r0.b(r1, r2, r3)
            java.lang.String r1 = "mimetype"
            java.lang.String r2 = "="
            java.lang.String r3 = "vnd.android.cursor.item/com.facebook.messenger.chat"
            com.callapp.contacts.framework.dao.ContentQuery r0 = r0.b(r1, r2, r3)
            com.callapp.contacts.api.helper.instantmessaging.MessengerImSenderHelper$openIm$contactMessengerDataId$1 r1 = com.callapp.contacts.api.helper.instantmessaging.MessengerImSenderHelper$openIm$contactMessengerDataId$1.f14200a
            com.callapp.contacts.framework.dao.RowCallback r1 = (com.callapp.contacts.framework.dao.RowCallback) r1
            r2 = 0
            java.lang.Object r0 = r0.a(r1, r2)
            java.lang.Long r0 = (java.lang.Long) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x008f
            android.net.Uri r0 = android.provider.ContactsContract.Data.CONTENT_URI
            r1 = r8
            long r1 = r1.longValue()
            java.lang.String r1 = java.lang.String.valueOf(r1)
            android.net.Uri r0 = android.net.Uri.withAppendedPath(r0, r1)
            r8 = r0
            android.content.Intent r0 = new android.content.Intent
            r1 = r0
            java.lang.String r2 = "android.intent.action.VIEW"
            r3 = r8
            r1.<init>(r2, r3)
            r9 = r0
            r0 = r9
            r1 = r8
            java.lang.String r2 = "vnd.android.cursor.item/com.facebook.messenger.chat"
            android.content.Intent r0 = r0.setDataAndType(r1, r2)
            r0 = r9
            boolean r0 = com.callapp.contacts.util.Activities.a(r0)
            if (r0 == 0) goto L_0x008f
            r0 = r9
            int r1 = com.callapp.contacts.util.Activities.getIntentFlagForNewDocument()
            android.content.Intent r0 = r0.addFlags(r1)
            r0 = r7
            r1 = r9
            boolean r0 = com.callapp.contacts.util.Activities.a(r0, r1)
            r0 = 1
            r10 = r0
            goto L_0x0092
        L_0x008f:
            r0 = 0
            r10 = r0
        L_0x0092:
            r0 = r10
            if (r0 != 0) goto L_0x00a3
            com.callapp.contacts.manager.FeedbackManager r0 = com.callapp.contacts.manager.FeedbackManager.get()
            r1 = 2131887191(0x7f120457, float:1.9408982E38)
            java.lang.String r1 = com.callapp.contacts.util.Activities.getString(r1)
            r2 = 0
            r0.a(r1, r2)
        L_0x00a3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.api.helper.instantmessaging.MessengerImSenderHelper.openIm(android.content.Context, com.callapp.contacts.model.contact.ContactData):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0017, code lost:
        if (r0 == null) goto L_0x001a;
     */
    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void share(com.callapp.contacts.api.helper.instantmessaging.ShareData r7) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r1 = "shareData"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r7
            com.callapp.contacts.model.contact.ContactData r0 = r0.getContactData()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x001a
            r0 = r8
            java.lang.String r0 = r0.getFullName()
            r9 = r0
            r0 = r9
            r8 = r0
            r0 = r9
            if (r0 != 0) goto L_0x001d
        L_0x001a:
            java.lang.String r0 = ""
            r8 = r0
        L_0x001d:
            r0 = r8
            java.lang.String r1 = "shareData.contactData?.f…ls.EMPTY_STRING\n        }"
            kotlin.jvm.internal.p.b(r0, r1)
            android.content.Intent r0 = new android.content.Intent
            r1 = r0
            java.lang.String r2 = "android.intent.action.SEND"
            r1.<init>(r2)
            r9 = r0
            r0 = r9
            java.lang.String r1 = "text/*"
            android.content.Intent r0 = r0.setType(r1)
            r0 = r9
            r1 = r6
            java.lang.String r1 = r1.getPackageName()
            android.content.Intent r0 = r0.setPackage(r1)
            r0 = r9
            java.lang.String r1 = "android.intent.extra.TEXT"
            r2 = r6
            r3 = r8
            r4 = 0
            java.lang.String r2 = r2.getShareReferTextSubject(r3, r4)
            android.content.Intent r0 = r0.putExtra(r1, r2)
            r0 = r7
            android.content.Context r0 = r0.getContext()
            r1 = r9
            r2 = r7
            com.callapp.contacts.manager.popup.ActivityResult r2 = r2.getActivityResult()
            com.callapp.contacts.util.Activities.a(r0, r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.api.helper.instantmessaging.MessengerImSenderHelper.share(com.callapp.contacts.api.helper.instantmessaging.ShareData):void");
    }
}
