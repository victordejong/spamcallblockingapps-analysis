package com.callapp.contacts.activity.whoViewedMyProfile;

import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import com.callapp.contacts.model.objectbox.ProfileViewedData;
import com.callapp.contacts.model.objectbox.TYPE;
import com.callapp.framework.phone.Phone;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem.class */
public class WhoViewedMyProfileDataItem extends BaseAdapterItemData {

    /* renamed from: a  reason: collision with root package name */
    String f14014a;

    /* renamed from: b  reason: collision with root package name */
    ENTRYPOINT f14015b;

    /* renamed from: c  reason: collision with root package name */
    long f14016c;

    /* renamed from: d  reason: collision with root package name */
    String f14017d;
    TYPE e;
    String f;
    boolean g;
    int h;

    public WhoViewedMyProfileDataItem(ProfileViewedData profileViewedData, boolean z) {
        this.f14014a = profileViewedData.getPhoneNumber();
        this.f14015b = profileViewedData.getEntrypoint();
        this.f14016c = profileViewedData.getLastViewed();
        this.f14017d = profileViewedData.getName();
        this.e = profileViewedData.getType();
        this.f = profileViewedData.getEntrypoint().getView();
        this.g = z;
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
        return this.f14016c == whoViewedMyProfileDataItem.f14016c && this.g == whoViewedMyProfileDataItem.g && this.h == whoViewedMyProfileDataItem.h && Objects.equals(this.f14014a, whoViewedMyProfileDataItem.f14014a) && this.f14015b == whoViewedMyProfileDataItem.f14015b && Objects.equals(this.f14017d, whoViewedMyProfileDataItem.f14017d) && this.e == whoViewedMyProfileDataItem.e && Objects.equals(this.f, whoViewedMyProfileDataItem.f);
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public Phone getPhone() {
        return Phone.b(this.f14014a);
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 26;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.f14014a, this.f14015b, Long.valueOf(this.f14016c), this.f14017d, this.e, this.f, Boolean.valueOf(this.g), Integer.valueOf(this.h));
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean includeContactIdInHashcodeAndEquals() {
        return false;
    }
}
