package com.callapp.contacts.activity.chooseContact;

import android.content.Intent;
import android.view.View;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.activity.interfaces.OnListItemInteractionsListener;
import com.callapp.contacts.model.Constants;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/chooseContact/ChooseContactFromContactsActivity.class */
public class ChooseContactFromContactsActivity extends BaseChooseFromContactsActivity {
    /* renamed from: a */
    public /* synthetic */ void m31263a(View view, BaseAdapterItemData baseAdapterItemData) {
        if (baseAdapterItemData instanceof MemoryContactItem) {
            Intent intent = new Intent();
            intent.putExtra(ContactDetailsActivity.EXTRA_FULL_NAME, baseAdapterItemData.displayName);
            intent.putExtra(Constants.EXTRA_PHONE_NUMBER, baseAdapterItemData.getPhone().m26101a());
            intent.putExtra(Constants.EXTRA_CONTACT_ID, baseAdapterItemData.contactId);
            setResult(-1, intent);
        } else {
            setResult(0, null);
        }
        finish();
    }

    @Override // com.callapp.contacts.activity.chooseContact.TopBarWithSearchActivity
    /* renamed from: b */
    public final <T extends BaseAdapterItemData> OnListItemInteractionsListener<T> mo31254b() {
        return new OnListItemInteractionsListener() { // from class: com.callapp.contacts.activity.chooseContact._$$Lambda$ChooseContactFromContactsActivity$yfCR1mqMSdb_MDEh9qUG1vmxkNM
            @Override // com.callapp.contacts.activity.interfaces.OnListItemInteractionsListener
            public final void onListItemInteracted(View view, Object obj) {
                ChooseContactFromContactsActivity.this.m31263a(view, (BaseAdapterItemData) obj);
            }
        };
    }
}
