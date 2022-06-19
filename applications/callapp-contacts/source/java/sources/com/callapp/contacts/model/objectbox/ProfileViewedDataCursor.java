package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.ProfileViewedData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ProfileViewedDataCursor.class */
public final class ProfileViewedDataCursor extends Cursor<ProfileViewedData> {
    private final WhoViewedProfileEntryPointConverter entrypointConverter = new WhoViewedProfileEntryPointConverter();
    private final ViewType typeConverter = new ViewType();
    private static final ProfileViewedData_.ProfileViewedDataIdGetter ID_GETTER = ProfileViewedData_.__ID_GETTER;
    private static final int __ID_phoneNumber = ProfileViewedData_.phoneNumber.f62808c;
    private static final int __ID_entrypoint = ProfileViewedData_.entrypoint.f62808c;
    private static final int __ID_lastViewed = ProfileViewedData_.lastViewed.f62808c;
    private static final int __ID_name = ProfileViewedData_.name.f62808c;
    private static final int __ID_counter = ProfileViewedData_.counter.f62808c;
    private static final int __ID_type = ProfileViewedData_.type.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ProfileViewedDataCursor$Factory.class */
    static final class Factory implements AbstractC17949b<ProfileViewedData> {
        @Override // io.objectbox.p502b.AbstractC17949b
        public final Cursor<ProfileViewedData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new ProfileViewedDataCursor(transaction, j, boxStore);
        }
    }

    public ProfileViewedDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, ProfileViewedData_.__INSTANCE, boxStore);
    }

    public final long getId(ProfileViewedData profileViewedData) {
        return ID_GETTER.getId(profileViewedData);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r51v0 */
    /* JADX WARN: Type inference failed for: r51v2 */
    /* JADX WARN: Type inference failed for: r51v3 */
    public final long put(ProfileViewedData profileViewedData) {
        String phoneNumber = profileViewedData.getPhoneNumber();
        int i = phoneNumber != null ? __ID_phoneNumber : 0;
        String name = profileViewedData.getName();
        int i2 = name != null ? __ID_name : 0;
        ENTRYPOINT entrypoint = profileViewedData.getEntrypoint();
        int i3 = entrypoint != null ? __ID_entrypoint : 0;
        TYPE type = profileViewedData.getType();
        int i4 = type != null ? __ID_type : 0;
        long j = this.cursor;
        long id = profileViewedData.getId();
        int i5 = __ID_lastViewed;
        long lastViewed = profileViewedData.getLastViewed();
        ?? intValue = i3 != 0 ? this.entrypointConverter.convertToDatabaseValue(entrypoint).intValue() : false;
        long collect313311 = collect313311(j, id, 3, i, phoneNumber, i2, name, 0, null, 0, null, i5, lastViewed, i3, intValue == true ? 1L : 0L, __ID_counter, profileViewedData.getCounter(), i4, i4 != 0 ? this.typeConverter.convertToDatabaseValue(type).intValue() : 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        profileViewedData.setId(collect313311);
        return collect313311;
    }
}
