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

    /* renamed from: d  reason: collision with root package name */
    protected BaseContactPopup f15541d;

    public NoDeviceContactPopup(ContactData contactData) {
        super(contactData);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final DialogSimpleMessage a(final Activity activity, String str) {
        return new DialogSimpleMessage(null, str, Activities.getString(2131886205), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.popup.contact.NoDeviceContactPopup.2
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity2) {
                NoDeviceContactPopup noDeviceContactPopup = NoDeviceContactPopup.this;
                noDeviceContactPopup.f15541d = new AddContactPopup(noDeviceContactPopup.f15424c) { // from class: com.callapp.contacts.popup.contact.NoDeviceContactPopup.2.1
                    @Override // com.callapp.contacts.popup.contact.AddContactPopup, com.callapp.contacts.popup.contact.BaseContactPopup
                    public final void a(long j) {
                        NoDeviceContactPopup.this.a(j);
                    }
                };
            }
        }, null, new DialogPopup.IDialogSimpleListener() { // from class: com.callapp.contacts.popup.contact.NoDeviceContactPopup.1
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
            public final void a(DialogPopup dialogPopup) {
                if (NoDeviceContactPopup.this.f15541d == null) {
                    activity.finish();
                } else {
                    NoDeviceContactPopup.this.f15541d.a(activity);
                }
            }

            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
            public final void b(DialogPopup dialogPopup) {
            }

            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener, android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
            }
        });
    }

    @Override // com.callapp.contacts.popup.contact.BaseContactPopup
    public void a(long j) {
        b(j);
    }

    @Override // com.callapp.contacts.popup.contact.BaseContactPopup, com.callapp.contacts.manager.popup.ResultPopup
    public void a(Activity activity) {
        PopupManager.get().a(activity, a(activity, Activities.getString(2131886802)));
    }

    @Override // com.callapp.contacts.popup.contact.BaseContactPopup, com.callapp.contacts.manager.popup.ActivityResult
    public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
        BaseContactPopup baseContactPopup = this.f15541d;
        if (baseContactPopup != null) {
            baseContactPopup.onActivityResult(activity, i, i2, intent);
        }
    }
}
