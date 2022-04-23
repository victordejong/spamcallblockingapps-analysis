package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.CacheData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CacheDataCursor.class */
public final class CacheDataCursor extends Cursor<CacheData> {
    private static final CacheData_.CacheDataIdGetter ID_GETTER = CacheData_.__ID_GETTER;
    private static final int __ID_file = CacheData_.file.f36237c;
    private static final int __ID_expires = CacheData_.expires.f36237c;
    private static final int __ID_valueType = CacheData_.valueType.f36237c;
    private static final int __ID_stringVal = CacheData_.stringVal.f36237c;
    private static final int __ID_longVal = CacheData_.longVal.f36237c;
    private static final int __ID_booleanVal = CacheData_.booleanVal.f36237c;
    private static final int __ID_integerVal = CacheData_.integerVal.f36237c;
    private static final int __ID_bytesVal = CacheData_.bytesVal.f36237c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CacheDataCursor$Factory.class */
    static final class Factory implements b<CacheData> {
        @Override // io.objectbox.b.b
        public final Cursor<CacheData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new CacheDataCursor(transaction, j, boxStore);
        }
    }

    public CacheDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, CacheData_.__INSTANCE, boxStore);
    }

    public final long getId(CacheData cacheData) {
        return ID_GETTER.getId(cacheData);
    }

    public final long put(CacheData cacheData) {
        String file = cacheData.getFile();
        int i = file != null ? __ID_file : 0;
        String valueType = cacheData.getValueType();
        int i2 = valueType != null ? __ID_valueType : 0;
        String stringVal = cacheData.getStringVal();
        int i3 = stringVal != null ? __ID_stringVal : 0;
        byte[] bytesVal = cacheData.getBytesVal();
        int i4 = bytesVal != null ? __ID_bytesVal : 0;
        Long longVal = cacheData.getLongVal();
        int i5 = longVal != null ? __ID_longVal : 0;
        Date expires = cacheData.getExpires();
        int i6 = expires != null ? __ID_expires : 0;
        Integer integerVal = cacheData.getIntegerVal();
        int i7 = integerVal != null ? __ID_integerVal : 0;
        Boolean booleanVal = cacheData.getBooleanVal();
        int i8 = booleanVal != null ? __ID_booleanVal : 0;
        long collect313311 = collect313311(this.cursor, cacheData.getId(), 3, i, file, i2, valueType, i3, stringVal, i4, bytesVal, i5, i5 != 0 ? longVal.longValue() : 0L, i6, i6 != 0 ? expires.getTime() : 0L, i7, i7 != 0 ? integerVal.intValue() : 0L, i8, (i8 == 0 || !booleanVal.booleanValue()) ? 0 : 1, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        cacheData.setId(collect313311);
        return collect313311;
    }
}
