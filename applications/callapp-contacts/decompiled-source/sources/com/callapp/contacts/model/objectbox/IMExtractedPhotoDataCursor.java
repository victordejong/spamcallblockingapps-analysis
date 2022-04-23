package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.objectbox.IMExtractedPhotoData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/IMExtractedPhotoDataCursor.class */
public final class IMExtractedPhotoDataCursor extends Cursor<IMExtractedPhotoData> {
    private final DataSourceConverter dataSourceConverter = new DataSourceConverter();
    private static final IMExtractedPhotoData_.IMExtractedPhotoDataIdGetter ID_GETTER = IMExtractedPhotoData_.__ID_GETTER;
    private static final int __ID_phoneOrIdKey = IMExtractedPhotoData_.phoneOrIdKey.f36237c;
    private static final int __ID_dataSource = IMExtractedPhotoData_.dataSource.f36237c;
    private static final int __ID_date = IMExtractedPhotoData_.date.f36237c;
    private static final int __ID_url = IMExtractedPhotoData_.url.f36237c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/IMExtractedPhotoDataCursor$Factory.class */
    static final class Factory implements b<IMExtractedPhotoData> {
        @Override // io.objectbox.b.b
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

    public final long put(IMExtractedPhotoData iMExtractedPhotoData) {
        Long l = iMExtractedPhotoData.id;
        String phoneOrIdKey = iMExtractedPhotoData.getPhoneOrIdKey();
        int i = phoneOrIdKey != null ? __ID_phoneOrIdKey : 0;
        DataSource dataSource = iMExtractedPhotoData.getDataSource();
        int i2 = dataSource != null ? __ID_dataSource : 0;
        String url = iMExtractedPhotoData.getUrl();
        long collect313311 = collect313311(this.cursor, l != null ? l.longValue() : 0L, 3, i, phoneOrIdKey, i2, i2 != 0 ? this.dataSourceConverter.convertToDatabaseValue(dataSource) : null, url != null ? __ID_url : 0, url, 0, null, __ID_date, iMExtractedPhotoData.getDate(), 0, 0L, 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        iMExtractedPhotoData.id = Long.valueOf(collect313311);
        return collect313311;
    }
}
