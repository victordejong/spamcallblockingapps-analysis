package com.callapp.contacts.popup.contact;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.util.Activities;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/NoDeviceContactPopup.class */
public class NoDeviceContactPopup extends BaseContactPopup {

    /* renamed from: d */
    protected BaseContactPopup f27270d;

    public NoDeviceContactPopup(ContactData contactData) {
        super(contactData);
    }

    /* renamed from: a */
    public final DialogSimpleMessage m27943a(final Activity activity, String str) {
        return new DialogSimpleMessage(null, str, Activities.getString(2131886205), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.popup.contact.NoDeviceContactPopup.2
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity2) {
                NoDeviceContactPopup noDeviceContactPopup = NoDeviceContactPopup.this;
                noDeviceContactPopup.f27270d = new AddContactPopup(noDeviceContactPopup.f27007c) { // from class: com.callapp.contacts.popup.contact.NoDeviceContactPopup.2.1
                    @Override // com.callapp.contacts.popup.contact.AddContactPopup, com.callapp.contacts.popup.contact.BaseContactPopup
                    /* renamed from: a */
                    public final void mo27942a(long j) {
                        NoDeviceContactPopup.this.mo27942a(j);
                    }
                };
            }
        }, null, new DialogPopup.IDialogSimpleListener() { // from class: com.callapp.contacts.popup.contact.NoDeviceContactPopup.1
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
            /* renamed from: a */
            public final void mo26209a(DialogPopup dialogPopup) {
                if (NoDeviceContactPopup.this.f27270d == null) {
                    activity.finish();
                } else {
                    NoDeviceContactPopup.this.f27270d.mo27637a(activity);
                }
            }

            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
            /* renamed from: b */
            public final void mo26208b(DialogPopup dialogPopup) {
            }

            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener, android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
            }
        });
    }

    @Override // com.callapp.contacts.popup.contact.BaseContactPopup
    /* renamed from: a */
    public void mo27942a(long j) {
        m28008b(j);
    }

    @Override // com.callapp.contacts.popup.contact.BaseContactPopup, com.callapp.contacts.manager.popup.ResultPopup
    /* renamed from: a */
    public void mo27637a(Activity activity) {
        PopupManager.get().m28209a(activity, m27943a(activity, Activities.getString(2131886802)));
    }

    @Override // com.callapp.contacts.popup.contact.BaseContactPopup, com.callapp.contacts.manager.popup.ActivityResult
    public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
        BaseContactPopup baseContactPopup = this.f27270d;
        if (baseContactPopup != null) {
            baseContactPopup.onActivityResult(activity, i, i2, intent);
        }
    }
}
