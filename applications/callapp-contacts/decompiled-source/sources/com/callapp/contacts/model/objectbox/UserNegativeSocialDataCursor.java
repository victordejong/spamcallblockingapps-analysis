package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.UserNegativeSocialData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
import io.objectbox.relation.ToOne;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserNegativeSocialDataCursor.class */
public final class UserNegativeSocialDataCursor extends Cursor<UserNegativeSocialData> {
    private static final UserNegativeSocialData_.UserNegativeSocialDataIdGetter ID_GETTER = UserNegativeSocialData_.__ID_GETTER;
    private static final int __ID_socialNetworkId = UserNegativeSocialData_.socialNetworkId.f36237c;
    private static final int __ID_profileId = UserNegativeSocialData_.profileId.f36237c;
    private static final int __ID_userNegativeDataId = UserNegativeSocialData_.userNegativeDataId.f36237c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserNegativeSocialDataCursor$Factory.class */
    static final class Factory implements b<UserNegativeSocialData> {
        @Override // io.objectbox.b.b
        public final Cursor<UserNegativeSocialData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new UserNegativeSocialDataCursor(transaction, j, boxStore);
        }
    }

    public UserNegativeSocialDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, UserNegativeSocialData_.__INSTANCE, boxStore);
    }

    private void attachEntity(UserNegativeSocialData userNegativeSocialData) {
        userNegativeSocialData.__boxStore = this.boxStoreForEntities;
    }

    public final long getId(UserNegativeSocialData userNegativeSocialData) {
        return ID_GETTER.getId(userNegativeSocialData);
    }

    public final long put(UserNegativeSocialData userNegativeSocialData) {
        ToOne<UserNegativePositiveData> userNegativeData = userNegativeSocialData.getUserNegativeData();
        if (userNegativeData != null && userNegativeData.c()) {
            Cursor relationTargetCursor = getRelationTargetCursor(UserNegativePositiveData.class);
            try {
                userNegativeData.a(relationTargetCursor);
            } finally {
                relationTargetCursor.close();
            }
        }
        Long l = userNegativeSocialData.id;
        String profileId = userNegativeSocialData.getProfileId();
        long collect313311 = collect313311(this.cursor, l != null ? l.longValue() : 0L, 3, profileId != null ? __ID_profileId : 0, profileId, 0, null, 0, null, 0, null, __ID_userNegativeDataId, userNegativeSocialData.getUserNegativeData().b(), __ID_socialNetworkId, userNegativeSocialData.getSocialNetworkId(), 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        userNegativeSocialData.id = Long.valueOf(collect313311);
        attachEntity(userNegativeSocialData);
        return collect313311;
    }
}
