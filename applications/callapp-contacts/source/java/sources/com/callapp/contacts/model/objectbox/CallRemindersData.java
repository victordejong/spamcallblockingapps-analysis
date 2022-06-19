package com.callapp.contacts.model.objectbox;

import java.util.Date;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CallRemindersData.class */
public class CallRemindersData {
    private Date date;
    private String displayName;

    /* renamed from: id */
    private Long f26763id;
    private String jobStringId;
    private Long notificationId;
    private Long notificationTime;
    private String phoneAsRaw;

    public CallRemindersData() {
    }

    public CallRemindersData(Long l, Date date, String str, String str2, Long l2, Long l3, String str3) {
        this.f26763id = l;
        this.date = date;
        this.displayName = str;
        this.phoneAsRaw = str2;
        this.notificationTime = l2;
        this.notificationId = l3;
        this.jobStringId = str3;
    }

    public CallRemindersData(Date date, String str, String str2, Long l, Long l2) {
        this.date = date;
        this.displayName = str;
        this.phoneAsRaw = str2;
        this.notificationTime = l;
        this.notificationId = l2;
    }

    public CallRemindersData(Date date, String str, String str2, Long l, Long l2, String str3) {
        this(date, str, str2, l, l2);
        this.jobStringId = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CallRemindersData callRemindersData = (CallRemindersData) obj;
        if (!Objects.equals(this.f26763id, callRemindersData.f26763id) || !Objects.equals(this.date, callRemindersData.date) || !Objects.equals(this.displayName, callRemindersData.displayName) || !Objects.equals(this.phoneAsRaw, callRemindersData.phoneAsRaw) || !Objects.equals(this.jobStringId, callRemindersData.jobStringId) || !Objects.equals(this.notificationTime, callRemindersData.notificationTime)) {
            return false;
        }
        return Objects.equals(this.notificationId, callRemindersData.notificationId);
    }

    public Date getDate() {
        return this.date;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public Long getId() {
        return this.f26763id;
    }

    public String getJobStringId() {
        return this.jobStringId;
    }

    public Long getNotificationId() {
        return this.notificationId;
    }

    public Long getNotificationTime() {
        return this.notificationTime;
    }

    public String getPhoneAsRaw() {
        return this.phoneAsRaw;
    }

    public int hashCode() {
        Long l = this.f26763id;
        int i = 0;
        int hashCode = l != null ? l.hashCode() : 0;
        Date date = this.date;
        int hashCode2 = date != null ? date.hashCode() : 0;
        String str = this.displayName;
        int hashCode3 = str != null ? str.hashCode() : 0;
        String str2 = this.phoneAsRaw;
        int hashCode4 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.jobStringId;
        int hashCode5 = str3 != null ? str3.hashCode() : 0;
        Long l2 = this.notificationTime;
        int hashCode6 = l2 != null ? l2.hashCode() : 0;
        Long l3 = this.notificationId;
        if (l3 != null) {
            i = l3.hashCode();
        }
        return (((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }

    public void setId(Long l) {
        this.f26763id = l;
    }

    public void setJobStringId(String str) {
        this.jobStringId = str;
    }

    public void setNotificationId(Long l) {
        this.notificationId = l;
    }

    public void setNotificationTime(Long l) {
        this.notificationTime = l;
    }

    public void setPhoneAsRaw(String str) {
        this.phoneAsRaw = str;
    }

    public String toString() {
        return "CallRemindersData{id=" + this.f26763id + ", date=" + this.date + ", displayName='" + this.displayName + "', phoneAsRaw='" + this.phoneAsRaw + "', jobStringId='" + this.jobStringId + "', notificationTime=" + this.notificationTime + ", notificationId=" + this.notificationId + '}';
    }
}
