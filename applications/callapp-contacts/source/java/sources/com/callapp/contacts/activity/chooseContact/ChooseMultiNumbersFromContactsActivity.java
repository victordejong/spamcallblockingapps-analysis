package com.callapp.contacts.activity.chooseContact;

import android.content.Intent;
import android.view.View;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.activity.interfaces.OnListItemInteractionsListener;
import com.callapp.contacts.manager.BlockManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.contact.DialogMultipleChoice;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.widget.MultipleChoiceArrayAdapter;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity.class */
public class ChooseMultiNumbersFromContactsActivity extends BaseChooseFromContactsActivity {
    /* renamed from: a */
    public void m31262a(long j, String str, String... strArr) {
        Intent intent = new Intent();
        intent.putExtra(ContactDetailsActivity.EXTRA_FULL_NAME, str);
        intent.putExtra(Constants.EXTRA_CONTACT_ID, j);
        intent.putExtra("phone nums", strArr);
        setResult(-1, intent);
        finish();
    }

    /* renamed from: a */
    public /* synthetic */ void m31261a(View view, BaseAdapterItemData baseAdapterItemData) {
        if (baseAdapterItemData instanceof MemoryContactItem) {
            final MemoryContactItem memoryContactItem = (MemoryContactItem) baseAdapterItemData;
            final ArrayList arrayList = new ArrayList(memoryContactItem.normalNumbers.size());
            for (String str : memoryContactItem.normalNumbers) {
                Phone m28239a = PhoneManager.get().m28239a(str);
                if (!BlockManager.m28746b(m28239a)) {
                    arrayList.add(m28239a);
                }
            }
            if (arrayList.size() == 0) {
                FeedbackManager.get().m28664b(Activities.m27697a(2131886647, StringUtils.m26020j(memoryContactItem.displayName)), (Integer) null);
            } else if (arrayList.size() == 1) {
                m31262a(memoryContactItem.contactId, memoryContactItem.displayName, ((Phone) arrayList.get(0)).getRawNumber());
            } else {
                ArrayList arrayList2 = new ArrayList();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(new MultipleChoiceArrayAdapter.MultipleChoiceRowData(((Phone) it2.next()).getRawNumber(), false));
                }
                PopupManager.get().m28209a(this, new DialogMultipleChoice(StringUtils.m26020j(memoryContactItem.displayName), arrayList2, new DialogMultipleChoice.MultipleChoiceDialogListener() { // from class: com.callapp.contacts.activity.chooseContact.ChooseMultiNumbersFromContactsActivity.1
                    @Override // com.callapp.contacts.popup.contact.DialogMultipleChoice.MultipleChoiceDialogListener
                    /* renamed from: a */
                    public final void mo27956a() {
                    }

                    @Override // com.callapp.contacts.popup.contact.DialogMultipleChoice.MultipleChoiceDialogListener
                    /* renamed from: a */
                    public final void mo27955a(ArrayList<Integer> arrayList3) {
                        if (arrayList3.size() > 0) {
                            ArrayList arrayList4 = new ArrayList(arrayList3.size());
                            Iterator<Integer> it3 = arrayList3.iterator();
                            while (it3.hasNext()) {
                                arrayList4.add(((Phone) arrayList.get(it3.next().intValue())).getRawNumber());
                            }
                            ChooseMultiNumbersFromContactsActivity.this.m31262a(memoryContactItem.contactId, memoryContactItem.displayName, (String[]) arrayList4.toArray(new String[arrayList4.size()]));
                        }
                    }
                }) { // from class: com.callapp.contacts.activity.chooseContact.ChooseMultiNumbersFromContactsActivity.2
                    @Override // com.callapp.contacts.popup.contact.DialogMultipleChoice
                    /* renamed from: a */
                    public final boolean mo27958a() {
                        return false;
                    }
                });
            }
        }
    }

    @Override // com.callapp.contacts.activity.chooseContact.TopBarWithSearchActivity
    /* renamed from: b */
    public final <T extends BaseAdapterItemData> OnListItemInteractionsListener<T> mo31254b() {
        return new OnListItemInteractionsListener() { // from class: com.callapp.contacts.activity.chooseContact._$$Lambda$ChooseMultiNumbersFromContactsActivity$GYmU_oGebj0u46YWFFqlsZoNDwQ
            @Override // com.callapp.contacts.activity.interfaces.OnListItemInteractionsListener
            public final void onListItemInteracted(View view, Object obj) {
                ChooseMultiNumbersFromContactsActivity.this.m31261a(view, (BaseAdapterItemData) obj);
            }
        };
    }
}
