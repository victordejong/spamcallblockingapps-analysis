package com.callapp.contacts.activity.blocked;

import com.callapp.contacts.model.ReminderData;
import com.callapp.contacts.model.ReminderType;
import com.callapp.framework.phone.Phone;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/blocked/SpamReminderData.class */
public class SpamReminderData extends ReminderData {
    public boolean isBlocked;
    public boolean isUserData;

    public SpamReminderData(long j, Date date, long j2, Phone phone, String str, ReminderType reminderType, boolean z, boolean z2) {
        super(j, date, j2, phone, str, reminderType);
        this.isBlocked = z;
        this.isUserData = z2;
    }
}
