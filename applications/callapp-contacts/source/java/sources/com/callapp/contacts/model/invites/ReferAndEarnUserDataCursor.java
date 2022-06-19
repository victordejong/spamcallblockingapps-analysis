package com.callapp.contacts.model.invites;

import com.callapp.contacts.model.invites.ReferAndEarnUserData;
import com.callapp.contacts.model.invites.ReferAndEarnUserData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.relation.ToOne;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/invites/ReferAndEarnUserDataCursor.class */
public final class ReferAndEarnUserDataCursor extends Cursor<ReferAndEarnUserData> {
    private final ReferAndEarnUserData.ReferAndEarnStatusConverter statusConverter = new ReferAndEarnUserData.ReferAndEarnStatusConverter();
    private static final ReferAndEarnUserData_.ReferAndEarnUserDataIdGetter ID_GETTER = ReferAndEarnUserData_.__ID_GETTER;
    private static final int __ID_globalPhoneNumber = ReferAndEarnUserData_.globalPhoneNumber.f62808c;
    private static final int __ID_nameOrNumber = ReferAndEarnUserData_.nameOrNumber.f62808c;
    private static final int __ID_date = ReferAndEarnUserData_.date.f62808c;
    private static final int __ID_status = ReferAndEarnUserData_.status.f62808c;
    private static final int __ID_referAndEarnDataToOneId = ReferAndEarnUserData_.referAndEarnDataToOneId.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/invites/ReferAndEarnUserDataCursor$Factory.class */
    static final class Factory implements AbstractC17949b<ReferAndEarnUserData> {
        @Override // io.objectbox.p502b.AbstractC17949b
        public final Cursor<ReferAndEarnUserData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new ReferAndEarnUserDataCursor(transaction, j, boxStore);
        }
    }

    public ReferAndEarnUserDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, ReferAndEarnUserData_.__INSTANCE, boxStore);
    }

    private void attachEntity(ReferAndEarnUserData referAndEarnUserData) {
        referAndEarnUserData.__boxStore = this.boxStoreForEntities;
    }

    public final long getId(ReferAndEarnUserData referAndEarnUserData) {
        return ID_GETTER.getId(referAndEarnUserData);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r45v0 */
    /* JADX WARN: Type inference failed for: r45v2 */
    /* JADX WARN: Type inference failed for: r45v3 */
    /* JADX WARN: Type inference failed for: r53v0 */
    /* JADX WARN: Type inference failed for: r53v1 */
    /* JADX WARN: Type inference failed for: r53v2 */
    public final long put(ReferAndEarnUserData referAndEarnUserData) {
        ToOne toOne = referAndEarnUserData.referAndEarnDataToOne;
        if (toOne != null && toOne.m4567c()) {
            Cursor relationTargetCursor = getRelationTargetCursor(ReferAndEarnData.class);
            try {
                toOne.m4571a(relationTargetCursor);
            } finally {
                relationTargetCursor.close();
            }
        }
        Long l = referAndEarnUserData.f26745id;
        String globalPhoneNumber = referAndEarnUserData.getGlobalPhoneNumber();
        int i = globalPhoneNumber != null ? __ID_globalPhoneNumber : 0;
        String nameOrNumber = referAndEarnUserData.getNameOrNumber();
        int i2 = nameOrNumber != null ? __ID_nameOrNumber : 0;
        ReferAndEarnUserData.STATUS status = referAndEarnUserData.getStatus();
        int i3 = status != null ? __ID_status : 0;
        long j = this.cursor;
        ?? longValue = l != null ? l.longValue() : false;
        long collect313311 = collect313311(j, longValue == true ? 1L : 0L, 3, i, globalPhoneNumber, i2, nameOrNumber, 0, null, 0, null, __ID_date, referAndEarnUserData.getDate(), __ID_referAndEarnDataToOneId, referAndEarnUserData.referAndEarnDataToOne.m4568b(), i3, (i3 != 0 ? (long) this.statusConverter.convertToDatabaseValue(status).intValue() : false) == true ? 1L : 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        referAndEarnUserData.f26745id = Long.valueOf(collect313311);
        attachEntity(referAndEarnUserData);
        return collect313311;
    }
}
