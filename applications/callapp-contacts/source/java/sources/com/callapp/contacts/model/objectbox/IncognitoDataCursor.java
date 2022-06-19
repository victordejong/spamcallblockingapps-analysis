package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.IncognitoData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/IncognitoDataCursor.class */
public final class IncognitoDataCursor extends Cursor<IncognitoData> {
    private static final IncognitoData_.IncognitoDataIdGetter ID_GETTER = IncognitoData_.__ID_GETTER;
    private static final int __ID_phoneOrIdKey = IncognitoData_.phoneOrIdKey.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/IncognitoDataCursor$Factory.class */
    static final class Factory implements AbstractC17949b<IncognitoData> {
        @Override // io.objectbox.p502b.AbstractC17949b
        public final Cursor<IncognitoData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new IncognitoDataCursor(transaction, j, boxStore);
        }
    }

    public IncognitoDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, IncognitoData_.__INSTANCE, boxStore);
    }

    public final long getId(IncognitoData incognitoData) {
        return ID_GETTER.getId(incognitoData);
    }

    public final long put(IncognitoData incognitoData) {
        String phoneOrIdKey = incognitoData.getPhoneOrIdKey();
        long collect313311 = collect313311(this.cursor, incognitoData.f26777id, 3, phoneOrIdKey != null ? __ID_phoneOrIdKey : 0, phoneOrIdKey, 0, null, 0, null, 0, null, 0, 0L, 0, 0L, 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        incognitoData.f26777id = collect313311;
        return collect313311;
    }
}
