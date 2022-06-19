package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.UserCorrectedData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserCorrectedDataCursor.class */
public final class UserCorrectedDataCursor extends Cursor<UserCorrectedData> {
    private static final UserCorrectedData_.UserCorrectedDataIdGetter ID_GETTER = UserCorrectedData_.__ID_GETTER;
    private static final int __ID_phoneOrIdKey = UserCorrectedData_.phoneOrIdKey.f62808c;
    private static final int __ID_fullName = UserCorrectedData_.fullName.f62808c;
    private static final int __ID_userCorrectedType = UserCorrectedData_.userCorrectedType.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserCorrectedDataCursor$Factory.class */
    static final class Factory implements AbstractC17949b<UserCorrectedData> {
        @Override // io.objectbox.p502b.AbstractC17949b
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r43v0 */
    /* JADX WARN: Type inference failed for: r43v2 */
    /* JADX WARN: Type inference failed for: r43v3 */
    public final long put(UserCorrectedData userCorrectedData) {
        Long l = userCorrectedData.f26803id;
        String phoneOrIdKey = userCorrectedData.getPhoneOrIdKey();
        int i = phoneOrIdKey != null ? __ID_phoneOrIdKey : 0;
        String fullName = userCorrectedData.getFullName();
        int i2 = fullName != null ? __ID_fullName : 0;
        long collect313311 = collect313311(this.cursor, (l != null ? l.longValue() : false) == true ? 1L : 0L, 3, i, phoneOrIdKey, i2, fullName, 0, null, 0, null, __ID_userCorrectedType, userCorrectedData.getUserCorrectedType(), 0, 0L, 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        userCorrectedData.f26803id = Long.valueOf(collect313311);
        attachEntity(userCorrectedData);
        checkApplyToManyToDb(userCorrectedData.getUserCorrectedPositive(), UserCorrectedPositiveData.class);
        return collect313311;
    }
}
