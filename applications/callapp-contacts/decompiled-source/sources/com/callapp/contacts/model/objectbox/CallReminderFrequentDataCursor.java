package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.CallReminderFrequentData;
import com.callapp.contacts.model.objectbox.CallReminderFrequentData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor.class */
public final class CallReminderFrequentDataCursor extends Cursor<CallReminderFrequentData> {
    private final CallReminderFrequentData.FrequentTypeConverter frequentTypeConverter = new CallReminderFrequentData.FrequentTypeConverter();
    private static final CallReminderFrequentData_.CallReminderFrequentDataIdGetter ID_GETTER = CallReminderFrequentData_.__ID_GETTER;
    private static final int __ID_phoneAsGlobal = CallReminderFrequentData_.phoneAsGlobal.f36237c;
    private static final int __ID_frequentType = CallReminderFrequentData_.frequentType.f36237c;
    private static final int __ID_deleteTimeStamp = CallReminderFrequentData_.deleteTimeStamp.f36237c;
    private static final int __ID_missedCallType = CallReminderFrequentData_.missedCallType.f36237c;
    private static final int __ID_lastDeleteFromNotificationTimeStamp = CallReminderFrequentData_.lastDeleteFromNotificationTimeStamp.f36237c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor$Factory.class */
    static final class Factory implements b<CallReminderFrequentData> {
        @Override // io.objectbox.b.b
        public final Cursor<CallReminderFrequentData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new CallReminderFrequentDataCursor(transaction, j, boxStore);
        }
    }

    public CallReminderFrequentDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, CallReminderFrequentData_.__INSTANCE, boxStore);
    }

    public final long getId(CallReminderFrequentData callReminderFrequentData) {
        return ID_GETTER.getId(callReminderFrequentData);
    }

    public final long put(CallReminderFrequentData callReminderFrequentData) {
        Long id = callReminderFrequentData.getId();
        String phoneAsGlobal = callReminderFrequentData.getPhoneAsGlobal();
        int i = phoneAsGlobal != null ? __ID_phoneAsGlobal : 0;
        CallReminderFrequentData.FrequentType frequentType = callReminderFrequentData.getFrequentType();
        int i2 = frequentType != null ? __ID_frequentType : 0;
        long collect313311 = collect313311(this.cursor, id != null ? id.longValue() : 0L, 3, i, phoneAsGlobal, 0, null, 0, null, 0, null, __ID_deleteTimeStamp, callReminderFrequentData.getDeleteTimeStamp(), __ID_lastDeleteFromNotificationTimeStamp, callReminderFrequentData.getLastDeleteFromNotificationTimeStamp(), i2, i2 != 0 ? this.frequentTypeConverter.convertToDatabaseValue(frequentType).intValue() : 0L, __ID_missedCallType, callReminderFrequentData.getMissedCallType(), 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        callReminderFrequentData.setId(Long.valueOf(collect313311));
        return collect313311;
    }
}
