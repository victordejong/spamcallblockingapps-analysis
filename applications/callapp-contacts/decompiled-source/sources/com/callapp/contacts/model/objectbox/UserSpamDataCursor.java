package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.UserSpamData;
import com.callapp.contacts.model.objectbox.UserSpamData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserSpamDataCursor.class */
public final class UserSpamDataCursor extends Cursor<UserSpamData> {
    private static final UserSpamData_.UserSpamDataIdGetter ID_GETTER = UserSpamData_.__ID_GETTER;
    private static final int __ID_phone = UserSpamData_.phone.f36237c;
    private static final int __ID_spamScore = UserSpamData_.spamScore.f36237c;
    private final UserSpamData.SpamScoreConverter spamScoreConverter = new UserSpamData.SpamScoreConverter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserSpamDataCursor$Factory.class */
    static final class Factory implements b<UserSpamData> {
        @Override // io.objectbox.b.b
        public final Cursor<UserSpamData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new UserSpamDataCursor(transaction, j, boxStore);
        }
    }

    public UserSpamDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, UserSpamData_.__INSTANCE, boxStore);
    }

    public final long getId(UserSpamData userSpamData) {
        return ID_GETTER.getId(userSpamData);
    }

    public final long put(UserSpamData userSpamData) {
        String phone = userSpamData.getPhone();
        int i = phone != null ? __ID_phone : 0;
        Integer valueOf = Integer.valueOf(userSpamData.getSpamScore());
        int i2 = valueOf != null ? __ID_spamScore : 0;
        long collect313311 = collect313311(this.cursor, userSpamData.getId(), 3, i, phone, 0, null, 0, null, 0, null, i2, (i2 == 0 || !this.spamScoreConverter.convertToDatabaseValue(valueOf).booleanValue()) ? 0L : 1L, 0, 0L, 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        userSpamData.setId(collect313311);
        return collect313311;
    }
}
