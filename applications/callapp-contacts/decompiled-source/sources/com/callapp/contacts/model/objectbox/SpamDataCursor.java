package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.SpamData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SpamDataCursor.class */
public final class SpamDataCursor extends Cursor<SpamData> {
    private static final SpamData_.SpamDataIdGetter ID_GETTER = SpamData_.__ID_GETTER;
    private static final int __ID_phoneAsRaw = SpamData_.phoneAsRaw.f36237c;
    private static final int __ID_when = SpamData_.when.f36237c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SpamDataCursor$Factory.class */
    static final class Factory implements b<SpamData> {
        @Override // io.objectbox.b.b
        public final Cursor<SpamData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new SpamDataCursor(transaction, j, boxStore);
        }
    }

    public SpamDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, SpamData_.__INSTANCE, boxStore);
    }

    public final long getId(SpamData spamData) {
        return ID_GETTER.getId(spamData);
    }

    public final long put(SpamData spamData) {
        String phoneAsRaw = spamData.getPhoneAsRaw();
        long collect313311 = collect313311(this.cursor, spamData.getId(), 3, phoneAsRaw != null ? __ID_phoneAsRaw : 0, phoneAsRaw, 0, null, 0, null, 0, null, __ID_when, spamData.when, 0, 0L, 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        spamData.setId(collect313311);
        return collect313311;
    }
}
