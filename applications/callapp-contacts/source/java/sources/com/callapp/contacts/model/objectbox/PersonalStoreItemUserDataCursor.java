package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUserData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.relation.ToOne;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PersonalStoreItemUserDataCursor.class */
public final class PersonalStoreItemUserDataCursor extends Cursor<PersonalStoreItemUserData> {
    private final PersonalStoreItemUrlData.ProductTypeConverter personalStoreItemTypeConverter = new PersonalStoreItemUrlData.ProductTypeConverter();
    private static final PersonalStoreItemUserData_.PersonalStoreItemUserDataIdGetter ID_GETTER = PersonalStoreItemUserData_.__ID_GETTER;
    private static final int __ID_phoneOrIdKey = PersonalStoreItemUserData_.phoneOrIdKey.f62808c;
    private static final int __ID_personalStoreItemType = PersonalStoreItemUserData_.personalStoreItemType.f62808c;
    private static final int __ID_personalStoreItemUrlDataToOneId = PersonalStoreItemUserData_.personalStoreItemUrlDataToOneId.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PersonalStoreItemUserDataCursor$Factory.class */
    static final class Factory implements AbstractC17949b<PersonalStoreItemUserData> {
        @Override // io.objectbox.p502b.AbstractC17949b
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
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r43v0 */
    /* JADX WARN: Type inference failed for: r43v2 */
    /* JADX WARN: Type inference failed for: r43v3 */
    /* JADX WARN: Type inference failed for: r48v0 */
    /* JADX WARN: Type inference failed for: r48v1 */
    /* JADX WARN: Type inference failed for: r48v2 */
    public final long put(PersonalStoreItemUserData personalStoreItemUserData) {
        ToOne toOne = personalStoreItemUserData.personalStoreItemUrlDataToOne;
        if (toOne != null && toOne.m4567c()) {
            Cursor relationTargetCursor = getRelationTargetCursor(PersonalStoreItemUrlData.class);
            try {
                toOne.m4571a(relationTargetCursor);
            } finally {
                relationTargetCursor.close();
            }
        }
        Long l = personalStoreItemUserData.f26787id;
        String phoneOrIdKey = personalStoreItemUserData.getPhoneOrIdKey();
        int i = phoneOrIdKey != null ? __ID_phoneOrIdKey : 0;
        PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType = personalStoreItemUserData.getPersonalStoreItemType();
        int i2 = personalStoreItemType != null ? __ID_personalStoreItemType : 0;
        long j = this.cursor;
        ?? longValue = l != null ? l.longValue() : false;
        long collect313311 = collect313311(j, longValue == true ? 1L : 0L, 3, i, phoneOrIdKey, 0, null, 0, null, 0, null, __ID_personalStoreItemUrlDataToOneId, personalStoreItemUserData.personalStoreItemUrlDataToOne.m4568b(), i2, (i2 != 0 ? (long) this.personalStoreItemTypeConverter.convertToDatabaseValue(personalStoreItemType).intValue() : false) == true ? 1L : 0L, 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        personalStoreItemUserData.f26787id = Long.valueOf(collect313311);
        attachEntity(personalStoreItemUserData);
        return collect313311;
    }
}
