package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.OBPref_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/OBPrefCursor.class */
public final class OBPrefCursor extends Cursor<OBPref> {
    private static final OBPref_.OBPrefIdGetter ID_GETTER = OBPref_.__ID_GETTER;
    private static final int __ID_key = OBPref_.key.f36237c;
    private static final int __ID_value = OBPref_.value.f36237c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/OBPrefCursor$Factory.class */
    static final class Factory implements b<OBPref> {
        @Override // io.objectbox.b.b
        public final Cursor<OBPref> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new OBPrefCursor(transaction, j, boxStore);
        }
    }

    public OBPrefCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, OBPref_.__INSTANCE, boxStore);
    }

    public final long getId(OBPref oBPref) {
        return ID_GETTER.getId(oBPref);
    }

    public final long put(OBPref oBPref) {
        Long l = oBPref.id;
        String key = oBPref.getKey();
        int i = key != null ? __ID_key : 0;
        String value = oBPref.getValue();
        long collect313311 = collect313311(this.cursor, l != null ? l.longValue() : 0L, 3, i, key, value != null ? __ID_value : 0, value, 0, null, 0, null, 0, 0L, 0, 0L, 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        oBPref.id = Long.valueOf(collect313311);
        return collect313311;
    }
}
