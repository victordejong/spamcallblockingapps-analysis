package com.callapp.contacts.activity.base;

import com.callapp.framework.phone.Phone;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/HeaderSectionData.class */
public class HeaderSectionData extends BaseAdapterItemData {

    /* renamed from: a  reason: collision with root package name */
    private String f11161a;

    public HeaderSectionData() {
    }

    public HeaderSectionData(String str) {
        this.f11161a = str;
    }

    public String getHeaderName() {
        return this.f11161a;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public Phone getPhone() {
        return null;
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 10;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    protected boolean includeContactIdInHashcodeAndEquals() {
        return false;
    }
}
