package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.UserNegativeSocialData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.relation.ToOne;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserNegativeSocialDataCursor.class */
public final class UserNegativeSocialDataCursor extends Cursor<UserNegativeSocialData> {
    private static final UserNegativeSocialData_.UserNegativeSocialDataIdGetter ID_GETTER = UserNegativeSocialData_.__ID_GETTER;
    private static final int __ID_socialNetworkId = UserNegativeSocialData_.socialNetworkId.f62808c;
    private static final int __ID_profileId = UserNegativeSocialData_.profileId.f62808c;
    private static final int __ID_userNegativeDataId = UserNegativeSocialData_.userNegativeDataId.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserNegativeSocialDataCursor$Factory.class */
    static final class Factory implements AbstractC17949b<UserNegativeSocialData> {
        @Override // io.objectbox.p502b.AbstractC17949b
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r41v0 */
    /* JADX WARN: Type inference failed for: r41v2 */
    /* JADX WARN: Type inference failed for: r41v3 */
    public final long put(UserNegativeSocialData userNegativeSocialData) {
        ToOne<UserNegativePositiveData> userNegativeData = userNegativeSocialData.getUserNegativeData();
        if (userNegativeData != null && userNegativeData.m4567c()) {
            Cursor relationTargetCursor = getRelationTargetCursor(UserNegativePositiveData.class);
            try {
                userNegativeData.m4571a(relationTargetCursor);
            } finally {
                relationTargetCursor.close();
            }
        }
        Long l = userNegativeSocialData.f26811id;
        String profileId = userNegativeSocialData.getProfileId();
        int i = profileId != null ? __ID_profileId : 0;
        long collect313311 = collect313311(this.cursor, (l != null ? l.longValue() : false) == true ? 1L : 0L, 3, i, profileId, 0, null, 0, null, 0, null, __ID_userNegativeDataId, userNegativeSocialData.getUserNegativeData().m4568b(), __ID_socialNetworkId, userNegativeSocialData.getSocialNetworkId(), 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        userNegativeSocialData.f26811id = Long.valueOf(collect313311);
        attachEntity(userNegativeSocialData);
        return collect313311;
    }
}
