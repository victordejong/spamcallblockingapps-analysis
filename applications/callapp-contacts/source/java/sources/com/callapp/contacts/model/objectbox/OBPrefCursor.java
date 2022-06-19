package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.OBPref_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/OBPrefCursor.class */
public final class OBPrefCursor extends Cursor<OBPref> {
    private static final OBPref_.OBPrefIdGetter ID_GETTER = OBPref_.__ID_GETTER;
    private static final int __ID_key = OBPref_.key.f62808c;
    private static final int __ID_value = OBPref_.value.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/OBPrefCursor$Factory.class */
    static final class Factory implements AbstractC17949b<OBPref> {
        @Override // io.objectbox.p502b.AbstractC17949b
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r43v0 */
    /* JADX WARN: Type inference failed for: r43v2 */
    /* JADX WARN: Type inference failed for: r43v3 */
    public final long put(OBPref oBPref) {
        Long l = oBPref.f26783id;
        String key = oBPref.getKey();
        int i = key != null ? __ID_key : 0;
        String value = oBPref.getValue();
        int i2 = value != null ? __ID_value : 0;
        long collect313311 = collect313311(this.cursor, (l != null ? l.longValue() : false) == true ? 1L : 0L, 3, i, key, i2, value, 0, null, 0, null, 0, 0L, 0, 0L, 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        oBPref.f26783id = Long.valueOf(collect313311);
        return collect313311;
    }
}
