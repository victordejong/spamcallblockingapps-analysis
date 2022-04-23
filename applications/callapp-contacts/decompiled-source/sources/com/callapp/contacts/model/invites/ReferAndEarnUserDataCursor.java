package com.callapp.contacts.model.invites;

import com.callapp.contacts.model.invites.ReferAndEarnUserData;
import com.callapp.contacts.model.invites.ReferAndEarnUserData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
import io.objectbox.relation.ToOne;
import java.io.Closeable;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/invites/ReferAndEarnUserDataCursor.class */
public final class ReferAndEarnUserDataCursor extends Cursor<ReferAndEarnUserData> {
    private final ReferAndEarnUserData.ReferAndEarnStatusConverter statusConverter = new ReferAndEarnUserData.ReferAndEarnStatusConverter();
    private static final ReferAndEarnUserData_.ReferAndEarnUserDataIdGetter ID_GETTER = ReferAndEarnUserData_.__ID_GETTER;
    private static final int __ID_globalPhoneNumber = ReferAndEarnUserData_.globalPhoneNumber.f36237c;
    private static final int __ID_nameOrNumber = ReferAndEarnUserData_.nameOrNumber.f36237c;
    private static final int __ID_date = ReferAndEarnUserData_.date.f36237c;
    private static final int __ID_status = ReferAndEarnUserData_.status.f36237c;
    private static final int __ID_referAndEarnDataToOneId = ReferAndEarnUserData_.referAndEarnDataToOneId.f36237c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/invites/ReferAndEarnUserDataCursor$Factory.class */
    static final class Factory implements b<ReferAndEarnUserData> {
        @Override // io.objectbox.b.b
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
    public final long put(ReferAndEarnUserData referAndEarnUserData) {
        ToOne<ReferAndEarnData> toOne = referAndEarnUserData.referAndEarnDataToOne;
        if (toOne != 0 && toOne.c()) {
            Closeable relationTargetCursor = getRelationTargetCursor(ReferAndEarnData.class);
            try {
                toOne.a((Cursor<ReferAndEarnData>) relationTargetCursor);
            } finally {
                relationTargetCursor.close();
            }
        }
        Long l = referAndEarnUserData.id;
        String globalPhoneNumber = referAndEarnUserData.getGlobalPhoneNumber();
        int i = globalPhoneNumber != null ? __ID_globalPhoneNumber : 0;
        String nameOrNumber = referAndEarnUserData.getNameOrNumber();
        int i2 = nameOrNumber != null ? __ID_nameOrNumber : 0;
        ReferAndEarnUserData.STATUS status = referAndEarnUserData.getStatus();
        int i3 = status != null ? __ID_status : 0;
        long collect313311 = collect313311(this.cursor, l != null ? l.longValue() : 0L, 3, i, globalPhoneNumber, i2, nameOrNumber, 0, null, 0, null, __ID_date, referAndEarnUserData.getDate(), __ID_referAndEarnDataToOneId, referAndEarnUserData.referAndEarnDataToOne.b(), i3, i3 != 0 ? this.statusConverter.convertToDatabaseValue(status).intValue() : 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        referAndEarnUserData.id = Long.valueOf(collect313311);
        attachEntity(referAndEarnUserData);
        return collect313311;
    }
}
