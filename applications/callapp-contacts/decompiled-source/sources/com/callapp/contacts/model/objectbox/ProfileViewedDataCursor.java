package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.ProfileViewedData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ProfileViewedDataCursor.class */
public final class ProfileViewedDataCursor extends Cursor<ProfileViewedData> {
    private final WhoViewedProfileEntryPointConverter entrypointConverter = new WhoViewedProfileEntryPointConverter();
    private final ViewType typeConverter = new ViewType();
    private static final ProfileViewedData_.ProfileViewedDataIdGetter ID_GETTER = ProfileViewedData_.__ID_GETTER;
    private static final int __ID_phoneNumber = ProfileViewedData_.phoneNumber.f36237c;
    private static final int __ID_entrypoint = ProfileViewedData_.entrypoint.f36237c;
    private static final int __ID_lastViewed = ProfileViewedData_.lastViewed.f36237c;
    private static final int __ID_name = ProfileViewedData_.name.f36237c;
    private static final int __ID_counter = ProfileViewedData_.counter.f36237c;
    private static final int __ID_type = ProfileViewedData_.type.f36237c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ProfileViewedDataCursor$Factory.class */
    static final class Factory implements b<ProfileViewedData> {
        @Override // io.objectbox.b.b
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

    public final long put(ProfileViewedData profileViewedData) {
        String phoneNumber = profileViewedData.getPhoneNumber();
        int i = phoneNumber != null ? __ID_phoneNumber : 0;
        String name = profileViewedData.getName();
        int i2 = name != null ? __ID_name : 0;
        ENTRYPOINT entrypoint = profileViewedData.getEntrypoint();
        int i3 = entrypoint != null ? __ID_entrypoint : 0;
        TYPE type = profileViewedData.getType();
        int i4 = type != null ? __ID_type : 0;
        long collect313311 = collect313311(this.cursor, profileViewedData.getId(), 3, i, phoneNumber, i2, name, 0, null, 0, null, __ID_lastViewed, profileViewedData.getLastViewed(), i3, i3 != 0 ? this.entrypointConverter.convertToDatabaseValue(entrypoint).intValue() : 0L, __ID_counter, profileViewedData.getCounter(), i4, i4 != 0 ? this.typeConverter.convertToDatabaseValue(type).intValue() : 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        profileViewedData.setId(collect313311);
        return collect313311;
    }
}
