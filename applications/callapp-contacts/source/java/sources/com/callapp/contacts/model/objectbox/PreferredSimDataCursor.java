package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.model.objectbox.PreferredSimData;
import com.callapp.contacts.model.objectbox.PreferredSimData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PreferredSimDataCursor.class */
public final class PreferredSimDataCursor extends Cursor<PreferredSimData> {
    private static final PreferredSimData_.PreferredSimDataIdGetter ID_GETTER = PreferredSimData_.__ID_GETTER;
    private static final int __ID_phoneOrIdKey = PreferredSimData_.phoneOrIdKey.f62808c;
    private static final int __ID_simId = PreferredSimData_.simId.f62808c;
    private final PreferredSimData.SimTypeConverter simIdConverter = new PreferredSimData.SimTypeConverter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PreferredSimDataCursor$Factory.class */
    static final class Factory implements AbstractC17949b<PreferredSimData> {
        @Override // io.objectbox.p502b.AbstractC17949b
        public final Cursor<PreferredSimData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new PreferredSimDataCursor(transaction, j, boxStore);
        }
    }

    public PreferredSimDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, PreferredSimData_.__INSTANCE, boxStore);
    }

    public final long getId(PreferredSimData preferredSimData) {
        return ID_GETTER.getId(preferredSimData);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r43v0 */
    /* JADX WARN: Type inference failed for: r43v2 */
    /* JADX WARN: Type inference failed for: r43v3 */
    /* JADX WARN: Type inference failed for: r45v0 */
    /* JADX WARN: Type inference failed for: r45v1 */
    /* JADX WARN: Type inference failed for: r45v2 */
    public final long put(PreferredSimData preferredSimData) {
        Long l = preferredSimData.f26789id;
        String phoneOrIdKey = preferredSimData.getPhoneOrIdKey();
        int i = phoneOrIdKey != null ? __ID_phoneOrIdKey : 0;
        SimManager.SimId simId = preferredSimData.getSimId();
        int i2 = simId != null ? __ID_simId : 0;
        long collect313311 = collect313311(this.cursor, (l != null ? l.longValue() : false) == true ? 1L : 0L, 3, i, phoneOrIdKey, 0, null, 0, null, 0, null, i2, (i2 != 0 ? (long) this.simIdConverter.convertToDatabaseValue(simId).intValue() : false) == true ? 1L : 0L, 0, 0L, 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        preferredSimData.f26789id = Long.valueOf(collect313311);
        return collect313311;
    }
}
