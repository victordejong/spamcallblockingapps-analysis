package com.callapp.contacts.model;

import com.callapp.common.util.Objects;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/ReminderData.class */
public class ReminderData extends BaseAdapterItemData implements Comparable<ReminderData> {
    private static final long serialVersionUID = -8252863362899457906L;
    public Date date;
    public boolean isUrgentNote = false;
    public String note;
    public final Phone phone;
    public final long reminderId;
    public final ReminderType type;

    public ReminderData(long j, Date date, long j2, Phone phone, String str, ReminderType reminderType) {
        this.reminderId = j;
        this.date = date;
        this.contactId = j2;
        this.phone = phone;
        this.displayName = str;
        this.type = reminderType;
    }

    public int compareTo(ReminderData reminderData) {
        if (reminderData == null) {
            return -1;
        }
        if (reminderData.type != ReminderType.NOTES && this.type == ReminderType.NOTES) {
            return -1;
        }
        if (reminderData.type == ReminderType.NOTES && this.type != ReminderType.NOTES) {
            return 1;
        }
        if (reminderData.type == ReminderType.NOTES && this.type == ReminderType.NOTES) {
            boolean z = this.isUrgentNote;
            if (z && !reminderData.isUrgentNote) {
                return -1;
            }
            if (!z && reminderData.isUrgentNote) {
                return 1;
            }
            return this.displayName.compareToIgnoreCase(reminderData.displayName);
        }
        Date date = this.date;
        if (date == null && reminderData.date != null) {
            return 1;
        }
        if (date != null && reminderData.date == null) {
            return -1;
        }
        return (date == null && reminderData.date == null) ? this.displayName.compareToIgnoreCase(reminderData.displayName) : date.compareTo(reminderData.date);
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || !(obj instanceof ReminderData)) {
            return false;
        }
        ReminderData reminderData = (ReminderData) obj;
        return this.reminderId == reminderData.reminderId && this.type == reminderData.type && StringUtils.m26042b(this.note, reminderData.note) && this.isUrgentNote == reminderData.isUrgentNote && Objects.m31915a(this.phone, reminderData.getPhone());
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public Phone getPhone() {
        return this.phone;
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 1;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public int hashCode() {
        int hashCode = super.hashCode();
        long j = this.reminderId;
        int i = (int) (j ^ (j >>> 32));
        ReminderType reminderType = this.type;
        return (((hashCode * 31) + i) * 31) + (reminderType == null ? 0 : reminderType.hashCode());
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean includeContactIdInHashcodeAndEquals() {
        return false;
    }
}
