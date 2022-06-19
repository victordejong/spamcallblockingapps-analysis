package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.MissedCallCardIds_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/MissedCallCardIdsCursor.class */
public final class MissedCallCardIdsCursor extends Cursor<MissedCallCardIds> {
    private static final MissedCallCardIds_.MissedCallCardIdsIdGetter ID_GETTER = MissedCallCardIds_.__ID_GETTER;
    private static final int __ID_phoneNumber = MissedCallCardIds_.phoneNumber.f62808c;
    private static final int __ID_phoneAsRaw = MissedCallCardIds_.phoneAsRaw.f62808c;
    private static final int __ID_numberOfMissedCalls = MissedCallCardIds_.numberOfMissedCalls.f62808c;
    private static final int __ID_lastMissedCall = MissedCallCardIds_.lastMissedCall.f62808c;
    private static final int __ID_missedCallType = MissedCallCardIds_.missedCallType.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/MissedCallCardIdsCursor$Factory.class */
    static final class Factory implements AbstractC17949b<MissedCallCardIds> {
        @Override // io.objectbox.p502b.AbstractC17949b
        public final Cursor<MissedCallCardIds> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new MissedCallCardIdsCursor(transaction, j, boxStore);
        }
    }

    public MissedCallCardIdsCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, MissedCallCardIds_.__INSTANCE, boxStore);
    }

    public final long getId(MissedCallCardIds missedCallCardIds) {
        return ID_GETTER.getId(missedCallCardIds);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r43v0 */
    /* JADX WARN: Type inference failed for: r43v2 */
    /* JADX WARN: Type inference failed for: r43v3 */
    public final long put(MissedCallCardIds missedCallCardIds) {
        Long id = missedCallCardIds.getId();
        String phoneNumber = missedCallCardIds.getPhoneNumber();
        int i = phoneNumber != null ? __ID_phoneNumber : 0;
        String phoneAsRaw = missedCallCardIds.getPhoneAsRaw();
        int i2 = phoneAsRaw != null ? __ID_phoneAsRaw : 0;
        long collect313311 = collect313311(this.cursor, (id != null ? id.longValue() : false) == true ? 1L : 0L, 3, i, phoneNumber, i2, phoneAsRaw, 0, null, 0, null, __ID_lastMissedCall, missedCallCardIds.getLastMissedCall(), __ID_numberOfMissedCalls, missedCallCardIds.getNumberOfMissedCalls(), __ID_missedCallType, missedCallCardIds.getMissedCallType(), 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        missedCallCardIds.setId(Long.valueOf(collect313311));
        return collect313311;
    }
}
