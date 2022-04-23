package com.callapp.contacts.api.helper.instantmessaging;

import android.content.Intent;
import com.callapp.contacts.api.helper.instantmessaging.basetypes.ReferAndEarnSenderHelper;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.util.Activities;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0016J\b\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016¨\u0006\u000e"}, d2 = {"Lcom/callapp/contacts/api/helper/instantmessaging/InstagramImSenderHelper;", "Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ReferAndEarnSenderHelper;", "()V", "getAnalyticsNameLabel", "", "getImColor", "", "getPackageName", "getType", "Lcom/callapp/contacts/manager/Singletons$SenderType;", "share", "", "shareData", "Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instantmessaging/InstagramImSenderHelper.class */
public final class InstagramImSenderHelper extends ReferAndEarnSenderHelper {
    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ReferAndEarnSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public final String getAnalyticsNameLabel() {
        return "inst";
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public final int getImColor() {
        return 2131099936;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public final String getPackageName() {
        return "com.instagram.android";
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public final Singletons.SenderType getType() {
        return Singletons.SenderType.INSTAGRAM;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public final void share(ShareData shareData) {
        p.d(shareData, "shareData");
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/*");
        String fullName = shareData.getContactData() != null ? shareData.getContactData().getFullName() : "";
        p.b(fullName, "if (shareData.contactDat… StringUtils.EMPTY_STRING");
        intent.putExtra("android.intent.extra.TEXT", getShareReferTextSubject(fullName, false));
        intent.setPackage(getPackageName());
        Activities.a(shareData.getContext(), intent, shareData.getActivityResult());
    }
}
