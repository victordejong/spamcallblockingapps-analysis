package com.callapp.contacts.activity.missedcall.card;

import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.framework.phone.Phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem.class */
public class MissedCallCardDataItem extends BaseAdapterItemData {

    /* renamed from: a */
    private String f23879a;

    /* renamed from: b */
    private int f23880b;

    /* renamed from: c */
    private long f23881c;

    /* renamed from: d */
    private String f23882d;

    /* renamed from: e */
    private Phone f23883e;

    /* renamed from: f */
    private int f23884f;

    public MissedCallCardDataItem(String str, int i, long j, String str2, Phone phone, int i2) {
        this.f23879a = str;
        this.f23880b = i;
        this.f23881c = j;
        this.f23882d = str2;
        this.f23883e = phone;
        this.f23884f = i2;
    }

    public long getLastMissedCallDate() {
        return this.f23881c;
    }

    public int getMissedCallNumber() {
        return this.f23880b;
    }

    public int getMissedCallType() {
        return this.f23884f;
    }

    public String getName() {
        return this.f23879a;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public Phone getPhone() {
        return this.f23883e;
    }

    public String getProfileImageView() {
        return this.f23882d;
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
