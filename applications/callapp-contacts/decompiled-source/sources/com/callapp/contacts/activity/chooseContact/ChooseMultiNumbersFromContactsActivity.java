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
    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j, String str, String... strArr) {
        Intent intent = new Intent();
        intent.putExtra(ContactDetailsActivity.EXTRA_FULL_NAME, str);
        intent.putExtra(Constants.EXTRA_CONTACT_ID, j);
        intent.putExtra("phone nums", strArr);
        setResult(-1, intent);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view, BaseAdapterItemData baseAdapterItemData) {
        if (baseAdapterItemData instanceof MemoryContactItem) {
            final MemoryContactItem memoryContactItem = (MemoryContactItem) baseAdapterItemData;
            final ArrayList arrayList = new ArrayList(memoryContactItem.normalNumbers.size());
            for (String str : memoryContactItem.normalNumbers) {
                Phone a2 = PhoneManager.get().a(str);
                if (!BlockManager.b(a2)) {
                    arrayList.add(a2);
                }
            }
            if (arrayList.size() == 0) {
                FeedbackManager.get().b(Activities.a(2131886647, StringUtils.j(memoryContactItem.displayName)), (Integer) null);
            } else if (arrayList.size() == 1) {
                a(memoryContactItem.contactId, memoryContactItem.displayName, ((Phone) arrayList.get(0)).getRawNumber());
            } else {
                ArrayList arrayList2 = new ArrayList();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(new MultipleChoiceArrayAdapter.MultipleChoiceRowData(((Phone) it2.next()).getRawNumber(), false));
                }
                PopupManager.get().a(this, new DialogMultipleChoice(StringUtils.j(memoryContactItem.displayName), arrayList2, new DialogMultipleChoice.MultipleChoiceDialogListener() { // from class: com.callapp.contacts.activity.chooseContact.ChooseMultiNumbersFromContactsActivity.1
                    @Override // com.callapp.contacts.popup.contact.DialogMultipleChoice.MultipleChoiceDialogListener
                    public final void a() {
                    }

                    @Override // com.callapp.contacts.popup.contact.DialogMultipleChoice.MultipleChoiceDialogListener
                    public final void a(ArrayList<Integer> arrayList3) {
                        if (arrayList3.size() > 0) {
                            ArrayList arrayList4 = new ArrayList(arrayList3.size());
                            Iterator<Integer> it3 = arrayList3.iterator();
                            while (it3.hasNext()) {
                                arrayList4.add(((Phone) arrayList.get(it3.next().intValue())).getRawNumber());
                            }
                            ChooseMultiNumbersFromContactsActivity.this.a(memoryContactItem.contactId, memoryContactItem.displayName, (String[]) arrayList4.toArray(new String[arrayList4.size()]));
                        }
                    }
                }) { // from class: com.callapp.contacts.activity.chooseContact.ChooseMultiNumbersFromContactsActivity.2
                    @Override // com.callapp.contacts.popup.contact.DialogMultipleChoice
                    public final boolean a() {
                        return false;
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.chooseContact.TopBarWithSearchActivity
    public final <T extends BaseAdapterItemData> OnListItemInteractionsListener<T> b() {
        return new OnListItemInteractionsListener() { // from class: com.callapp.contacts.activity.chooseContact._$$Lambda$ChooseMultiNumbersFromContactsActivity$GYmU_oGebj0u46YWFFqlsZoNDwQ
            @Override // com.callapp.contacts.activity.interfaces.OnListItemInteractionsListener
            public final void onListItemInteracted(View view, Object obj) {
                ChooseMultiNumbersFromContactsActivity.this.a(view, (BaseAdapterItemData) obj);
            }
        };
    }
}
