package com.callapp.contacts.activity.contact.list.search;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.interfaces.StickyHeaderSection;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/SearchForItemData.class */
public class SearchForItemData extends BaseViewTypeData implements StickyHeaderSection {

    /* renamed from: a  reason: collision with root package name */
    private String f12798a;

    /* renamed from: b  reason: collision with root package name */
    private int f12799b;

    public SearchForItemData(String str) {
        this.f12798a = str;
    }

    @Override // com.callapp.contacts.activity.interfaces.StickyHeaderSection
    public int getSectionId() {
        return this.f12799b;
    }

    public String getSuffixText() {
        return this.f12798a;
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 7;
    }

    public void setSectionId(int i) {
        this.f12799b = i;
    }
}
