package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.UserNegativePositiveData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserNegativePositiveDataCursor.class */
public final class UserNegativePositiveDataCursor extends Cursor<UserNegativePositiveData> {
    private static final UserNegativePositiveData_.UserNegativePositiveDataIdGetter ID_GETTER = UserNegativePositiveData_.__ID_GETTER;
    private static final int __ID_phoneOrIdKey = UserNegativePositiveData_.phoneOrIdKey.f36237c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserNegativePositiveDataCursor$Factory.class */
    static final class Factory implements b<UserNegativePositiveData> {
        @Override // io.objectbox.b.b
        public final Cursor<UserNegativePositiveData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new UserNegativePositiveDataCursor(transaction, j, boxStore);
        }
    }

    public UserNegativePositiveDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, UserNegativePositiveData_.__INSTANCE, boxStore);
    }

    private void attachEntity(UserNegativePositiveData userNegativePositiveData) {
        userNegativePositiveData.__boxStore = this.boxStoreForEntities;
    }

    public final long getId(UserNegativePositiveData userNegativePositiveData) {
        return ID_GETTER.getId(userNegativePositiveData);
    }

    public final long put(UserNegativePositiveData userNegativePositiveData) {
        Long l = userNegativePositiveData.id;
        String phoneOrIdKey = userNegativePositiveData.getPhoneOrIdKey();
        long collect313311 = collect313311(this.cursor, l != null ? l.longValue() : 0L, 3, phoneOrIdKey != null ? __ID_phoneOrIdKey : 0, phoneOrIdKey, 0, null, 0, null, 0, null, 0, 0L, 0, 0L, 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        userNegativePositiveData.id = Long.valueOf(collect313311);
        attachEntity(userNegativePositiveData);
        checkApplyToManyToDb(userNegativePositiveData.userNegativeSocialData, UserNegativeSocialData.class);
        checkApplyToManyToDb(userNegativePositiveData.userPositiveSocialData, UserPositiveSocialData.class);
        return collect313311;
    }
}
