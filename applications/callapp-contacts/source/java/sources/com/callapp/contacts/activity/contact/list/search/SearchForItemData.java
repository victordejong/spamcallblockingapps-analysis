package com.callapp.contacts.activity.contact.list.search;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.interfaces.StickyHeaderSection;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/SearchForItemData.class */
public class SearchForItemData extends BaseViewTypeData implements StickyHeaderSection {

    /* renamed from: a */
    private String f22873a;

    /* renamed from: b */
    private int f22874b;

    public SearchForItemData(String str) {
        this.f22873a = str;
    }

    @Override // com.callapp.contacts.activity.interfaces.StickyHeaderSection
    public int getSectionId() {
        return this.f22874b;
    }

    public String getSuffixText() {
        return this.f22873a;
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 7;
    }

    public void setSectionId(int i) {
        this.f22874b = i;
    }
}
