package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor.class */
public final class PersonalStoreItemUrlDataCursor extends Cursor<PersonalStoreItemUrlData> {
    private final PersonalStoreItemUrlData.ProductTypeConverter personalStoreItemTypeConverter = new PersonalStoreItemUrlData.ProductTypeConverter();
    private static final PersonalStoreItemUrlData_.PersonalStoreItemUrlDataIdGetter ID_GETTER = PersonalStoreItemUrlData_.__ID_GETTER;
    private static final int __ID_personalStoreItemUrl = PersonalStoreItemUrlData_.personalStoreItemUrl.f62808c;
    private static final int __ID_personalStoreItemType = PersonalStoreItemUrlData_.personalStoreItemType.f62808c;
    private static final int __ID_type = PersonalStoreItemUrlData_.type.f62808c;
    private static final int __ID_isUploaded = PersonalStoreItemUrlData_.isUploaded.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor$Factory.class */
    static final class Factory implements AbstractC17949b<PersonalStoreItemUrlData> {
        @Override // io.objectbox.p502b.AbstractC17949b
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r44v0 */
    /* JADX WARN: Type inference failed for: r44v1 */
    /* JADX WARN: Type inference failed for: r44v2 */
    /* JADX WARN: Type inference failed for: r46v0 */
    /* JADX WARN: Type inference failed for: r46v2 */
    /* JADX WARN: Type inference failed for: r46v3 */
    public final long put(PersonalStoreItemUrlData personalStoreItemUrlData) {
        PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType;
        String personalStoreItemUrl = personalStoreItemUrlData.getPersonalStoreItemUrl();
        int i = personalStoreItemUrl != null ? __ID_personalStoreItemUrl : 0;
        int i2 = personalStoreItemUrlData.getPersonalStoreItemType() != null ? __ID_personalStoreItemType : 0;
        long j = this.cursor;
        long id = personalStoreItemUrlData.getId();
        ?? r44 = false;
        ?? intValue = i2 != 0 ? this.personalStoreItemTypeConverter.convertToDatabaseValue(personalStoreItemType).intValue() : false;
        int i3 = __ID_type;
        long type = personalStoreItemUrlData.getType();
        int i4 = __ID_isUploaded;
        if (personalStoreItemUrlData.isUploaded) {
            r44 = true;
        }
        long collect313311 = collect313311(j, id, 3, i, personalStoreItemUrl, 0, null, 0, null, 0, null, i2, intValue == true ? 1L : 0L, i3, type, i4, r44 == true ? 1L : 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        personalStoreItemUrlData.setId(collect313311);
        attachEntity(personalStoreItemUrlData);
        checkApplyToManyToDb(personalStoreItemUrlData.getPersonalStoreItemUserData(), PersonalStoreItemUserData.class);
        return collect313311;
    }
}
