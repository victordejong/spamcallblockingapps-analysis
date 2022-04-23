package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.UserPositiveSocialData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
import io.objectbox.relation.ToOne;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserPositiveSocialDataCursor.class */
public final class UserPositiveSocialDataCursor extends Cursor<UserPositiveSocialData> {
    private static final UserPositiveSocialData_.UserPositiveSocialDataIdGetter ID_GETTER = UserPositiveSocialData_.__ID_GETTER;
    private static final int __ID_socialNetworkId = UserPositiveSocialData_.socialNetworkId.f36237c;
    private static final int __ID_profileId = UserPositiveSocialData_.profileId.f36237c;
    private static final int __ID_sure = UserPositiveSocialData_.sure.f36237c;
    private static final int __ID_userPositiveDataId = UserPositiveSocialData_.userPositiveDataId.f36237c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserPositiveSocialDataCursor$Factory.class */
    static final class Factory implements b<UserPositiveSocialData> {
        @Override // io.objectbox.b.b
        public final Cursor<UserPositiveSocialData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new UserPositiveSocialDataCursor(transaction, j, boxStore);
        }
    }

    public UserPositiveSocialDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, UserPositiveSocialData_.__INSTANCE, boxStore);
    }

    private void attachEntity(UserPositiveSocialData userPositiveSocialData) {
        userPositiveSocialData.__boxStore = this.boxStoreForEntities;
    }

    public final long getId(UserPositiveSocialData userPositiveSocialData) {
        return ID_GETTER.getId(userPositiveSocialData);
    }

    public final long put(UserPositiveSocialData userPositiveSocialData) {
        ToOne<UserNegativePositiveData> userPositiveData = userPositiveSocialData.getUserPositiveData();
        if (userPositiveData != null && userPositiveData.c()) {
            Cursor relationTargetCursor = getRelationTargetCursor(UserNegativePositiveData.class);
            try {
                userPositiveData.a(relationTargetCursor);
            } finally {
                relationTargetCursor.close();
            }
        }
        Long l = userPositiveSocialData.id;
        String profileId = userPositiveSocialData.getProfileId();
        long collect313311 = collect313311(this.cursor, l != null ? l.longValue() : 0L, 3, profileId != null ? __ID_profileId : 0, profileId, 0, null, 0, null, 0, null, __ID_userPositiveDataId, userPositiveSocialData.getUserPositiveData().b(), __ID_socialNetworkId, userPositiveSocialData.getSocialNetworkId(), __ID_sure, userPositiveSocialData.isSure() ? 1L : 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        userPositiveSocialData.id = Long.valueOf(collect313311);
        attachEntity(userPositiveSocialData);
        return collect313311;
    }
}
