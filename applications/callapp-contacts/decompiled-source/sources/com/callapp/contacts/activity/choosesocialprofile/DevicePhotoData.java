package com.callapp.contacts.activity.choosesocialprofile;

import com.callapp.contacts.activity.base.BaseViewTypeData;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/choosesocialprofile/DevicePhotoData.class */
public class DevicePhotoData extends BaseViewTypeData {

    /* renamed from: a  reason: collision with root package name */
    private String f11530a;

    /* renamed from: b  reason: collision with root package name */
    private String f11531b;

    public String getPhotoUrl() {
        return this.f11531b;
    }

    public String getTitle() {
        return this.f11530a;
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 14;
    }

    public void setPhotoUrl(String str) {
        this.f11531b = str;
    }

    public void setTitle(String str) {
        this.f11530a = str;
    }
}
