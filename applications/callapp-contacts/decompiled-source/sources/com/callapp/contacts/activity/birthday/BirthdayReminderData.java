package com.callapp.contacts.activity.birthday;

import com.callapp.contacts.model.ReminderData;
import com.callapp.contacts.model.ReminderType;
import com.callapp.framework.phone.Phone;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/birthday/BirthdayReminderData.class */
public class BirthdayReminderData extends ReminderData {
    private static final long serialVersionUID = -6075594511666758648L;
    public final Integer netId;
    public final String socialId;

    public BirthdayReminderData(Date date, long j, Phone phone, String str, Integer num, String str2) {
        super(0L, date, j, phone, str, ReminderType.BIRTHDAY);
        this.netId = num;
        this.socialId = str2;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public String calculateCacheKey() {
        return this.contactId > 0 ? super.calculateCacheKey() : String.format("Reminder_data_%s_%s", this.netId, this.socialId);
    }

    @Override // com.callapp.contacts.model.ReminderData, com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || getClass() != obj.getClass()) {
            return false;
        }
        BirthdayReminderData birthdayReminderData = (BirthdayReminderData) obj;
        if (this.contactId > 0) {
            return this.contactId == birthdayReminderData.contactId;
        }
        if (this.netId != birthdayReminderData.netId) {
            return false;
        }
        String str = this.socialId;
        return str == null ? birthdayReminderData.socialId == null : str.equals(birthdayReminderData.socialId);
    }

    @Override // com.callapp.contacts.model.ReminderData, com.callapp.contacts.activity.base.BaseAdapterItemData
    public int hashCode() {
        int i;
        int i2;
        int hashCode = super.hashCode();
        if (this.contactId > 0) {
            i = hashCode * 31;
            i2 = Long.valueOf(this.contactId).hashCode();
        } else {
            i = ((hashCode * 31) + this.netId.hashCode()) * 31;
            String str = this.socialId;
            i2 = str == null ? 0 : str.hashCode();
        }
        return i + i2;
    }

    @Override // com.callapp.contacts.model.ReminderData, com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean includeContactIdInHashcodeAndEquals() {
        return false;
    }
}
