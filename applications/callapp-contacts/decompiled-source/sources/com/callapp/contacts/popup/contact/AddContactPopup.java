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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/AddContactPopup.class */
public class AddContactPopup extends BaseContactPopup {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AddContactPopup(ContactData contactData) {
        super(contactData);
    }

    static /* synthetic */ void a(AddContactPopup addContactPopup, Activity activity, ContactData contactData, boolean z) {
        addContactPopup.a(activity, ContactUtils.a(contactData, z));
    }

    @Override // com.callapp.contacts.popup.contact.BaseContactPopup
    protected void a(long j) {
        b(j);
    }

    @Override // com.callapp.contacts.popup.contact.BaseContactPopup, com.callapp.contacts.manager.popup.ResultPopup
    public final void a(final Activity activity) {
        final DialogList dialogList = new DialogList(Activities.getString(2131886213));
        dialogList.setDialogType(Popup.DialogType.withInset);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AdapterText.ItemText(2131886744));
        arrayList.add(new AdapterText.ItemText(2131886745));
        AdapterText adapterText = new AdapterText(activity, 2131558570, arrayList);
        adapterText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.popup.contact.AddContactPopup.1
            @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
            public void onRowClicked(int i) {
                AndroidUtils.a(activity);
                switch (i) {
                    case 2131886744:
                        AddContactPopup addContactPopup = AddContactPopup.this;
                        AddContactPopup.a(addContactPopup, activity, addContactPopup.f15424c, true);
                        break;
                    case 2131886745:
                        AddContactPopup addContactPopup2 = AddContactPopup.this;
                        AddContactPopup.a(addContactPopup2, activity, addContactPopup2.f15424c, false);
                        break;
                }
                dialogList.dismiss();
            }
        });
        dialogList.setAdapter(adapterText);
        PopupManager.get().a(activity, dialogList);
    }

    @Override // com.callapp.contacts.popup.contact.BaseContactPopup, com.callapp.contacts.manager.popup.ActivityResult
    public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
        activity.finish();
        a(b(intent));
    }
}
