package com.callapp.contacts.popup;

import android.app.Activity;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.contact.NoDeviceContactPopup;
import com.callapp.contacts.util.Activities;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ExternalComAddContactFirstPopup.class */
public class ExternalComAddContactFirstPopup extends NoDeviceContactPopup {

    /* renamed from: a */
    private final String f26877a;

    public ExternalComAddContactFirstPopup(ContactData contactData, String str) {
        super(contactData);
        this.f26877a = str;
    }

    @Override // com.callapp.contacts.popup.contact.NoDeviceContactPopup, com.callapp.contacts.popup.contact.BaseContactPopup, com.callapp.contacts.manager.popup.ResultPopup
    /* renamed from: a */
    public final void mo27637a(Activity activity) {
        PopupManager.get().m28209a(activity, m27943a(activity, Activities.m27697a(2131886209, this.f26877a)));
    }
}
