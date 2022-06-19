package com.callapp.contacts.activity.whoViewedMyProfile;

import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import com.callapp.contacts.model.objectbox.ProfileViewedData;
import com.callapp.contacts.model.objectbox.TYPE;
import com.callapp.framework.phone.Phone;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem.class */
public class WhoViewedMyProfileDataItem extends BaseAdapterItemData {

    /* renamed from: a */
    String f24635a;

    /* renamed from: b */
    ENTRYPOINT f24636b;

    /* renamed from: c */
    long f24637c;

    /* renamed from: d */
    String f24638d;

    /* renamed from: e */
    TYPE f24639e;

    /* renamed from: f */
    String f24640f;

    /* renamed from: g */
    boolean f24641g;

    /* renamed from: h */
    int f24642h;

    public WhoViewedMyProfileDataItem(ProfileViewedData profileViewedData, boolean z) {
        this.f24635a = profileViewedData.getPhoneNumber();
        this.f24636b = profileViewedData.getEntrypoint();
        this.f24637c = profileViewedData.getLastViewed();
        this.f24638d = profileViewedData.getName();
        this.f24639e = profileViewedData.getType();
        this.f24640f = profileViewedData.getEntrypoint().getView();
        this.f24641g = z;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        WhoViewedMyProfileDataItem whoViewedMyProfileDataItem = (WhoViewedMyProfileDataItem) obj;
        return this.f24637c == whoViewedMyProfileDataItem.f24637c && this.f24641g == whoViewedMyProfileDataItem.f24641g && this.f24642h == whoViewedMyProfileDataItem.f24642h && Objects.equals(this.f24635a, whoViewedMyProfileDataItem.f24635a) && this.f24636b == whoViewedMyProfileDataItem.f24636b && Objects.equals(this.f24638d, whoViewedMyProfileDataItem.f24638d) && this.f24639e == whoViewedMyProfileDataItem.f24639e && Objects.equals(this.f24640f, whoViewedMyProfileDataItem.f24640f);
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public Phone getPhone() {
        return Phone.m26093b(this.f24635a);
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 26;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.f24635a, this.f24636b, Long.valueOf(this.f24637c), this.f24638d, this.f24639e, this.f24640f, Boolean.valueOf(this.f24641g), Integer.valueOf(this.f24642h));
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean includeContactIdInHashcodeAndEquals() {
        return false;
    }
}
