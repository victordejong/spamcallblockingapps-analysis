package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.SingleMissedCallData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SingleMissedCallDataCursor.class */
public final class SingleMissedCallDataCursor extends Cursor<SingleMissedCallData> {
    private static final SingleMissedCallData_.SingleMissedCallDataIdGetter ID_GETTER = SingleMissedCallData_.__ID_GETTER;
    private static final int __ID_contactId = SingleMissedCallData_.contactId.f62808c;
    private static final int __ID_phoneAsRaw = SingleMissedCallData_.phoneAsRaw.f62808c;
    private static final int __ID_missedCallTime = SingleMissedCallData_.missedCallTime.f62808c;
    private static final int __ID_numberOfMissedCalls = SingleMissedCallData_.numberOfMissedCalls.f62808c;
    private static final int __ID_missedCallType = SingleMissedCallData_.missedCallType.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SingleMissedCallDataCursor$Factory.class */
    static final class Factory implements AbstractC17949b<SingleMissedCallData> {
        @Override // io.objectbox.p502b.AbstractC17949b
        public final Cursor<SingleMissedCallData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new SingleMissedCallDataCursor(transaction, j, boxStore);
        }
    }

    public SingleMissedCallDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, SingleMissedCallData_.__INSTANCE, boxStore);
    }

    public final long getId(SingleMissedCallData singleMissedCallData) {
        return ID_GETTER.getId(singleMissedCallData);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r41v0 */
    /* JADX WARN: Type inference failed for: r41v2 */
    /* JADX WARN: Type inference failed for: r41v3 */
    public final long put(SingleMissedCallData singleMissedCallData) {
        Long l = singleMissedCallData.f26795id;
        String phoneAsRaw = singleMissedCallData.getPhoneAsRaw();
        int i = phoneAsRaw != null ? __ID_phoneAsRaw : 0;
        long j = this.cursor;
        ?? longValue = l != null ? l.longValue() : false;
        long collect313311 = collect313311(j, longValue == true ? 1L : 0L, 3, i, phoneAsRaw, 0, null, 0, null, 0, null, __ID_contactId, singleMissedCallData.getContactId(), __ID_missedCallTime, singleMissedCallData.getMissedCallTime(), __ID_numberOfMissedCalls, singleMissedCallData.getNumberOfMissedCalls(), __ID_missedCallType, singleMissedCallData.getMissedCallType(), 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        singleMissedCallData.f26795id = Long.valueOf(collect313311);
        return collect313311;
    }
}
