package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.BirthdayData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/BirthdayDataCursor.class */
public final class BirthdayDataCursor extends Cursor<BirthdayData> {
    private static final BirthdayData_.BirthdayDataIdGetter ID_GETTER = BirthdayData_.__ID_GETTER;
    private static final int __ID_phoneOrIdKey = BirthdayData_.phoneOrIdKey.f62808c;
    private static final int __ID_dayOfMonth = BirthdayData_.dayOfMonth.f62808c;
    private static final int __ID_month = BirthdayData_.month.f62808c;
    private static final int __ID_socialNetId = BirthdayData_.socialNetId.f62808c;
    private static final int __ID_socialProfileId = BirthdayData_.socialProfileId.f62808c;
    private static final int __ID_displayName = BirthdayData_.displayName.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/BirthdayDataCursor$Factory.class */
    static final class Factory implements AbstractC17949b<BirthdayData> {
        @Override // io.objectbox.p502b.AbstractC17949b
        public final Cursor<BirthdayData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new BirthdayDataCursor(transaction, j, boxStore);
        }
    }

    public BirthdayDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, BirthdayData_.__INSTANCE, boxStore);
    }

    public final long getId(BirthdayData birthdayData) {
        return ID_GETTER.getId(birthdayData);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r45v0 */
    /* JADX WARN: Type inference failed for: r45v2 */
    /* JADX WARN: Type inference failed for: r45v3 */
    public final long put(BirthdayData birthdayData) {
        Long l = birthdayData.f26751id;
        String phoneOrIdKey = birthdayData.getPhoneOrIdKey();
        int i = phoneOrIdKey != null ? __ID_phoneOrIdKey : 0;
        String socialProfileId = birthdayData.getSocialProfileId();
        int i2 = socialProfileId != null ? __ID_socialProfileId : 0;
        String displayName = birthdayData.getDisplayName();
        int i3 = displayName != null ? __ID_displayName : 0;
        long collect313311 = collect313311(this.cursor, (l != null ? l.longValue() : false) == true ? 1L : 0L, 3, i, phoneOrIdKey, i2, socialProfileId, i3, displayName, 0, null, __ID_dayOfMonth, birthdayData.getDayOfMonth(), __ID_month, birthdayData.getMonth(), __ID_socialNetId, birthdayData.getSocialNetId(), 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        birthdayData.f26751id = Long.valueOf(collect313311);
        return collect313311;
    }
}
