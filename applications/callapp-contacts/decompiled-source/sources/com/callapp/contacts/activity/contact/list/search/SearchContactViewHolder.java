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
    private TextView v;

    public SearchContactViewHolder(CallAppRow callAppRow) {
        super(callAppRow);
        TextView textView = (TextView) callAppRow.findViewById(2131362553);
        this.v = textView;
        textView.setTextColor(ThemeUtils.getColor(2131100140));
    }

    private void setDescription(CharSequence charSequence) {
        if (StringUtils.b(charSequence)) {
            this.v.setText(charSequence);
            this.v.setVisibility(0);
            return;
        }
        this.v.setVisibility(8);
        this.v.setText("");
    }

    @Override // com.callapp.contacts.activity.contact.list.ContactViewHolder
    public final void a(BaseAdapterItemData baseAdapterItemData, ContactItemViewEvents contactItemViewEvents, ScrollEvents scrollEvents, ContactsClickEvents contactsClickEvents) {
        super.a(baseAdapterItemData, contactItemViewEvents, scrollEvents, contactsClickEvents);
        if (baseAdapterItemData instanceof MemoryContactItem) {
            MemoryContactItem memoryContactItem = (MemoryContactItem) baseAdapterItemData;
            SparseIntArray sparseIntArray = memoryContactItem.descriptionHighlights;
            String j = StringUtils.j(memoryContactItem.h);
            SpannableString spannableString = j;
            if (sparseIntArray.size() != 0) {
                spannableString = ViewUtils.a(j, memoryContactItem.descriptionHighlights, u);
            }
            setDescription(spannableString);
        }
    }

    @Override // com.callapp.contacts.activity.contact.list.ContactViewHolder
    public void setViewTexts(BaseAdapterItemData baseAdapterItemData) {
        SpannableString spannableString = new SpannableString(ContactUtils.a(baseAdapterItemData.normalNumbers, baseAdapterItemData.getPhone()));
        CharSequence a2 = ViewUtils.a(StringUtils.j(baseAdapterItemData.displayName), baseAdapterItemData.textHighlights, u);
        CharSequence charSequence = a2;
        if (StringUtils.a(a2)) {
            charSequence = StringUtils.j(baseAdapterItemData.displayName);
        }
        setPhotoBackgroundAndInitials(baseAdapterItemData);
        int i = baseAdapterItemData.numberMatchIndexStart;
        int i2 = baseAdapterItemData.numberMatchIndexEnd;
        if (i >= 0 && i2 >= 0 && i2 <= spannableString.length() && i <= spannableString.length()) {
            spannableString.setSpan(new ForegroundColorSpan(u), i, i2, 18);
        }
        setName(charSequence);
        setPhone(spannableString);
    }
}
