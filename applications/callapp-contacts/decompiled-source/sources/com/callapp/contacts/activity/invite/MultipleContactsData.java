package com.callapp.contacts.activity.invite;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/invite/MultipleContactsData.class */
public class MultipleContactsData extends BaseViewTypeData {

    /* renamed from: a  reason: collision with root package name */
    private List<BadgeMemoryContactItem> f12969a;

    public MultipleContactsData(List<BadgeMemoryContactItem> list) {
        this.f12969a = list;
    }

    public List<BadgeMemoryContactItem> getMultipleContactsData() {
        return this.f12969a;
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 9;
    }
}
