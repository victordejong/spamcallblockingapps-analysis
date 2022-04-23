package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.MissedCallCardIds_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/MissedCallCardIdsCursor.class */
public final class MissedCallCardIdsCursor extends Cursor<MissedCallCardIds> {
    private static final MissedCallCardIds_.MissedCallCardIdsIdGetter ID_GETTER = MissedCallCardIds_.__ID_GETTER;
    private static final int __ID_phoneNumber = MissedCallCardIds_.phoneNumber.f36237c;
    private static final int __ID_phoneAsRaw = MissedCallCardIds_.phoneAsRaw.f36237c;
    private static final int __ID_numberOfMissedCalls = MissedCallCardIds_.numberOfMissedCalls.f36237c;
    private static final int __ID_lastMissedCall = MissedCallCardIds_.lastMissedCall.f36237c;
    private static final int __ID_missedCallType = MissedCallCardIds_.missedCallType.f36237c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/MissedCallCardIdsCursor$Factory.class */
    static final class Factory implements b<MissedCallCardIds> {
        @Override // io.objectbox.b.b
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

    public final long put(MissedCallCardIds missedCallCardIds) {
        Long id = missedCallCardIds.getId();
        String phoneNumber = missedCallCardIds.getPhoneNumber();
        int i = phoneNumber != null ? __ID_phoneNumber : 0;
        String phoneAsRaw = missedCallCardIds.getPhoneAsRaw();
        long collect313311 = collect313311(this.cursor, id != null ? id.longValue() : 0L, 3, i, phoneNumber, phoneAsRaw != null ? __ID_phoneAsRaw : 0, phoneAsRaw, 0, null, 0, null, __ID_lastMissedCall, missedCallCardIds.getLastMissedCall(), __ID_numberOfMissedCalls, missedCallCardIds.getNumberOfMissedCalls(), __ID_missedCallType, missedCallCardIds.getMissedCallType(), 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        missedCallCardIds.setId(Long.valueOf(collect313311));
        return collect313311;
    }
}
