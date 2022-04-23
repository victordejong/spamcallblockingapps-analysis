package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.CallRemindersData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CallRemindersDataCursor.class */
public final class CallRemindersDataCursor extends Cursor<CallRemindersData> {
    private static final CallRemindersData_.CallRemindersDataIdGetter ID_GETTER = CallRemindersData_.__ID_GETTER;
    private static final int __ID_date = CallRemindersData_.date.f36237c;
    private static final int __ID_displayName = CallRemindersData_.displayName.f36237c;
    private static final int __ID_phoneAsRaw = CallRemindersData_.phoneAsRaw.f36237c;
    private static final int __ID_jobStringId = CallRemindersData_.jobStringId.f36237c;
    private static final int __ID_notificationTime = CallRemindersData_.notificationTime.f36237c;
    private static final int __ID_notificationId = CallRemindersData_.notificationId.f36237c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CallRemindersDataCursor$Factory.class */
    static final class Factory implements b<CallRemindersData> {
        @Override // io.objectbox.b.b
        public final Cursor<CallRemindersData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new CallRemindersDataCursor(transaction, j, boxStore);
        }
    }

    public CallRemindersDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, CallRemindersData_.__INSTANCE, boxStore);
    }

    public final long getId(CallRemindersData callRemindersData) {
        return ID_GETTER.getId(callRemindersData);
    }

    public final long put(CallRemindersData callRemindersData) {
        Long id = callRemindersData.getId();
        String displayName = callRemindersData.getDisplayName();
        int i = displayName != null ? __ID_displayName : 0;
        String phoneAsRaw = callRemindersData.getPhoneAsRaw();
        int i2 = phoneAsRaw != null ? __ID_phoneAsRaw : 0;
        String jobStringId = callRemindersData.getJobStringId();
        int i3 = jobStringId != null ? __ID_jobStringId : 0;
        Long notificationTime = callRemindersData.getNotificationTime();
        int i4 = notificationTime != null ? __ID_notificationTime : 0;
        Long notificationId = callRemindersData.getNotificationId();
        int i5 = notificationId != null ? __ID_notificationId : 0;
        Date date = callRemindersData.getDate();
        int i6 = date != null ? __ID_date : 0;
        long collect313311 = collect313311(this.cursor, id != null ? id.longValue() : 0L, 3, i, displayName, i2, phoneAsRaw, i3, jobStringId, 0, null, i4, i4 != 0 ? notificationTime.longValue() : 0L, i5, i5 != 0 ? notificationId.longValue() : 0L, i6, i6 != 0 ? date.getTime() : 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        callRemindersData.setId(Long.valueOf(collect313311));
        return collect313311;
    }
}
