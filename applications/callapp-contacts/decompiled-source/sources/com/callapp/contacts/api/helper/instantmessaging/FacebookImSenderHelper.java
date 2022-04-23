package com.callapp.contacts.api.helper.instantmessaging;

import com.callapp.contacts.api.helper.instantmessaging.basetypes.ReferAndEarnSenderHelper;
import com.callapp.contacts.manager.Singletons;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0016J\b\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"Lcom/callapp/contacts/api/helper/instantmessaging/FacebookImSenderHelper;", "Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ReferAndEarnSenderHelper;", "()V", "getAnalyticsNameLabel", "", "getImColor", "", "getPackageName", "getType", "Lcom/callapp/contacts/manager/Singletons$SenderType;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instantmessaging/FacebookImSenderHelper.class */
public final class FacebookImSenderHelper extends ReferAndEarnSenderHelper {
    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ReferAndEarnSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public final String getAnalyticsNameLabel() {
        return "fb";
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public final int getImColor() {
        return 2131099906;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public final String getPackageName() {
        return "com.facebook.katana";
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public final Singletons.SenderType getType() {
        return Singletons.SenderType.FACEBOOK;
    }
}
