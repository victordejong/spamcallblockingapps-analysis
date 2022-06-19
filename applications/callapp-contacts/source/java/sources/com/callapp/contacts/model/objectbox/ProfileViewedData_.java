package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.ProfileViewedDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ProfileViewedData_.class */
public final class ProfileViewedData_ implements AbstractC17957c<ProfileViewedData> {
    public static final C17978g<ProfileViewedData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "ProfileViewedData";
    public static final int __ENTITY_ID = 49;
    public static final String __ENTITY_NAME = "ProfileViewedData";
    public static final C17978g<ProfileViewedData> __ID_PROPERTY;
    public static final ProfileViewedData_ __INSTANCE;
    public static final C17978g<ProfileViewedData> counter;
    public static final C17978g<ProfileViewedData> entrypoint;

    /* renamed from: id */
    public static final C17978g<ProfileViewedData> f26792id;
    public static final C17978g<ProfileViewedData> lastViewed;
    public static final C17978g<ProfileViewedData> name;
    public static final C17978g<ProfileViewedData> phoneNumber;
    public static final C17978g<ProfileViewedData> type;
    public static final Class<ProfileViewedData> __ENTITY_CLASS = ProfileViewedData.class;
    public static final AbstractC17949b<ProfileViewedData> __CURSOR_FACTORY = new ProfileViewedDataCursor.Factory();
    static final ProfileViewedDataIdGetter __ID_GETTER = new ProfileViewedDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ProfileViewedData_$ProfileViewedDataIdGetter.class */
    public static final class ProfileViewedDataIdGetter implements AbstractC17950c<ProfileViewedData> {
        ProfileViewedDataIdGetter() {
        }

        public final long getId(ProfileViewedData profileViewedData) {
            return profileViewedData.getId();
        }
    }

    static {
        ProfileViewedData_ profileViewedData_ = new ProfileViewedData_();
        __INSTANCE = profileViewedData_;
        C17978g<ProfileViewedData> c17978g = new C17978g<>(profileViewedData_, 0, 1, Long.TYPE, "id", true, "id");
        f26792id = c17978g;
        C17978g<ProfileViewedData> c17978g2 = new C17978g<>(profileViewedData_, 1, 2, String.class, "phoneNumber");
        phoneNumber = c17978g2;
        C17978g<ProfileViewedData> c17978g3 = new C17978g<>(profileViewedData_, 2, 8, Integer.TYPE, "entrypoint", false, "entrypoint", WhoViewedProfileEntryPointConverter.class, ENTRYPOINT.class);
        entrypoint = c17978g3;
        C17978g<ProfileViewedData> c17978g4 = new C17978g<>(profileViewedData_, 3, 4, Long.TYPE, "lastViewed");
        lastViewed = c17978g4;
        C17978g<ProfileViewedData> c17978g5 = new C17978g<>(profileViewedData_, 4, 5, String.class, "name");
        name = c17978g5;
        C17978g<ProfileViewedData> c17978g6 = new C17978g<>(profileViewedData_, 5, 6, Integer.TYPE, "counter");
        counter = c17978g6;
        C17978g<ProfileViewedData> c17978g7 = new C17978g<>(profileViewedData_, 6, 7, Integer.TYPE, "type", false, "type", ViewType.class, TYPE.class);
        type = c17978g7;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4, c17978g5, c17978g6, c17978g7};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<ProfileViewedData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<ProfileViewedData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "ProfileViewedData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<ProfileViewedData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 49;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "ProfileViewedData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<ProfileViewedData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<ProfileViewedData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
