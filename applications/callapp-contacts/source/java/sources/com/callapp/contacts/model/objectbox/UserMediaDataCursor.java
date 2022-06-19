package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.UserMediaData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserMediaDataCursor.class */
public final class UserMediaDataCursor extends Cursor<UserMediaData> {
    private static final UserMediaData_.UserMediaDataIdGetter ID_GETTER = UserMediaData_.__ID_GETTER;
    private static final int __ID_phoneOrIdKey = UserMediaData_.phoneOrIdKey.f62808c;
    private static final int __ID_photoUrl = UserMediaData_.photoUrl.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserMediaDataCursor$Factory.class */
    static final class Factory implements AbstractC17949b<UserMediaData> {
        @Override // io.objectbox.p502b.AbstractC17949b
        public final Cursor<UserMediaData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new UserMediaDataCursor(transaction, j, boxStore);
        }
    }

    public UserMediaDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, UserMediaData_.__INSTANCE, boxStore);
    }

    public final long getId(UserMediaData userMediaData) {
        return ID_GETTER.getId(userMediaData);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r43v0 */
    /* JADX WARN: Type inference failed for: r43v2 */
    /* JADX WARN: Type inference failed for: r43v3 */
    public final long put(UserMediaData userMediaData) {
        Long l = userMediaData.f26807id;
        String phoneOrIdKey = userMediaData.getPhoneOrIdKey();
        int i = phoneOrIdKey != null ? __ID_phoneOrIdKey : 0;
        String photoUrl = userMediaData.getPhotoUrl();
        int i2 = photoUrl != null ? __ID_photoUrl : 0;
        long collect313311 = collect313311(this.cursor, (l != null ? l.longValue() : false) == true ? 1L : 0L, 3, i, phoneOrIdKey, i2, photoUrl, 0, null, 0, null, 0, 0L, 0, 0L, 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        userMediaData.f26807id = Long.valueOf(collect313311);
        return collect313311;
    }
}
