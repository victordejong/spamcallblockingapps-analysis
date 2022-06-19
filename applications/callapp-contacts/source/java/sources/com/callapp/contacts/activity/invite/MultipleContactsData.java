package com.callapp.contacts.activity.invite;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/invite/MultipleContactsData.class */
public class MultipleContactsData extends BaseViewTypeData {

    /* renamed from: a */
    private List<BadgeMemoryContactItem> f23146a;

    public MultipleContactsData(List<BadgeMemoryContactItem> list) {
        this.f23146a = list;
    }

    public List<BadgeMemoryContactItem> getMultipleContactsData() {
        return this.f23146a;
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 9;
    }
}
