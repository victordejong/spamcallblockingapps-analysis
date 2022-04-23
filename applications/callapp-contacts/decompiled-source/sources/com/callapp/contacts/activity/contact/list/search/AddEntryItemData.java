package com.callapp.contacts.activity.contact.list.search;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.interfaces.StickyHeaderSection;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/AddEntryItemData.class */
public class AddEntryItemData extends BaseViewTypeData implements StickyHeaderSection {

    /* renamed from: a  reason: collision with root package name */
    private String f12717a;

    /* renamed from: b  reason: collision with root package name */
    private int f12718b;

    public AddEntryItemData(String str) {
        this.f12717a = str;
    }

    @Override // com.callapp.contacts.activity.interfaces.StickyHeaderSection
    public int getSectionId() {
        return this.f12718b;
    }

    public String getText() {
        return this.f12717a;
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 6;
    }

    public void setSectionId(int i) {
        this.f12718b = i;
    }
}
