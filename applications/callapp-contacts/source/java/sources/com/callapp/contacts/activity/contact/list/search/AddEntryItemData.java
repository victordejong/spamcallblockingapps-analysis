package com.callapp.contacts.activity.contact.list.search;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.interfaces.StickyHeaderSection;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/AddEntryItemData.class */
public class AddEntryItemData extends BaseViewTypeData implements StickyHeaderSection {

    /* renamed from: a */
    private String f22738a;

    /* renamed from: b */
    private int f22739b;

    public AddEntryItemData(String str) {
        this.f22738a = str;
    }

    @Override // com.callapp.contacts.activity.interfaces.StickyHeaderSection
    public int getSectionId() {
        return this.f22739b;
    }

    public String getText() {
        return this.f22738a;
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 6;
    }

    public void setSectionId(int i) {
        this.f22739b = i;
    }
}
