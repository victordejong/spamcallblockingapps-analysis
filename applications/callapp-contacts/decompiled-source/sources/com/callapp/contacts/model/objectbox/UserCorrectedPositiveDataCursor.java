package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.UserCorrectedPositiveData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
import io.objectbox.relation.ToOne;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserCorrectedPositiveDataCursor.class */
public final class UserCorrectedPositiveDataCursor extends Cursor<UserCorrectedPositiveData> {
    private static final UserCorrectedPositiveData_.UserCorrectedPositiveDataIdGetter ID_GETTER = UserCorrectedPositiveData_.__ID_GETTER;
    private static final int __ID_socialNetworkId = UserCorrectedPositiveData_.socialNetworkId.f36237c;
    private static final int __ID_profileId = UserCorrectedPositiveData_.profileId.f36237c;
    private static final int __ID_userCorrectedDataId = UserCorrectedPositiveData_.userCorrectedDataId.f36237c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserCorrectedPositiveDataCursor$Factory.class */
    static final class Factory implements b<UserCorrectedPositiveData> {
        @Override // io.objectbox.b.b
        public final Cursor<UserCorrectedPositiveData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new UserCorrectedPositiveDataCursor(transaction, j, boxStore);
        }
    }

    public UserCorrectedPositiveDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, UserCorrectedPositiveData_.__INSTANCE, boxStore);
    }

    private void attachEntity(UserCorrectedPositiveData userCorrectedPositiveData) {
        userCorrectedPositiveData.__boxStore = this.boxStoreForEntities;
    }

    public final long getId(UserCorrectedPositiveData userCorrectedPositiveData) {
        return ID_GETTER.getId(userCorrectedPositiveData);
    }

    public final long put(UserCorrectedPositiveData userCorrectedPositiveData) {
        ToOne<UserCorrectedData> userCorrectedData = userCorrectedPositiveData.getUserCorrectedData();
        if (userCorrectedData != null && userCorrectedData.c()) {
            Cursor relationTargetCursor = getRelationTargetCursor(UserCorrectedData.class);
            try {
                userCorrectedData.a(relationTargetCursor);
            } finally {
                relationTargetCursor.close();
            }
        }
        String profileId = userCorrectedPositiveData.getProfileId();
        long collect313311 = collect313311(this.cursor, userCorrectedPositiveData.getId(), 3, profileId != null ? __ID_profileId : 0, profileId, 0, null, 0, null, 0, null, __ID_userCorrectedDataId, userCorrectedPositiveData.getUserCorrectedData().b(), __ID_socialNetworkId, userCorrectedPositiveData.getSocialNetworkId(), 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        userCorrectedPositiveData.setId(collect313311);
        attachEntity(userCorrectedPositiveData);
        return collect313311;
    }
}
