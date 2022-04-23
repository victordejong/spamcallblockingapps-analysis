package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.BirthdayData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/BirthdayDataCursor.class */
public final class BirthdayDataCursor extends Cursor<BirthdayData> {
    private static final BirthdayData_.BirthdayDataIdGetter ID_GETTER = BirthdayData_.__ID_GETTER;
    private static final int __ID_phoneOrIdKey = BirthdayData_.phoneOrIdKey.f36237c;
    private static final int __ID_dayOfMonth = BirthdayData_.dayOfMonth.f36237c;
    private static final int __ID_month = BirthdayData_.month.f36237c;
    private static final int __ID_socialNetId = BirthdayData_.socialNetId.f36237c;
    private static final int __ID_socialProfileId = BirthdayData_.socialProfileId.f36237c;
    private static final int __ID_displayName = BirthdayData_.displayName.f36237c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/BirthdayDataCursor$Factory.class */
    static final class Factory implements b<BirthdayData> {
        @Override // io.objectbox.b.b
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

    public final long put(BirthdayData birthdayData) {
        Long l = birthdayData.id;
        String phoneOrIdKey = birthdayData.getPhoneOrIdKey();
        int i = phoneOrIdKey != null ? __ID_phoneOrIdKey : 0;
        String socialProfileId = birthdayData.getSocialProfileId();
        int i2 = socialProfileId != null ? __ID_socialProfileId : 0;
        String displayName = birthdayData.getDisplayName();
        long collect313311 = collect313311(this.cursor, l != null ? l.longValue() : 0L, 3, i, phoneOrIdKey, i2, socialProfileId, displayName != null ? __ID_displayName : 0, displayName, 0, null, __ID_dayOfMonth, birthdayData.getDayOfMonth(), __ID_month, birthdayData.getMonth(), __ID_socialNetId, birthdayData.getSocialNetId(), 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        birthdayData.id = Long.valueOf(collect313311);
        return collect313311;
    }
}
