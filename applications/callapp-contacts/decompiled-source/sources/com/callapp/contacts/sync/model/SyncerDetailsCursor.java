package com.callapp.contacts.sync.model;

import com.callapp.contacts.sync.model.SyncerDetails_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
import io.objectbox.relation.ToOne;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/model/SyncerDetailsCursor.class */
public final class SyncerDetailsCursor extends Cursor<SyncerDetails> {
    private static final SyncerDetails_.SyncerDetailsIdGetter ID_GETTER = SyncerDetails_.__ID_GETTER;
    private static final int __ID_syncerKeyName = SyncerDetails_.syncerKeyName.f36237c;
    private static final int __ID_lastSyncDate = SyncerDetails_.lastSyncDate.f36237c;
    private static final int __ID_syncerDataId = SyncerDetails_.syncerDataId.f36237c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/model/SyncerDetailsCursor$Factory.class */
    static final class Factory implements b<SyncerDetails> {
        @Override // io.objectbox.b.b
        public final Cursor<SyncerDetails> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new SyncerDetailsCursor(transaction, j, boxStore);
        }
    }

    public SyncerDetailsCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, SyncerDetails_.__INSTANCE, boxStore);
    }

    private void attachEntity(SyncerDetails syncerDetails) {
        syncerDetails.__boxStore = this.boxStoreForEntities;
    }

    public final long getId(SyncerDetails syncerDetails) {
        return ID_GETTER.getId(syncerDetails);
    }

    public final long put(SyncerDetails syncerDetails) {
        ToOne<SyncerData> syncerData = syncerDetails.getSyncerData();
        if (syncerData != null && syncerData.c()) {
            Cursor relationTargetCursor = getRelationTargetCursor(SyncerData.class);
            try {
                syncerData.a(relationTargetCursor);
            } finally {
                relationTargetCursor.close();
            }
        }
        Long l = syncerDetails.id;
        String syncerKeyName = syncerDetails.getSyncerKeyName();
        long collect313311 = collect313311(this.cursor, l != null ? l.longValue() : 0L, 3, syncerKeyName != null ? __ID_syncerKeyName : 0, syncerKeyName, 0, null, 0, null, 0, null, __ID_lastSyncDate, syncerDetails.getLastSyncDate(), __ID_syncerDataId, syncerDetails.getSyncerData().b(), 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        syncerDetails.id = Long.valueOf(collect313311);
        attachEntity(syncerDetails);
        return collect313311;
    }
}
