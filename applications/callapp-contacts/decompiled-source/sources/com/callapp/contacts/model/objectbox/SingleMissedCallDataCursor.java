package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.SingleMissedCallData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SingleMissedCallDataCursor.class */
public final class SingleMissedCallDataCursor extends Cursor<SingleMissedCallData> {
    private static final SingleMissedCallData_.SingleMissedCallDataIdGetter ID_GETTER = SingleMissedCallData_.__ID_GETTER;
    private static final int __ID_contactId = SingleMissedCallData_.contactId.f36237c;
    private static final int __ID_phoneAsRaw = SingleMissedCallData_.phoneAsRaw.f36237c;
    private static final int __ID_missedCallTime = SingleMissedCallData_.missedCallTime.f36237c;
    private static final int __ID_numberOfMissedCalls = SingleMissedCallData_.numberOfMissedCalls.f36237c;
    private static final int __ID_missedCallType = SingleMissedCallData_.missedCallType.f36237c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SingleMissedCallDataCursor$Factory.class */
    static final class Factory implements b<SingleMissedCallData> {
        @Override // io.objectbox.b.b
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

    public final long put(SingleMissedCallData singleMissedCallData) {
        Long l = singleMissedCallData.id;
        String phoneAsRaw = singleMissedCallData.getPhoneAsRaw();
        long collect313311 = collect313311(this.cursor, l != null ? l.longValue() : 0L, 3, phoneAsRaw != null ? __ID_phoneAsRaw : 0, phoneAsRaw, 0, null, 0, null, 0, null, __ID_contactId, singleMissedCallData.getContactId(), __ID_missedCallTime, singleMissedCallData.getMissedCallTime(), __ID_numberOfMissedCalls, singleMissedCallData.getNumberOfMissedCalls(), __ID_missedCallType, singleMissedCallData.getMissedCallType(), 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        singleMissedCallData.id = Long.valueOf(collect313311);
        return collect313311;
    }
}
