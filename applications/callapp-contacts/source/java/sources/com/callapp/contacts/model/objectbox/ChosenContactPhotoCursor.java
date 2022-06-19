package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.objectbox.ChosenContactPhoto_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ChosenContactPhotoCursor.class */
public final class ChosenContactPhotoCursor extends Cursor<ChosenContactPhoto> {
    private final DataSourceConverter dataSourceConverter = new DataSourceConverter();
    private static final ChosenContactPhoto_.ChosenContactPhotoIdGetter ID_GETTER = ChosenContactPhoto_.__ID_GETTER;
    private static final int __ID_phoneOrIdKey = ChosenContactPhoto_.phoneOrIdKey.f62808c;
    private static final int __ID_dataSource = ChosenContactPhoto_.dataSource.f62808c;
    private static final int __ID_url = ChosenContactPhoto_.url.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ChosenContactPhotoCursor$Factory.class */
    static final class Factory implements AbstractC17949b<ChosenContactPhoto> {
        @Override // io.objectbox.p502b.AbstractC17949b
        public final Cursor<ChosenContactPhoto> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new ChosenContactPhotoCursor(transaction, j, boxStore);
        }
    }

    public ChosenContactPhotoCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, ChosenContactPhoto_.__INSTANCE, boxStore);
    }

    public final long getId(ChosenContactPhoto chosenContactPhoto) {
        return ID_GETTER.getId(chosenContactPhoto);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r45v0 */
    /* JADX WARN: Type inference failed for: r45v2 */
    /* JADX WARN: Type inference failed for: r45v3 */
    public final long put(ChosenContactPhoto chosenContactPhoto) {
        Long l = chosenContactPhoto.f26765id;
        String phoneOrIdKey = chosenContactPhoto.getPhoneOrIdKey();
        int i = phoneOrIdKey != null ? __ID_phoneOrIdKey : 0;
        DataSource dataSource = chosenContactPhoto.getDataSource();
        int i2 = dataSource != null ? __ID_dataSource : 0;
        String url = chosenContactPhoto.getUrl();
        int i3 = url != null ? __ID_url : 0;
        long j = this.cursor;
        ?? longValue = l != null ? l.longValue() : false;
        long collect313311 = collect313311(j, longValue == true ? 1L : 0L, 3, i, phoneOrIdKey, i2, i2 != 0 ? this.dataSourceConverter.convertToDatabaseValue(dataSource) : null, i3, url, 0, null, 0, 0L, 0, 0L, 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        chosenContactPhoto.f26765id = Long.valueOf(collect313311);
        return collect313311;
    }
}
