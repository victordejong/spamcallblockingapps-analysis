package com.callapp.contacts.sync.model;

import com.callapp.contacts.sync.model.SyncerData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/model/SyncerDataCursor.class */
public final class SyncerDataCursor extends Cursor<SyncerData> {
    private static final SyncerData_.SyncerDataIdGetter ID_GETTER = SyncerData_.__ID_GETTER;
    private static final int __ID_phoneOrIdKey = SyncerData_.phoneOrIdKey.f36237c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/model/SyncerDataCursor$Factory.class */
    static final class Factory implements b<SyncerData> {
        @Override // io.objectbox.b.b
        public final Cursor<SyncerData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new SyncerDataCursor(transaction, j, boxStore);
        }
    }

    public SyncerDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, SyncerData_.__INSTANCE, boxStore);
    }

    private void attachEntity(SyncerData syncerData) {
        syncerData.__boxStore = this.boxStoreForEntities;
    }

    public final long getId(SyncerData syncerData) {
        return ID_GETTER.getId(syncerData);
    }

    public final long put(SyncerData syncerData) {
        Long id = syncerData.getId();
        String phoneOrIdKey = syncerData.getPhoneOrIdKey();
        long collect313311 = collect313311(this.cursor, id != null ? id.longValue() : 0L, 3, phoneOrIdKey != null ? __ID_phoneOrIdKey : 0, phoneOrIdKey, 0, null, 0, null, 0, null, 0, 0L, 0, 0L, 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        syncerData.setId(Long.valueOf(collect313311));
        attachEntity(syncerData);
        checkApplyToManyToDb(syncerData.getSyncerDetails(), SyncerDetails.class);
        return collect313311;
    }
}
