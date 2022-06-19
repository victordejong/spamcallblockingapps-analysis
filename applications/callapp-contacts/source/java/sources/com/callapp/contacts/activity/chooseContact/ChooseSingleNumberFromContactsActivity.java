package com.callapp.contacts.activity.chooseContact;

import android.content.Intent;
import android.view.View;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.activity.interfaces.OnListItemInteractionsListener;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.contact.DialogContactMultiNumber;
import com.callapp.framework.phone.Phone;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity.class */
public class ChooseSingleNumberFromContactsActivity extends BaseChooseFromContactsActivity {
    /* renamed from: a */
    public /* synthetic */ void m31259a(View view, BaseAdapterItemData baseAdapterItemData) {
        if (baseAdapterItemData instanceof MemoryContactItem) {
            final MemoryContactItem memoryContactItem = (MemoryContactItem) baseAdapterItemData;
            Phone phone = memoryContactItem.getPhone();
            ArrayList arrayList = new ArrayList(memoryContactItem.normalNumbers.size());
            for (String str : memoryContactItem.normalNumbers) {
                arrayList.add(PhoneManager.get().m28239a(str));
            }
            ContactUtils.m28332a(this, phone, arrayList, new DialogContactMultiNumber.DialogContactMultiNumberListener() { // from class: com.callapp.contacts.activity.chooseContact.ChooseSingleNumberFromContactsActivity.1
                @Override // com.callapp.contacts.popup.contact.DialogContactMultiNumber.DialogContactMultiNumberListener
                public void onDone(Phone phone2, boolean z) {
                    ChooseSingleNumberFromContactsActivity.m31258a(ChooseSingleNumberFromContactsActivity.this, memoryContactItem.contactId, memoryContactItem.displayName, phone2.getRawNumber());
                }
            });
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m31258a(ChooseSingleNumberFromContactsActivity chooseSingleNumberFromContactsActivity, long j, String str, String str2) {
        Intent intent = new Intent();
        intent.putExtra(ContactDetailsActivity.EXTRA_FULL_NAME, str);
        intent.putExtra(Constants.EXTRA_CONTACT_ID, j);
        intent.putExtra(Constants.EXTRA_PHONE_NUMBER, str2);
        chooseSingleNumberFromContactsActivity.setResult(-1, intent);
        chooseSingleNumberFromContactsActivity.finish();
    }

    @Override // com.callapp.contacts.activity.chooseContact.TopBarWithSearchActivity
    /* renamed from: b */
    public final <T extends BaseAdapterItemData> OnListItemInteractionsListener<T> mo31254b() {
        return new OnListItemInteractionsListener() { // from class: com.callapp.contacts.activity.chooseContact._$$Lambda$ChooseSingleNumberFromContactsActivity$pE4hD6NIXBQsuiE_jK21IxHtXgw
            @Override // com.callapp.contacts.activity.interfaces.OnListItemInteractionsListener
            public final void onListItemInteracted(View view, Object obj) {
                ChooseSingleNumberFromContactsActivity.this.m31259a(view, (BaseAdapterItemData) obj);
            }
        };
    }
}
