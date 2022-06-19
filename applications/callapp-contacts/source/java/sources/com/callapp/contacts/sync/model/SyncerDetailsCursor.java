package com.callapp.contacts.sync.model;

import com.callapp.contacts.sync.model.SyncerDetails_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.relation.ToOne;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/model/SyncerDetailsCursor.class */
public final class SyncerDetailsCursor extends Cursor<SyncerDetails> {
    private static final SyncerDetails_.SyncerDetailsIdGetter ID_GETTER = SyncerDetails_.__ID_GETTER;
    private static final int __ID_syncerKeyName = SyncerDetails_.syncerKeyName.f62808c;
    private static final int __ID_lastSyncDate = SyncerDetails_.lastSyncDate.f62808c;
    private static final int __ID_syncerDataId = SyncerDetails_.syncerDataId.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/model/SyncerDetailsCursor$Factory.class */
    static final class Factory implements AbstractC17949b<SyncerDetails> {
        @Override // io.objectbox.p502b.AbstractC17949b
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r41v0 */
    /* JADX WARN: Type inference failed for: r41v2 */
    /* JADX WARN: Type inference failed for: r41v3 */
    public final long put(SyncerDetails syncerDetails) {
        ToOne<SyncerData> syncerData = syncerDetails.getSyncerData();
        if (syncerData != null && syncerData.m4567c()) {
            Cursor relationTargetCursor = getRelationTargetCursor(SyncerData.class);
            try {
                syncerData.m4571a(relationTargetCursor);
            } finally {
                relationTargetCursor.close();
            }
        }
        Long l = syncerDetails.f27588id;
        String syncerKeyName = syncerDetails.getSyncerKeyName();
        int i = syncerKeyName != null ? __ID_syncerKeyName : 0;
        long j = this.cursor;
        ?? longValue = l != null ? l.longValue() : false;
        long collect313311 = collect313311(j, longValue == true ? 1L : 0L, 3, i, syncerKeyName, 0, null, 0, null, 0, null, __ID_lastSyncDate, syncerDetails.getLastSyncDate(), __ID_syncerDataId, syncerDetails.getSyncerData().m4568b(), 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        syncerDetails.f27588id = Long.valueOf(collect313311);
        attachEntity(syncerDetails);
        return collect313311;
    }
}
