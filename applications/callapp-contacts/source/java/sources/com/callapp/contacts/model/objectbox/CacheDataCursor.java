package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.CacheData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CacheDataCursor.class */
public final class CacheDataCursor extends Cursor<CacheData> {
    private static final CacheData_.CacheDataIdGetter ID_GETTER = CacheData_.__ID_GETTER;
    private static final int __ID_file = CacheData_.file.f62808c;
    private static final int __ID_expires = CacheData_.expires.f62808c;
    private static final int __ID_valueType = CacheData_.valueType.f62808c;
    private static final int __ID_stringVal = CacheData_.stringVal.f62808c;
    private static final int __ID_longVal = CacheData_.longVal.f62808c;
    private static final int __ID_booleanVal = CacheData_.booleanVal.f62808c;
    private static final int __ID_integerVal = CacheData_.integerVal.f62808c;
    private static final int __ID_bytesVal = CacheData_.bytesVal.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CacheDataCursor$Factory.class */
    static final class Factory implements AbstractC17949b<CacheData> {
        @Override // io.objectbox.p502b.AbstractC17949b
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r56v0 */
    /* JADX WARN: Type inference failed for: r56v2 */
    /* JADX WARN: Type inference failed for: r56v3 */
    /* JADX WARN: Type inference failed for: r58v0 */
    /* JADX WARN: Type inference failed for: r58v1 */
    /* JADX WARN: Type inference failed for: r58v2 */
    /* JADX WARN: Type inference failed for: r60v0 */
    /* JADX WARN: Type inference failed for: r60v1 */
    /* JADX WARN: Type inference failed for: r60v2 */
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
        long j = this.cursor;
        long id = cacheData.getId();
        ?? longValue = i5 != 0 ? longVal.longValue() : false;
        ?? time = i6 != 0 ? expires.getTime() : false;
        ?? intValue = i7 != 0 ? integerVal.intValue() : false;
        long collect313311 = collect313311(j, id, 3, i, file, i2, valueType, i3, stringVal, i4, bytesVal, i5, longValue == true ? 1L : 0L, i6, time == true ? 1L : 0L, i7, intValue == true ? 1L : 0L, i8, (i8 == 0 || !booleanVal.booleanValue()) ? 0 : 1, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        cacheData.setId(collect313311);
        return collect313311;
    }
}
