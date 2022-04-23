package com.callapp.contacts.api.helper.instantmessaging.basetypes;

import android.content.Context;
import android.content.Intent;
import com.callapp.contacts.api.helper.instantmessaging.ShareData;
import com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.widget.referandearn.ReferAndEarnShareOptionsFragment;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper.class */
public abstract class BaseImSenderHelper implements ImSender, ManagedLifecycle {
    private final String componentName;
    private final int iconResId;

    public BaseImSenderHelper(String str, int i) {
        this.componentName = str;
        this.iconResId = i;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public String getAnalyticsNameLabel() {
        return "";
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public int getImIconResId() {
        return this.iconResId;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public /* synthetic */ String getPackageName() {
        return ImSender._CC.$default$getPackageName(this);
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public String getShareReferTexBody() {
        return "";
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public String getShareReferTextSubject(String str, boolean z) {
        return Activities.a(2131887550, str, ReferAndEarnShareOptionsFragment.a(getAnalyticsNameLabel(), z));
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public boolean isAppInstalled() {
        return Activities.a(this.componentName);
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public void openIm(Context context, ContactData contactData) {
        Singletons.get();
        Singletons.b(getType());
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public void share(ShareData shareData) {
        Intent intent = new Intent("android.intent.action.SEND");
        if (shareData.getImageUri() != null) {
            intent.putExtra("android.intent.extra.STREAM", shareData.getImageUri());
            intent.setType("image/*");
        }
        intent.addFlags(1);
        intent.putExtra("android.intent.extra.TEXT", getShareReferTextSubject(shareData.getContactData() != null ? shareData.getContactData().getFullName() : "", false));
        intent.setPackage(getPackageName());
        Activities.a(shareData.getContext(), intent, shareData.getActivityResult());
    }
}
