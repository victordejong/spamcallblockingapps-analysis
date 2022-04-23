package com.callapp.contacts.api.helper.instantmessaging.basetypes;

import android.content.Context;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.widget.referandearn.ReferAndEarnShareOptionsFragment;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n��\b&\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\nH\u0016J\u001a\u0010\u000e\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0010\u001a\u00020\u0004H\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0012\u001a\u00020\bH\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016J\u0018\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0017"}, d2 = {"Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ReferAndEarnSenderHelper;", "Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;", "()V", "canUseIm", "", "contact", "Lcom/callapp/contacts/model/contact/ContactData;", "destroy", "", "getAnalyticsNameLabel", "", "getImIconResId", "", "getShareReferTexBody", "getShareReferTextSubject", "name", "encoded", "hasIMAccount", "init", "isAppInstalled", "openIm", "context", "Landroid/content/Context;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instantmessaging/basetypes/ReferAndEarnSenderHelper.class */
public abstract class ReferAndEarnSenderHelper extends BaseImSenderHelper {
    public ReferAndEarnSenderHelper() {
        super(null, 0);
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public boolean canUseIm(ContactData contact) {
        p.d(contact, "contact");
        return false;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public String getAnalyticsNameLabel() {
        return "";
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public int getImIconResId() {
        return 0;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public String getShareReferTexBody() {
        return "";
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public String getShareReferTextSubject(String str, boolean z) {
        ReferAndEarnShareOptionsFragment.Companion companion = ReferAndEarnShareOptionsFragment.f16892a;
        String a2 = Activities.a(2131887550, str, ReferAndEarnShareOptionsFragment.Companion.a(getAnalyticsNameLabel(), false));
        p.b(a2, "Activities.getString(R.s…Link(analyticsNameLabel))");
        return a2;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public boolean hasIMAccount(ContactData contact) {
        p.d(contact, "contact");
        return false;
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public boolean isAppInstalled() {
        return Activities.a(getPackageName());
    }

    @Override // com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper, com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender
    public void openIm(Context context, ContactData contact) {
        p.d(context, "context");
        p.d(contact, "contact");
        Singletons.get();
        Singletons.b(getType());
    }
}
