package com.callapp.contacts.popup;

import android.app.Activity;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.contact.NoDeviceContactPopup;
import com.callapp.contacts.util.Activities;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ExternalComAddContactFirstPopup.class */
public class ExternalComAddContactFirstPopup extends NoDeviceContactPopup {

    /* renamed from: a  reason: collision with root package name */
    private final String f15321a;

    public ExternalComAddContactFirstPopup(ContactData contactData, String str) {
        super(contactData);
        this.f15321a = str;
    }

    @Override // com.callapp.contacts.popup.contact.NoDeviceContactPopup, com.callapp.contacts.popup.contact.BaseContactPopup, com.callapp.contacts.manager.popup.ResultPopup
    public final void a(Activity activity) {
        PopupManager.get().a(activity, a(activity, Activities.a(2131886209, this.f15321a)));
    }
}
