package com.callapp.contacts.popup.contact;

import android.content.Context;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.popup.contact.DialogContactMultiNumber;
import com.callapp.framework.phone.Phone;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogChooseContactPhone.class */
public class DialogChooseContactPhone extends DialogList {
    public DialogChooseContactPhone(Context context, String str, Phone phone, final List<Phone> list, final DialogContactMultiNumber.DialogContactMultiNumberListener dialogContactMultiNumberListener) {
        super(str);
        if (list == null || list.size() <= 1) {
            dismiss();
            dialogContactMultiNumberListener.onDone(phone, false);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(new AdapterText.ItemText(list.get(i).e(), i));
        }
        AdapterText adapterText = new AdapterText(context, 2131558570, arrayList);
        adapterText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.popup.contact.DialogChooseContactPhone.1
            @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
            public void onRowClicked(int i2) {
                dialogContactMultiNumberListener.onDone((Phone) list.get(i2), false);
                DialogChooseContactPhone.this.dismiss();
            }
        });
        setAdapter(adapterText);
    }
}
