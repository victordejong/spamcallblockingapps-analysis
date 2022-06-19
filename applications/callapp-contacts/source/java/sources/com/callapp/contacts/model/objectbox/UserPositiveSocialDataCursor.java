package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.UserPositiveSocialData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.relation.ToOne;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserPositiveSocialDataCursor.class */
public final class UserPositiveSocialDataCursor extends Cursor<UserPositiveSocialData> {
    private static final UserPositiveSocialData_.UserPositiveSocialDataIdGetter ID_GETTER = UserPositiveSocialData_.__ID_GETTER;
    private static final int __ID_socialNetworkId = UserPositiveSocialData_.socialNetworkId.f62808c;
    private static final int __ID_profileId = UserPositiveSocialData_.profileId.f62808c;
    private static final int __ID_sure = UserPositiveSocialData_.sure.f62808c;
    private static final int __ID_userPositiveDataId = UserPositiveSocialData_.userPositiveDataId.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserPositiveSocialDataCursor$Factory.class */
    static final class Factory implements AbstractC17949b<UserPositiveSocialData> {
        @Override // io.objectbox.p502b.AbstractC17949b
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r41v0 */
    /* JADX WARN: Type inference failed for: r41v2 */
    /* JADX WARN: Type inference failed for: r41v3 */
    /* JADX WARN: Type inference failed for: r50v0 */
    /* JADX WARN: Type inference failed for: r50v1 */
    /* JADX WARN: Type inference failed for: r50v2 */
    public final long put(UserPositiveSocialData userPositiveSocialData) {
        ToOne<UserNegativePositiveData> userPositiveData = userPositiveSocialData.getUserPositiveData();
        if (userPositiveData != null && userPositiveData.m4567c()) {
            Cursor relationTargetCursor = getRelationTargetCursor(UserNegativePositiveData.class);
            try {
                userPositiveData.m4571a(relationTargetCursor);
            } finally {
                relationTargetCursor.close();
            }
        }
        Long l = userPositiveSocialData.f26813id;
        String profileId = userPositiveSocialData.getProfileId();
        int i = profileId != null ? __ID_profileId : 0;
        long j = this.cursor;
        ?? longValue = l != null ? l.longValue() : false;
        long collect313311 = collect313311(j, longValue == true ? 1L : 0L, 3, i, profileId, 0, null, 0, null, 0, null, __ID_userPositiveDataId, userPositiveSocialData.getUserPositiveData().m4568b(), __ID_socialNetworkId, userPositiveSocialData.getSocialNetworkId(), __ID_sure, (userPositiveSocialData.isSure()) == true ? 1L : 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        userPositiveSocialData.f26813id = Long.valueOf(collect313311);
        attachEntity(userPositiveSocialData);
        return collect313311;
    }
}
