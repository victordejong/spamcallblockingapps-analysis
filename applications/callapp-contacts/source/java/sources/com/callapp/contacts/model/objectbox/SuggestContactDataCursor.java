package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.SuggestContactData_;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SuggestContactDataCursor.class */
public final class SuggestContactDataCursor extends Cursor<SuggestContactData> {
    private static final SuggestContactData_.SuggestContactDataIdGetter ID_GETTER = SuggestContactData_.__ID_GETTER;
    private static final int __ID_phoneOrIdKey = SuggestContactData_.phoneOrIdKey.f62808c;
    private static final int __ID_socialNetworkId = SuggestContactData_.socialNetworkId.f62808c;
    private static final int __ID_profileId = SuggestContactData_.profileId.f62808c;
    private static final int __ID_userName = SuggestContactData_.userName.f62808c;
    private static final int __ID_contactName = SuggestContactData_.contactName.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SuggestContactDataCursor$Factory.class */
    static final class Factory implements AbstractC17949b<SuggestContactData> {
        @Override // io.objectbox.p502b.AbstractC17949b
        public final Cursor<SuggestContactData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new SuggestContactDataCursor(transaction, j, boxStore);
        }
    }

    public SuggestContactDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, SuggestContactData_.__INSTANCE, boxStore);
    }

    public final long getId(SuggestContactData suggestContactData) {
        return ID_GETTER.getId(suggestContactData);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r30v0 */
    /* JADX WARN: Type inference failed for: r30v2 */
    /* JADX WARN: Type inference failed for: r30v3 */
    public final long put(SuggestContactData suggestContactData) {
        String phoneOrIdKey = suggestContactData.getPhoneOrIdKey();
        int i = phoneOrIdKey != null ? __ID_phoneOrIdKey : 0;
        String profileId = suggestContactData.getProfileId();
        int i2 = profileId != null ? __ID_profileId : 0;
        String userName = suggestContactData.getUserName();
        int i3 = userName != null ? __ID_userName : 0;
        String contactName = suggestContactData.getContactName();
        collect400000(this.cursor, 0L, 1, i, phoneOrIdKey, i2, profileId, i3, userName, contactName != null ? __ID_contactName : 0, contactName);
        Long id = suggestContactData.getId();
        long collect004000 = collect004000(this.cursor, (id != null ? id.longValue() : false) == true ? 1L : 0L, 2, __ID_socialNetworkId, suggestContactData.getSocialNetworkId(), 0, 0L, 0, 0L, 0, 0L);
        suggestContactData.setId(Long.valueOf(collect004000));
        return collect004000;
    }
}
