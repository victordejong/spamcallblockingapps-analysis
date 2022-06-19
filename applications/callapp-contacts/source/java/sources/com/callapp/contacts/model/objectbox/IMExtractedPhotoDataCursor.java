package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.objectbox.IMExtractedPhotoData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/IMExtractedPhotoDataCursor.class */
public final class IMExtractedPhotoDataCursor extends Cursor<IMExtractedPhotoData> {
    private final DataSourceConverter dataSourceConverter = new DataSourceConverter();
    private static final IMExtractedPhotoData_.IMExtractedPhotoDataIdGetter ID_GETTER = IMExtractedPhotoData_.__ID_GETTER;
    private static final int __ID_phoneOrIdKey = IMExtractedPhotoData_.phoneOrIdKey.f62808c;
    private static final int __ID_dataSource = IMExtractedPhotoData_.dataSource.f62808c;
    private static final int __ID_date = IMExtractedPhotoData_.date.f62808c;
    private static final int __ID_url = IMExtractedPhotoData_.url.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/IMExtractedPhotoDataCursor$Factory.class */
    static final class Factory implements AbstractC17949b<IMExtractedPhotoData> {
        @Override // io.objectbox.p502b.AbstractC17949b
        public final Cursor<IMExtractedPhotoData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new IMExtractedPhotoDataCursor(transaction, j, boxStore);
        }
    }

    public IMExtractedPhotoDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, IMExtractedPhotoData_.__INSTANCE, boxStore);
    }

    public final long getId(IMExtractedPhotoData iMExtractedPhotoData) {
        return ID_GETTER.getId(iMExtractedPhotoData);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r45v0 */
    /* JADX WARN: Type inference failed for: r45v2 */
    /* JADX WARN: Type inference failed for: r45v3 */
    public final long put(IMExtractedPhotoData iMExtractedPhotoData) {
        Long l = iMExtractedPhotoData.f26775id;
        String phoneOrIdKey = iMExtractedPhotoData.getPhoneOrIdKey();
        int i = phoneOrIdKey != null ? __ID_phoneOrIdKey : 0;
        DataSource dataSource = iMExtractedPhotoData.getDataSource();
        int i2 = dataSource != null ? __ID_dataSource : 0;
        String url = iMExtractedPhotoData.getUrl();
        int i3 = url != null ? __ID_url : 0;
        long j = this.cursor;
        ?? longValue = l != null ? l.longValue() : false;
        String convertToDatabaseValue = i2 != 0 ? this.dataSourceConverter.convertToDatabaseValue(dataSource) : null;
        long collect313311 = collect313311(j, longValue == true ? 1L : 0L, 3, i, phoneOrIdKey, i2, convertToDatabaseValue, i3, url, 0, null, __ID_date, iMExtractedPhotoData.getDate(), 0, 0L, 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        iMExtractedPhotoData.f26775id = Long.valueOf(collect313311);
        return collect313311;
    }
}
