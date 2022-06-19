package com.callapp.contacts.activity.calllog;

import com.callapp.contacts.activity.base.BaseCallLogData;
import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.framework.phone.Phone;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/SingleCallLogData.class */
public class SingleCallLogData extends BaseCallLogData {

    /* renamed from: g */
    public final int f20771g;

    /* renamed from: h */
    private final int f20772h;

    /* renamed from: i */
    private final String f20773i;

    public SingleCallLogData(int i, Date date, String str, Phone phone, int i2, int i3, String str2, int i4, SimManager.SimId simId) {
        super(i, date, str, phone, i3, str2, simId);
        this.f20771g = i2;
        this.f20772h = i4;
        this.f20773i = DateUtils.m27137a(i4);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallLogData, com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || !(obj instanceof SingleCallLogData)) {
            return false;
        }
        SingleCallLogData singleCallLogData = (SingleCallLogData) obj;
        return this.f20276e == singleCallLogData.f20276e && this.f20277f == singleCallLogData.getSimId();
    }

    public String getDuration() {
        return this.f20773i;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallLogData, com.callapp.contacts.activity.base.BaseAdapterItemData
    public int hashCode() {
        return (((super.hashCode() * 31) + this.f20772h) * 31) + this.f20771g;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallLogData, com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean includeContactIdInHashcodeAndEquals() {
        return false;
    }
}
