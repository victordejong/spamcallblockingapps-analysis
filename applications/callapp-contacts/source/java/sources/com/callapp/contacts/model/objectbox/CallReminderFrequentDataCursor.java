package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.CallReminderFrequentData;
import com.callapp.contacts.model.objectbox.CallReminderFrequentData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor.class */
public final class CallReminderFrequentDataCursor extends Cursor<CallReminderFrequentData> {
    private final CallReminderFrequentData.FrequentTypeConverter frequentTypeConverter = new CallReminderFrequentData.FrequentTypeConverter();
    private static final CallReminderFrequentData_.CallReminderFrequentDataIdGetter ID_GETTER = CallReminderFrequentData_.__ID_GETTER;
    private static final int __ID_phoneAsGlobal = CallReminderFrequentData_.phoneAsGlobal.f62808c;
    private static final int __ID_frequentType = CallReminderFrequentData_.frequentType.f62808c;
    private static final int __ID_deleteTimeStamp = CallReminderFrequentData_.deleteTimeStamp.f62808c;
    private static final int __ID_missedCallType = CallReminderFrequentData_.missedCallType.f62808c;
    private static final int __ID_lastDeleteFromNotificationTimeStamp = CallReminderFrequentData_.lastDeleteFromNotificationTimeStamp.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor$Factory.class */
    static final class Factory implements AbstractC17949b<CallReminderFrequentData> {
        @Override // io.objectbox.p502b.AbstractC17949b
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r43v0 */
    /* JADX WARN: Type inference failed for: r43v2 */
    /* JADX WARN: Type inference failed for: r43v3 */
    /* JADX WARN: Type inference failed for: r51v0 */
    /* JADX WARN: Type inference failed for: r51v1 */
    /* JADX WARN: Type inference failed for: r51v2 */
    public final long put(CallReminderFrequentData callReminderFrequentData) {
        Long id = callReminderFrequentData.getId();
        String phoneAsGlobal = callReminderFrequentData.getPhoneAsGlobal();
        int i = phoneAsGlobal != null ? __ID_phoneAsGlobal : 0;
        CallReminderFrequentData.FrequentType frequentType = callReminderFrequentData.getFrequentType();
        int i2 = frequentType != null ? __ID_frequentType : 0;
        long j = this.cursor;
        ?? longValue = id != null ? id.longValue() : false;
        int i3 = __ID_deleteTimeStamp;
        long deleteTimeStamp = callReminderFrequentData.getDeleteTimeStamp();
        int i4 = __ID_lastDeleteFromNotificationTimeStamp;
        long lastDeleteFromNotificationTimeStamp = callReminderFrequentData.getLastDeleteFromNotificationTimeStamp();
        ?? intValue = i2 != 0 ? this.frequentTypeConverter.convertToDatabaseValue(frequentType).intValue() : false;
        long collect313311 = collect313311(j, longValue == true ? 1L : 0L, 3, i, phoneAsGlobal, 0, null, 0, null, 0, null, i3, deleteTimeStamp, i4, lastDeleteFromNotificationTimeStamp, i2, intValue == true ? 1L : 0L, __ID_missedCallType, callReminderFrequentData.getMissedCallType(), 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        callReminderFrequentData.setId(Long.valueOf(collect313311));
        return collect313311;
    }
}
