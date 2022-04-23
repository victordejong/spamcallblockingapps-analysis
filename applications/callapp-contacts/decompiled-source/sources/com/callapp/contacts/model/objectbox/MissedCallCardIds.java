package com.callapp.contacts.model.objectbox;

import com.callapp.framework.phone.Phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/MissedCallCardIds.class */
public class MissedCallCardIds {
    private Long id;
    private long lastMissedCall;
    private int missedCallType;
    private int numberOfMissedCalls;
    private String phoneAsRaw;
    private String phoneNumber;

    public MissedCallCardIds(Phone phone, int i, long j, int i2) {
        this.phoneNumber = phone.a();
        this.phoneAsRaw = phone.getRawNumber();
        this.numberOfMissedCalls = i;
        this.lastMissedCall = j;
        this.missedCallType = i2;
    }

    public MissedCallCardIds(Long l, String str, String str2, int i, long j, int i2) {
        this.id = l;
        this.phoneNumber = str;
        this.phoneAsRaw = str2;
        this.numberOfMissedCalls = i;
        this.lastMissedCall = j;
        this.missedCallType = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MissedCallCardIds missedCallCardIds = (MissedCallCardIds) obj;
        if (this.numberOfMissedCalls != missedCallCardIds.numberOfMissedCalls || this.lastMissedCall != missedCallCardIds.lastMissedCall || this.missedCallType != missedCallCardIds.missedCallType) {
            return false;
        }
        Long l = this.id;
        if (l != null) {
            if (!l.equals(missedCallCardIds.id)) {
                return false;
            }
        } else if (missedCallCardIds.id != null) {
            return false;
        }
        String str = this.phoneNumber;
        if (str != null) {
            if (!str.equals(missedCallCardIds.phoneNumber)) {
                return false;
            }
        } else if (missedCallCardIds.phoneNumber != null) {
            return false;
        }
        String str2 = this.phoneAsRaw;
        String str3 = missedCallCardIds.phoneAsRaw;
        return str2 != null ? str2.equals(str3) : str3 == null;
    }

    public Long getId() {
        return this.id;
    }

    public long getLastMissedCall() {
        return this.lastMissedCall;
    }

    public int getMissedCallType() {
        return this.missedCallType;
    }

    public int getNumberOfMissedCalls() {
        return this.numberOfMissedCalls;
    }

    public String getPhoneAsRaw() {
        return this.phoneAsRaw;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public int hashCode() {
        Long l = this.id;
        int i = 0;
        int hashCode = l != null ? l.hashCode() : 0;
        String str = this.phoneNumber;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.phoneAsRaw;
        if (str2 != null) {
            i = str2.hashCode();
        }
        int i2 = this.numberOfMissedCalls;
        long j = this.lastMissedCall;
        return (((((((((hashCode * 31) + hashCode2) * 31) + i) * 31) + i2) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + this.missedCallType;
    }

    public void setId(Long l) {
        this.id = l;
    }

    public void setLastMissedCall(long j) {
        this.lastMissedCall = j;
    }

    public void setMissedCallType(int i) {
        this.missedCallType = i;
    }

    public void setNumberOfMissedCalls(int i) {
        this.numberOfMissedCalls = i;
    }

    public void setPhoneAsRaw(String str) {
        this.phoneAsRaw = str;
    }

    public void setPhoneNumber(String str) {
        this.phoneNumber = str;
    }

    public String toString() {
        return "MissedCallCardIds{id=" + this.id + ", phoneNumber='" + this.phoneNumber + "', phoneAsRaw='" + this.phoneAsRaw + "', numberOfMissedCalls=" + this.numberOfMissedCalls + ", lastMissedCall=" + this.lastMissedCall + ", missedCallType=" + this.missedCallType + '}';
    }
}
