package com.callapp.contacts.activity.callreminder;

import com.callapp.contacts.model.ReminderData;
import com.callapp.contacts.model.ReminderType;
import com.callapp.framework.phone.Phone;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callreminder/CallRemindersData.class */
public class CallRemindersData extends ReminderData {
    public String jobId;
    public Long notificationId;
    public Long notificationTime;

    public CallRemindersData(Date date, Phone phone, String str, Long l, Long l2, String str2) {
        super(-1L, date, 0L, phone, str, ReminderType.CALL);
        this.notificationTime = l2;
        this.notificationId = l;
        this.jobId = str2;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public String calculateCacheKey() {
        return this.contactId > 0 ? super.calculateCacheKey() : String.format("Reminder_data_%s_%s", this.notificationId, this.notificationTime);
    }

    @Override // com.callapp.contacts.model.ReminderData, com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || getClass() != obj.getClass()) {
            return false;
        }
        CallRemindersData callRemindersData = (CallRemindersData) obj;
        if (this.contactId > 0) {
            return this.contactId == callRemindersData.contactId;
        } else if (this.jobId != callRemindersData.jobId || this.notificationId != callRemindersData.notificationId) {
            return false;
        } else {
            Long l = this.notificationTime;
            return l == null ? callRemindersData.notificationTime == null : l.equals(callRemindersData.notificationTime);
        }
    }

    @Override // com.callapp.contacts.model.ReminderData, com.callapp.contacts.activity.base.BaseAdapterItemData
    public int hashCode() {
        int i;
        int i2;
        int hashCode = super.hashCode();
        if (this.contactId > 0) {
            i2 = hashCode * 31;
            i = Long.valueOf(this.contactId).hashCode();
        } else {
            int hashCode2 = this.notificationId.hashCode();
            Long l = this.notificationTime;
            int hashCode3 = ((((hashCode * 31) + hashCode2) * 31) + (l == null ? 0 : l.hashCode())) * 31;
            String str = this.jobId;
            i2 = hashCode3;
            i = 0;
            if (str != null) {
                i = str.hashCode();
                i2 = hashCode3;
            }
        }
        return i2 + i;
    }

    @Override // com.callapp.contacts.model.ReminderData, com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean includeContactIdInHashcodeAndEquals() {
        return false;
    }
}
