package com.callapp.contacts.api.helper.instantmessaging.basetypes;

import android.content.Context;
import com.callapp.contacts.api.helper.instantmessaging.ShareData;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.model.contact.ContactData;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender.class */
public interface ImSender {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender$_CC.class */
    public final /* synthetic */ class _CC {
        public static String $default$getPackageName(ImSender imSender) {
            return "";
        }
    }

    boolean canUseIm(ContactData contactData);

    String getAnalyticsNameLabel();

    int getImColor();

    int getImIconResId();

    String getPackageName();

    String getShareReferTexBody();

    String getShareReferTextSubject(String str, boolean z);

    Singletons.SenderType getType();

    boolean hasIMAccount(ContactData contactData);

    boolean isAppInstalled();

    void openIm(Context context, ContactData contactData);

    void share(ShareData shareData);
}
