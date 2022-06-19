package com.callapp.contacts.popup.contact;

import android.app.Activity;
import android.content.Intent;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/AddContactPopup.class */
public class AddContactPopup extends BaseContactPopup {
    public AddContactPopup(ContactData contactData) {
        super(contactData);
    }

    /* renamed from: a */
    static /* synthetic */ void m28012a(AddContactPopup addContactPopup, Activity activity, ContactData contactData, boolean z) {
        addContactPopup.m28185a(activity, ContactUtils.m28328a(contactData, z));
    }

    @Override // com.callapp.contacts.popup.contact.BaseContactPopup
    /* renamed from: a */
    protected void mo27942a(long j) {
        m28008b(j);
    }

    @Override // com.callapp.contacts.popup.contact.BaseContactPopup, com.callapp.contacts.manager.popup.ResultPopup
    /* renamed from: a */
    public final void mo27637a(final Activity activity) {
        final DialogList dialogList = new DialogList(Activities.getString(2131886213));
        dialogList.setDialogType(Popup.DialogType.withInset);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AdapterText.ItemText(2131886744));
        arrayList.add(new AdapterText.ItemText(2131886745));
        AdapterText adapterText = new AdapterText(activity, 2131558570, arrayList);
        adapterText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.popup.contact.AddContactPopup.1
            @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
            public void onRowClicked(int i) {
                AndroidUtils.m27635a(activity);
                switch (i) {
                    case 2131886744:
                        AddContactPopup addContactPopup = AddContactPopup.this;
                        AddContactPopup.m28012a(addContactPopup, activity, addContactPopup.f27007c, true);
                        break;
                    case 2131886745:
                        AddContactPopup addContactPopup2 = AddContactPopup.this;
                        AddContactPopup.m28012a(addContactPopup2, activity, addContactPopup2.f27007c, false);
                        break;
                }
                dialogList.dismiss();
            }
        });
        dialogList.setAdapter(adapterText);
        PopupManager.get().m28209a(activity, dialogList);
    }

    @Override // com.callapp.contacts.popup.contact.BaseContactPopup, com.callapp.contacts.manager.popup.ActivityResult
    public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
        activity.finish();
        mo27942a(m28007b(intent));
    }
}
