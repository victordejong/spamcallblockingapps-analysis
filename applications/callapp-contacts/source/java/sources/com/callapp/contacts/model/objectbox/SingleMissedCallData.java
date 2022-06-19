package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.framework.phone.Phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SingleMissedCallData.class */
public class SingleMissedCallData extends BaseAdapterItemData {
    private long contactId;

    /* renamed from: id */
    protected Long f26795id;
    private int location;
    private long missedCallTime;
    private int missedCallType;
    private int numberOfMissedCalls;
    private String phoneAsRaw;

    public SingleMissedCallData() {
    }

    public SingleMissedCallData(long j, Phone phone, long j2, int i, int i2, int i3) {
        this.contactId = j;
        this.phoneAsRaw = phone.getRawNumber();
        this.missedCallTime = j2;
        this.location = i;
        this.numberOfMissedCalls = i2;
        this.missedCallType = i3;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public long getContactId() {
        return this.contactId;
    }

    public long getId() {
        return this.f26795id.longValue();
    }

    public int getLocation() {
        return this.location;
    }

    public long getMissedCallTime() {
        return this.missedCallTime;
    }

    public int getMissedCallType() {
        return this.missedCallType;
    }

    public int getNumberOfMissedCalls() {
        return this.numberOfMissedCalls;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public Phone getPhone() {
        return PhoneManager.get().m28239a(getPhoneAsRaw());
    }

    public String getPhoneAsRaw() {
        return this.phoneAsRaw;
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 19;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean includeContactIdInHashcodeAndEquals() {
        return false;
    }

    public void incrementNumberOfMissedCall() {
        this.numberOfMissedCalls++;
    }

    public void setContactId(long j) {
        this.contactId = j;
    }

    public void setId(long j) {
        this.f26795id = Long.valueOf(j);
    }

    public void setLocation(int i) {
        this.location = i;
    }

    public void setMissedCallTime(long j) {
        this.missedCallTime = j;
    }

    public void setMissedCallType(int i) {
        this.missedCallType = i;
    }

    public void setNumberOfMissedCalls(int i) {
        this.numberOfMissedCalls = i;
    }

    public void setPhone(String str) {
        this.phoneAsRaw = str;
    }
}
