package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.PhotoUrls;
import com.callapp.contacts.model.objectbox.FastCacheData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/FastCacheDataCursor.class */
public final class FastCacheDataCursor extends Cursor<FastCacheData> {
    private static final FastCacheData_.FastCacheDataIdGetter ID_GETTER = FastCacheData_.__ID_GETTER;
    private static final int __ID_phoneOrIdKey = FastCacheData_.phoneOrIdKey.f62808c;
    private static final int __ID_expirationDate = FastCacheData_.expirationDate.f62808c;
    private static final int __ID_fullName = FastCacheData_.fullName.f62808c;
    private static final int __ID_photoUrls = FastCacheData_.photoUrls.f62808c;
    private static final int __ID_photoBackGroundColor = FastCacheData_.photoBackGroundColor.f62808c;
    private static final int __ID_photoUrl = FastCacheData_.photoUrl.f62808c;
    private static final int __ID_isSpam = FastCacheData_.isSpam.f62808c;
    private static final int __ID_photoDataSource = FastCacheData_.photoDataSource.f62808c;
    private static final int __ID_nameDataSource = FastCacheData_.nameDataSource.f62808c;
    private final PhotoUrlsConverter photoUrlsConverter = new PhotoUrlsConverter();
    private final DataSourceConverter photoDataSourceConverter = new DataSourceConverter();
    private final DataSourceConverter nameDataSourceConverter = new DataSourceConverter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/FastCacheDataCursor$Factory.class */
    static final class Factory implements AbstractC17949b<FastCacheData> {
        @Override // io.objectbox.p502b.AbstractC17949b
        public final Cursor<FastCacheData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new FastCacheDataCursor(transaction, j, boxStore);
        }
    }

    public FastCacheDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, FastCacheData_.__INSTANCE, boxStore);
    }

    public final long getId(FastCacheData fastCacheData) {
        return ID_GETTER.getId(fastCacheData);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r44v1 */
    /* JADX WARN: Type inference failed for: r44v3 */
    /* JADX WARN: Type inference failed for: r44v4 */
    /* JADX WARN: Type inference failed for: r50v0 */
    /* JADX WARN: Type inference failed for: r50v1 */
    /* JADX WARN: Type inference failed for: r50v2 */
    /* JADX WARN: Type inference failed for: r52v0 */
    /* JADX WARN: Type inference failed for: r52v1 */
    /* JADX WARN: Type inference failed for: r52v2 */
    /* JADX WARN: Type inference failed for: r55v0 */
    /* JADX WARN: Type inference failed for: r55v1 */
    /* JADX WARN: Type inference failed for: r55v2 */
    public final long put(FastCacheData fastCacheData) {
        Integer photoBackGroundColor;
        String phoneOrIdKey = fastCacheData.getPhoneOrIdKey();
        int i = phoneOrIdKey != null ? __ID_phoneOrIdKey : 0;
        String fullName = fastCacheData.getFullName();
        int i2 = fullName != null ? __ID_fullName : 0;
        PhotoUrls photoUrls = fastCacheData.getPhotoUrls();
        int i3 = photoUrls != null ? __ID_photoUrls : 0;
        String photoUrl = fastCacheData.getPhotoUrl();
        String str = null;
        collect400000(this.cursor, 0L, 1, i, phoneOrIdKey, i2, fullName, i3, i3 != 0 ? this.photoUrlsConverter.convertToDatabaseValue(photoUrls) : null, photoUrl != null ? __ID_photoUrl : 0, photoUrl);
        Long l = fastCacheData.f26773id;
        DataSource photoDataSource = fastCacheData.getPhotoDataSource();
        int i4 = photoDataSource != null ? __ID_photoDataSource : 0;
        DataSource nameDataSource = fastCacheData.getNameDataSource();
        int i5 = nameDataSource != null ? __ID_nameDataSource : 0;
        Date expirationDate = fastCacheData.getExpirationDate();
        int i6 = expirationDate != null ? __ID_expirationDate : 0;
        int i7 = fastCacheData.getPhotoBackGroundColor() != null ? __ID_photoBackGroundColor : 0;
        long j = this.cursor;
        ?? longValue = l != null ? l.longValue() : false;
        String convertToDatabaseValue = i4 != 0 ? this.photoDataSourceConverter.convertToDatabaseValue(photoDataSource) : null;
        if (i5 != 0) {
            str = this.nameDataSourceConverter.convertToDatabaseValue(nameDataSource);
        }
        long collect313311 = collect313311(j, longValue == true ? 1L : 0L, 2, i4, convertToDatabaseValue, i5, str, 0, null, 0, null, i6, (i6 != 0 ? expirationDate.getTime() : false) == true ? 1L : 0L, i7, (i7 != 0 ? photoBackGroundColor.intValue() : false) == true ? 1L : 0L, __ID_isSpam, (fastCacheData.isSpam()) == true ? 1L : 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        fastCacheData.f26773id = Long.valueOf(collect313311);
        return collect313311;
    }
}
