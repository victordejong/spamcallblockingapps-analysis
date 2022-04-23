package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.UserCorrectedData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserCorrectedDataCursor.class */
public final class UserCorrectedDataCursor extends Cursor<UserCorrectedData> {
    private static final UserCorrectedData_.UserCorrectedDataIdGetter ID_GETTER = UserCorrectedData_.__ID_GETTER;
    private static final int __ID_phoneOrIdKey = UserCorrectedData_.phoneOrIdKey.f36237c;
    private static final int __ID_fullName = UserCorrectedData_.fullName.f36237c;
    private static final int __ID_userCorrectedType = UserCorrectedData_.userCorrectedType.f36237c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserCorrectedDataCursor$Factory.class */
    static final class Factory implements b<UserCorrectedData> {
        @Override // io.objectbox.b.b
        public final Cursor<UserCorrectedData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new UserCorrectedDataCursor(transaction, j, boxStore);
        }
    }

    public UserCorrectedDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, UserCorrectedData_.__INSTANCE, boxStore);
    }

    private void attachEntity(UserCorrectedData userCorrectedData) {
        userCorrectedData.__boxStore = this.boxStoreForEntities;
    }

    public final long getId(UserCorrectedData userCorrectedData) {
        return ID_GETTER.getId(userCorrectedData);
    }

    public final long put(UserCorrectedData userCorrectedData) {
        Long l = userCorrectedData.id;
        String phoneOrIdKey = userCorrectedData.getPhoneOrIdKey();
        int i = phoneOrIdKey != null ? __ID_phoneOrIdKey : 0;
        String fullName = userCorrectedData.getFullName();
        long collect313311 = collect313311(this.cursor, l != null ? l.longValue() : 0L, 3, i, phoneOrIdKey, fullName != null ? __ID_fullName : 0, fullName, 0, null, 0, null, __ID_userCorrectedType, userCorrectedData.getUserCorrectedType(), 0, 0L, 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        userCorrectedData.id = Long.valueOf(collect313311);
        attachEntity(userCorrectedData);
        checkApplyToManyToDb(userCorrectedData.getUserCorrectedPositive(), UserCorrectedPositiveData.class);
        return collect313311;
    }
}
