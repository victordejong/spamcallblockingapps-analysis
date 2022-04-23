package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.ProfileViewedDataCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ProfileViewedData_.class */
public final class ProfileViewedData_ implements c<ProfileViewedData> {
    public static final g<ProfileViewedData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "ProfileViewedData";
    public static final int __ENTITY_ID = 49;
    public static final String __ENTITY_NAME = "ProfileViewedData";
    public static final g<ProfileViewedData> __ID_PROPERTY;
    public static final ProfileViewedData_ __INSTANCE;
    public static final g<ProfileViewedData> counter;
    public static final g<ProfileViewedData> entrypoint;
    public static final g<ProfileViewedData> id;
    public static final g<ProfileViewedData> lastViewed;
    public static final g<ProfileViewedData> name;
    public static final g<ProfileViewedData> phoneNumber;
    public static final g<ProfileViewedData> type;
    public static final Class<ProfileViewedData> __ENTITY_CLASS = ProfileViewedData.class;
    public static final b<ProfileViewedData> __CURSOR_FACTORY = new ProfileViewedDataCursor.Factory();
    static final ProfileViewedDataIdGetter __ID_GETTER = new ProfileViewedDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ProfileViewedData_$ProfileViewedDataIdGetter.class */
    static final class ProfileViewedDataIdGetter implements io.objectbox.b.c<ProfileViewedData> {
        ProfileViewedDataIdGetter() {
        }

        public final long getId(ProfileViewedData profileViewedData) {
            return profileViewedData.getId();
        }
    }

    static {
        ProfileViewedData_ profileViewedData_ = new ProfileViewedData_();
        __INSTANCE = profileViewedData_;
        g<ProfileViewedData> gVar = new g<>(profileViewedData_, 0, 1, Long.TYPE, "id", true, "id");
        id = gVar;
        g<ProfileViewedData> gVar2 = new g<>(profileViewedData_, 1, 2, String.class, "phoneNumber");
        phoneNumber = gVar2;
        g<ProfileViewedData> gVar3 = new g<>(profileViewedData_, 2, 8, Integer.TYPE, "entrypoint", false, "entrypoint", WhoViewedProfileEntryPointConverter.class, ENTRYPOINT.class);
        entrypoint = gVar3;
        g<ProfileViewedData> gVar4 = new g<>(profileViewedData_, 3, 4, Long.TYPE, "lastViewed");
        lastViewed = gVar4;
        g<ProfileViewedData> gVar5 = new g<>(profileViewedData_, 4, 5, String.class, "name");
        name = gVar5;
        g<ProfileViewedData> gVar6 = new g<>(profileViewedData_, 5, 6, Integer.TYPE, "counter");
        counter = gVar6;
        g<ProfileViewedData> gVar7 = new g<>(profileViewedData_, 6, 7, Integer.TYPE, "type", false, "type", ViewType.class, TYPE.class);
        type = gVar7;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4, gVar5, gVar6, gVar7};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<ProfileViewedData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<ProfileViewedData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "ProfileViewedData";
    }

    @Override // io.objectbox.c
    public final Class<ProfileViewedData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 49;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "ProfileViewedData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<ProfileViewedData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<ProfileViewedData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
