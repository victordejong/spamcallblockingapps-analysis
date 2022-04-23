package com.callapp.contacts.activity.base;

import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.framework.phone.Phone;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseCallLogData.class */
public class BaseCallLogData extends BaseAdapterItemData {

    /* renamed from: a  reason: collision with root package name */
    public final int f11099a;

    /* renamed from: b  reason: collision with root package name */
    public final String f11100b;

    /* renamed from: c  reason: collision with root package name */
    public final Phone f11101c;

    /* renamed from: d  reason: collision with root package name */
    public final Date f11102d;
    public final int e;
    protected SimManager.SimId f;

    public BaseCallLogData(int i, Date date, String str, Phone phone, int i2, String str2, SimManager.SimId simId) {
        this.f11102d = date;
        this.displayName = str;
        this.f11101c = phone;
        this.f11099a = i2;
        this.f11100b = str2;
        this.e = i;
        this.f = simId;
    }

    public BaseCallLogData(BaseCallLogData baseCallLogData) {
        super(baseCallLogData);
        this.f11102d = baseCallLogData.f11102d;
        this.displayName = baseCallLogData.displayName;
        this.f11101c = baseCallLogData.f11101c;
        this.f11099a = baseCallLogData.f11099a;
        this.f11100b = baseCallLogData.f11100b;
        this.e = baseCallLogData.e;
        this.f = baseCallLogData.f;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || !(obj instanceof BaseCallLogData)) {
            return false;
        }
        BaseCallLogData baseCallLogData = (BaseCallLogData) obj;
        if (this.e != baseCallLogData.e) {
            return false;
        }
        SimManager.SimId simId = this.f;
        return simId == null || simId.equals(baseCallLogData.getSimId());
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public Phone getPhone() {
        return this.f11101c;
    }

    public SimManager.SimId getSimId() {
        return this.f;
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 2;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public int hashCode() {
        int hashCode = super.hashCode();
        Date date = this.f11102d;
        int i = 0;
        int hashCode2 = date == null ? 0 : date.hashCode();
        int i2 = this.e;
        String str = this.f11100b;
        int hashCode3 = str == null ? 0 : str.hashCode();
        int i3 = this.f11099a;
        Phone phone = this.f11101c;
        if (phone != null) {
            i = phone.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + i2) * 31) + hashCode3) * 31) + i3) * 31) + i;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    protected boolean includeContactIdInHashcodeAndEquals() {
        return false;
    }
}
