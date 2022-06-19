package com.callapp.contacts.activity.contact.list.search;

import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.SparseIntArray;
import android.widget.TextView;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.activity.base.ScrollEvents;
import com.callapp.contacts.activity.contact.list.ContactViewHolder;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.activity.interfaces.ContactItemViewEvents;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/SearchContactViewHolder.class */
public class SearchContactViewHolder extends ContactViewHolder {

    /* renamed from: v */
    private TextView f22809v;

    public SearchContactViewHolder(CallAppRow callAppRow) {
        super(callAppRow);
        TextView textView = (TextView) callAppRow.findViewById(2131362553);
        this.f22809v = textView;
        textView.setTextColor(ThemeUtils.getColor(2131100140));
    }

    private void setDescription(CharSequence charSequence) {
        if (StringUtils.m26045b(charSequence)) {
            this.f22809v.setText(charSequence);
            this.f22809v.setVisibility(0);
            return;
        }
        this.f22809v.setVisibility(8);
        this.f22809v.setText("");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [android.text.SpannableString] */
    @Override // com.callapp.contacts.activity.contact.list.ContactViewHolder
    /* renamed from: a */
    public final void mo30418a(BaseAdapterItemData baseAdapterItemData, ContactItemViewEvents contactItemViewEvents, ScrollEvents scrollEvents, ContactsClickEvents contactsClickEvents) {
        super.mo30418a(baseAdapterItemData, contactItemViewEvents, scrollEvents, contactsClickEvents);
        if (baseAdapterItemData instanceof MemoryContactItem) {
            MemoryContactItem memoryContactItem = (MemoryContactItem) baseAdapterItemData;
            SparseIntArray sparseIntArray = memoryContactItem.descriptionHighlights;
            String m26020j = StringUtils.m26020j(memoryContactItem.f22608h);
            if (sparseIntArray.size() != 0) {
                m26020j = ViewUtils.m27307a(m26020j, memoryContactItem.descriptionHighlights, f22440u);
            }
            setDescription(m26020j);
        }
    }

    @Override // com.callapp.contacts.activity.contact.list.ContactViewHolder
    public void setViewTexts(BaseAdapterItemData baseAdapterItemData) {
        SpannableString spannableString = new SpannableString(ContactUtils.m28319a(baseAdapterItemData.normalNumbers, baseAdapterItemData.getPhone()));
        CharSequence m27307a = ViewUtils.m27307a(StringUtils.m26020j(baseAdapterItemData.displayName), baseAdapterItemData.textHighlights, f22440u);
        CharSequence charSequence = m27307a;
        if (StringUtils.m26059a(m27307a)) {
            charSequence = StringUtils.m26020j(baseAdapterItemData.displayName);
        }
        setPhotoBackgroundAndInitials(baseAdapterItemData);
        int i = baseAdapterItemData.numberMatchIndexStart;
        int i2 = baseAdapterItemData.numberMatchIndexEnd;
        if (i >= 0 && i2 >= 0 && i2 <= spannableString.length() && i <= spannableString.length()) {
            spannableString.setSpan(new ForegroundColorSpan(f22440u), i, i2, 18);
        }
        setName(charSequence);
        setPhone(spannableString);
    }
}
