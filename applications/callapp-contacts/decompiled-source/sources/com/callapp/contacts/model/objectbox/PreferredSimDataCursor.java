package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.model.objectbox.PreferredSimData;
import com.callapp.contacts.model.objectbox.PreferredSimData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PreferredSimDataCursor.class */
public final class PreferredSimDataCursor extends Cursor<PreferredSimData> {
    private static final PreferredSimData_.PreferredSimDataIdGetter ID_GETTER = PreferredSimData_.__ID_GETTER;
    private static final int __ID_phoneOrIdKey = PreferredSimData_.phoneOrIdKey.f36237c;
    private static final int __ID_simId = PreferredSimData_.simId.f36237c;
    private final PreferredSimData.SimTypeConverter simIdConverter = new PreferredSimData.SimTypeConverter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PreferredSimDataCursor$Factory.class */
    static final class Factory implements b<PreferredSimData> {
        @Override // io.objectbox.b.b
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

    public final long put(PreferredSimData preferredSimData) {
        Long l = preferredSimData.id;
        String phoneOrIdKey = preferredSimData.getPhoneOrIdKey();
        int i = phoneOrIdKey != null ? __ID_phoneOrIdKey : 0;
        SimManager.SimId simId = preferredSimData.getSimId();
        int i2 = simId != null ? __ID_simId : 0;
        long collect313311 = collect313311(this.cursor, l != null ? l.longValue() : 0L, 3, i, phoneOrIdKey, 0, null, 0, null, 0, null, i2, i2 != 0 ? this.simIdConverter.convertToDatabaseValue(simId).intValue() : 0L, 0, 0L, 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        preferredSimData.id = Long.valueOf(collect313311);
        return collect313311;
    }
}
