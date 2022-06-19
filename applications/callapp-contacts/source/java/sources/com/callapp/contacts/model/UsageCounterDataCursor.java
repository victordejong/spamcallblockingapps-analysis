package com.callapp.contacts.model;

import com.callapp.contacts.model.UsageCounterData_;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/UsageCounterDataCursor.class */
public final class UsageCounterDataCursor extends Cursor<UsageCounterData> {
    private static final UsageCounterData_.UsageCounterDataIdGetter ID_GETTER = UsageCounterData_.__ID_GETTER;
    private static final int __ID_socialNetworkId = UsageCounterData_.socialNetworkId.f62808c;
    private static final int __ID_netCallType = UsageCounterData_.netCallType.f62808c;
    private static final int __ID_count = UsageCounterData_.count.f62808c;
    private static final int __ID_date = UsageCounterData_.date.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/UsageCounterDataCursor$Factory.class */
    static final class Factory implements AbstractC17949b<UsageCounterData> {
        @Override // io.objectbox.p502b.AbstractC17949b
        public final Cursor<UsageCounterData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new UsageCounterDataCursor(transaction, j, boxStore);
        }
    }

    public UsageCounterDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, UsageCounterData_.__INSTANCE, boxStore);
    }

    public final long getId(UsageCounterData usageCounterData) {
        return ID_GETTER.getId(usageCounterData);
    }

    public final long put(UsageCounterData usageCounterData) {
        long collect004000 = collect004000(this.cursor, usageCounterData.getId(), 3, __ID_count, usageCounterData.getCount(), __ID_date, usageCounterData.getDate(), __ID_socialNetworkId, usageCounterData.socialNetworkId, __ID_netCallType, usageCounterData.getNetCallType());
        usageCounterData.setId(collect004000);
        return collect004000;
    }
}
