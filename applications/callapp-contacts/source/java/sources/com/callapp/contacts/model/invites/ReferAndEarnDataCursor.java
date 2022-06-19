package com.callapp.contacts.model.invites;

import com.callapp.contacts.model.invites.ReferAndEarnData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/invites/ReferAndEarnDataCursor.class */
public final class ReferAndEarnDataCursor extends Cursor<ReferAndEarnData> {
    private static final ReferAndEarnData_.ReferAndEarnDataIdGetter ID_GETTER = ReferAndEarnData_.__ID_GETTER;
    private static final int __ID_referId = ReferAndEarnData_.referId.f62808c;
    private static final int __ID_earnedPoints = ReferAndEarnData_.earnedPoints.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/invites/ReferAndEarnDataCursor$Factory.class */
    static final class Factory implements AbstractC17949b<ReferAndEarnData> {
        @Override // io.objectbox.p502b.AbstractC17949b
        public final Cursor<ReferAndEarnData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new ReferAndEarnDataCursor(transaction, j, boxStore);
        }
    }

    public ReferAndEarnDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, ReferAndEarnData_.__INSTANCE, boxStore);
    }

    private void attachEntity(ReferAndEarnData referAndEarnData) {
        referAndEarnData.__boxStore = this.boxStoreForEntities;
    }

    public final long getId(ReferAndEarnData referAndEarnData) {
        return ID_GETTER.getId(referAndEarnData);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r41v0 */
    /* JADX WARN: Type inference failed for: r41v2 */
    /* JADX WARN: Type inference failed for: r41v3 */
    public final long put(ReferAndEarnData referAndEarnData) {
        Long l = referAndEarnData.f26743id;
        String referId = referAndEarnData.getReferId();
        int i = referId != null ? __ID_referId : 0;
        long collect313311 = collect313311(this.cursor, (l != null ? l.longValue() : false) == true ? 1L : 0L, 3, i, referId, 0, null, 0, null, 0, null, __ID_earnedPoints, referAndEarnData.getEarnedPoints(), 0, 0L, 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        referAndEarnData.f26743id = Long.valueOf(collect313311);
        attachEntity(referAndEarnData);
        checkApplyToManyToDb(referAndEarnData.getReferAndEarnUserDataToMany(), ReferAndEarnUserData.class);
        return collect313311;
    }
}
