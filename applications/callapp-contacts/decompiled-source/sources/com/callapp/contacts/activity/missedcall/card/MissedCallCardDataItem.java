package com.callapp.contacts.activity.missedcall.card;

import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.framework.phone.Phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem.class */
public class MissedCallCardDataItem extends BaseAdapterItemData {

    /* renamed from: a  reason: collision with root package name */
    private String f13446a;

    /* renamed from: b  reason: collision with root package name */
    private int f13447b;

    /* renamed from: c  reason: collision with root package name */
    private long f13448c;

    /* renamed from: d  reason: collision with root package name */
    private String f13449d;
    private Phone e;
    private int f;

    public MissedCallCardDataItem(String str, int i, long j, String str2, Phone phone, int i2) {
        this.f13446a = str;
        this.f13447b = i;
        this.f13448c = j;
        this.f13449d = str2;
        this.e = phone;
        this.f = i2;
    }

    public long getLastMissedCallDate() {
        return this.f13448c;
    }

    public int getMissedCallNumber() {
        return this.f13447b;
    }

    public int getMissedCallType() {
        return this.f;
    }

    public String getName() {
        return this.f13446a;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public Phone getPhone() {
        return this.e;
    }

    public String getProfileImageView() {
        return this.f13449d;
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 18;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean includeContactIdInHashcodeAndEquals() {
        return false;
    }
}
