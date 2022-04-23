package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor.class */
public final class PersonalStoreItemUrlDataCursor extends Cursor<PersonalStoreItemUrlData> {
    private final PersonalStoreItemUrlData.ProductTypeConverter personalStoreItemTypeConverter = new PersonalStoreItemUrlData.ProductTypeConverter();
    private static final PersonalStoreItemUrlData_.PersonalStoreItemUrlDataIdGetter ID_GETTER = PersonalStoreItemUrlData_.__ID_GETTER;
    private static final int __ID_personalStoreItemUrl = PersonalStoreItemUrlData_.personalStoreItemUrl.f36237c;
    private static final int __ID_personalStoreItemType = PersonalStoreItemUrlData_.personalStoreItemType.f36237c;
    private static final int __ID_type = PersonalStoreItemUrlData_.type.f36237c;
    private static final int __ID_isUploaded = PersonalStoreItemUrlData_.isUploaded.f36237c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor$Factory.class */
    static final class Factory implements b<PersonalStoreItemUrlData> {
        @Override // io.objectbox.b.b
        public final Cursor<PersonalStoreItemUrlData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new PersonalStoreItemUrlDataCursor(transaction, j, boxStore);
        }
    }

    public PersonalStoreItemUrlDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, PersonalStoreItemUrlData_.__INSTANCE, boxStore);
    }

    private void attachEntity(PersonalStoreItemUrlData personalStoreItemUrlData) {
        personalStoreItemUrlData.__boxStore = this.boxStoreForEntities;
    }

    public final long getId(PersonalStoreItemUrlData personalStoreItemUrlData) {
        return ID_GETTER.getId(personalStoreItemUrlData);
    }

    public final long put(PersonalStoreItemUrlData personalStoreItemUrlData) {
        PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType;
        String personalStoreItemUrl = personalStoreItemUrlData.getPersonalStoreItemUrl();
        int i = personalStoreItemUrl != null ? __ID_personalStoreItemUrl : 0;
        int i2 = personalStoreItemUrlData.getPersonalStoreItemType() != null ? __ID_personalStoreItemType : 0;
        long j = this.cursor;
        long id = personalStoreItemUrlData.getId();
        long j2 = 0;
        long intValue = i2 != 0 ? this.personalStoreItemTypeConverter.convertToDatabaseValue(personalStoreItemType).intValue() : 0L;
        int i3 = __ID_type;
        long type = personalStoreItemUrlData.getType();
        int i4 = __ID_isUploaded;
        if (personalStoreItemUrlData.isUploaded) {
            j2 = 1;
        }
        long collect313311 = collect313311(j, id, 3, i, personalStoreItemUrl, 0, null, 0, null, 0, null, i2, intValue, i3, type, i4, j2, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        personalStoreItemUrlData.setId(collect313311);
        attachEntity(personalStoreItemUrlData);
        checkApplyToManyToDb(personalStoreItemUrlData.getPersonalStoreItemUserData(), PersonalStoreItemUserData.class);
        return collect313311;
    }
}
