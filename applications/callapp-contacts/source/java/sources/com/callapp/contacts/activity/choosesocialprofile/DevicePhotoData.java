package com.callapp.contacts.activity.choosesocialprofile;

import com.callapp.contacts.activity.base.BaseViewTypeData;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/choosesocialprofile/DevicePhotoData.class */
public class DevicePhotoData extends BaseViewTypeData {

    /* renamed from: a */
    private String f20930a;

    /* renamed from: b */
    private String f20931b;

    public String getPhotoUrl() {
        return this.f20931b;
    }

    public String getTitle() {
        return this.f20930a;
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 14;
    }

    public void setPhotoUrl(String str) {
        this.f20931b = str;
    }

    public void setTitle(String str) {
        this.f20930a = str;
    }
}
