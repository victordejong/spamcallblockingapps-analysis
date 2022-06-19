package com.callapp.contacts.activity.base;

import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.framework.phone.Phone;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseCallLogData.class */
public class BaseCallLogData extends BaseAdapterItemData {

    /* renamed from: a */
    public final int f20272a;

    /* renamed from: b */
    public final String f20273b;

    /* renamed from: c */
    public final Phone f20274c;

    /* renamed from: d */
    public final Date f20275d;

    /* renamed from: e */
    public final int f20276e;

    /* renamed from: f */
    protected SimManager.SimId f20277f;

    public BaseCallLogData(int i, Date date, String str, Phone phone, int i2, String str2, SimManager.SimId simId) {
        this.f20275d = date;
        this.displayName = str;
        this.f20274c = phone;
        this.f20272a = i2;
        this.f20273b = str2;
        this.f20276e = i;
        this.f20277f = simId;
    }

    public BaseCallLogData(BaseCallLogData baseCallLogData) {
        super(baseCallLogData);
        this.f20275d = baseCallLogData.f20275d;
        this.displayName = baseCallLogData.displayName;
        this.f20274c = baseCallLogData.f20274c;
        this.f20272a = baseCallLogData.f20272a;
        this.f20273b = baseCallLogData.f20273b;
        this.f20276e = baseCallLogData.f20276e;
        this.f20277f = baseCallLogData.f20277f;
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
        if (this.f20276e != baseCallLogData.f20276e) {
            return false;
        }
        SimManager.SimId simId = this.f20277f;
        return simId == null || simId.equals(baseCallLogData.getSimId());
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public Phone getPhone() {
        return this.f20274c;
    }

    public SimManager.SimId getSimId() {
        return this.f20277f;
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 2;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public int hashCode() {
        int hashCode = super.hashCode();
        Date date = this.f20275d;
        int i = 0;
        int hashCode2 = date == null ? 0 : date.hashCode();
        int i2 = this.f20276e;
        String str = this.f20273b;
        int hashCode3 = str == null ? 0 : str.hashCode();
        int i3 = this.f20272a;
        Phone phone = this.f20274c;
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
