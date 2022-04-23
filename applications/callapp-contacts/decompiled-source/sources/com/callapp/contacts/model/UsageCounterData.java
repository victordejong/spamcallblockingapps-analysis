package com.callapp.contacts.model;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/UsageCounterData.class */
public class UsageCounterData {
    private long count;
    private long date;
    private long id;
    private int netCallType;
    int socialNetworkId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        UsageCounterData usageCounterData = (UsageCounterData) obj;
        return this.id == usageCounterData.id && this.socialNetworkId == usageCounterData.socialNetworkId && this.netCallType == usageCounterData.netCallType && this.count == usageCounterData.count && this.date == usageCounterData.date;
    }

    public long getCount() {
        return this.count;
    }

    public long getDate() {
        return this.date;
    }

    public long getId() {
        return this.id;
    }

    public int getNetCallType() {
        return this.netCallType;
    }

    public int getSocialNetworkId() {
        return this.socialNetworkId;
    }

    public int hashCode() {
        long j = this.id;
        int i = (int) (j ^ (j >>> 32));
        int i2 = this.socialNetworkId;
        int i3 = this.netCallType;
        long j2 = this.count;
        int i4 = (int) (j2 ^ (j2 >>> 32));
        long j3 = this.date;
        return (((((((i * 31) + i2) * 31) + i3) * 31) + i4) * 31) + ((int) (j3 ^ (j3 >>> 32)));
    }

    public void setCount(long j) {
        this.count = j;
    }

    public void setDate(long j) {
        this.date = j;
    }

    public void setId(long j) {
        this.id = j;
    }

    public void setNetCallType(int i) {
        this.netCallType = i;
    }

    public void setSocialNetworkId(int i) {
        this.socialNetworkId = i;
    }

    public String toString() {
        return "UsageCounterData{id=" + this.id + ", socialNetworkId=" + this.socialNetworkId + ", netCallType=" + this.netCallType + ", count=" + this.count + ", date=" + this.date + '}';
    }
}
