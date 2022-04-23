package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUserData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
import io.objectbox.relation.ToOne;
import java.io.Closeable;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PersonalStoreItemUserDataCursor.class */
public final class PersonalStoreItemUserDataCursor extends Cursor<PersonalStoreItemUserData> {
    private final PersonalStoreItemUrlData.ProductTypeConverter personalStoreItemTypeConverter = new PersonalStoreItemUrlData.ProductTypeConverter();
    private static final PersonalStoreItemUserData_.PersonalStoreItemUserDataIdGetter ID_GETTER = PersonalStoreItemUserData_.__ID_GETTER;
    private static final int __ID_phoneOrIdKey = PersonalStoreItemUserData_.phoneOrIdKey.f36237c;
    private static final int __ID_personalStoreItemType = PersonalStoreItemUserData_.personalStoreItemType.f36237c;
    private static final int __ID_personalStoreItemUrlDataToOneId = PersonalStoreItemUserData_.personalStoreItemUrlDataToOneId.f36237c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PersonalStoreItemUserDataCursor$Factory.class */
    static final class Factory implements b<PersonalStoreItemUserData> {
        @Override // io.objectbox.b.b
        public final Cursor<PersonalStoreItemUserData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new PersonalStoreItemUserDataCursor(transaction, j, boxStore);
        }
    }

    public PersonalStoreItemUserDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, PersonalStoreItemUserData_.__INSTANCE, boxStore);
    }

    private void attachEntity(PersonalStoreItemUserData personalStoreItemUserData) {
        personalStoreItemUserData.__boxStore = this.boxStoreForEntities;
    }

    public final long getId(PersonalStoreItemUserData personalStoreItemUserData) {
        return ID_GETTER.getId(personalStoreItemUserData);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long put(PersonalStoreItemUserData personalStoreItemUserData) {
        ToOne<PersonalStoreItemUrlData> toOne = personalStoreItemUserData.personalStoreItemUrlDataToOne;
        if (toOne != 0 && toOne.c()) {
            Closeable relationTargetCursor = getRelationTargetCursor(PersonalStoreItemUrlData.class);
            try {
                toOne.a((Cursor<PersonalStoreItemUrlData>) relationTargetCursor);
            } finally {
                relationTargetCursor.close();
            }
        }
        Long l = personalStoreItemUserData.id;
        String phoneOrIdKey = personalStoreItemUserData.getPhoneOrIdKey();
        int i = phoneOrIdKey != null ? __ID_phoneOrIdKey : 0;
        PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType = personalStoreItemUserData.getPersonalStoreItemType();
        int i2 = personalStoreItemType != null ? __ID_personalStoreItemType : 0;
        long collect313311 = collect313311(this.cursor, l != null ? l.longValue() : 0L, 3, i, phoneOrIdKey, 0, null, 0, null, 0, null, __ID_personalStoreItemUrlDataToOneId, personalStoreItemUserData.personalStoreItemUrlDataToOne.b(), i2, i2 != 0 ? this.personalStoreItemTypeConverter.convertToDatabaseValue(personalStoreItemType).intValue() : 0L, 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        personalStoreItemUserData.id = Long.valueOf(collect313311);
        attachEntity(personalStoreItemUserData);
        return collect313311;
    }
}
