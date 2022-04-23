package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.SuggestContactDataCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SuggestContactData_.class */
public final class SuggestContactData_ implements c<SuggestContactData> {
    public static final g<SuggestContactData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "SuggestContactData";
    public static final int __ENTITY_ID = 16;
    public static final String __ENTITY_NAME = "SuggestContactData";
    public static final g<SuggestContactData> __ID_PROPERTY;
    public static final SuggestContactData_ __INSTANCE;
    public static final g<SuggestContactData> contactName;
    public static final g<SuggestContactData> id;
    public static final g<SuggestContactData> phoneOrIdKey;
    public static final g<SuggestContactData> profileId;
    public static final g<SuggestContactData> socialNetworkId;
    public static final g<SuggestContactData> userName;
    public static final Class<SuggestContactData> __ENTITY_CLASS = SuggestContactData.class;
    public static final b<SuggestContactData> __CURSOR_FACTORY = new SuggestContactDataCursor.Factory();
    static final SuggestContactDataIdGetter __ID_GETTER = new SuggestContactDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SuggestContactData_$SuggestContactDataIdGetter.class */
    static final class SuggestContactDataIdGetter implements io.objectbox.b.c<SuggestContactData> {
        SuggestContactDataIdGetter() {
        }

        public final long getId(SuggestContactData suggestContactData) {
            Long id = suggestContactData.getId();
            if (id != null) {
                return id.longValue();
            }
            return 0L;
        }
    }

    static {
        SuggestContactData_ suggestContactData_ = new SuggestContactData_();
        __INSTANCE = suggestContactData_;
        g<SuggestContactData> gVar = new g<>(suggestContactData_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<SuggestContactData> gVar2 = new g<>(suggestContactData_, 1, 2, String.class, "phoneOrIdKey");
        phoneOrIdKey = gVar2;
        g<SuggestContactData> gVar3 = new g<>(suggestContactData_, 2, 3, Integer.TYPE, "socialNetworkId");
        socialNetworkId = gVar3;
        g<SuggestContactData> gVar4 = new g<>(suggestContactData_, 3, 4, String.class, "profileId");
        profileId = gVar4;
        g<SuggestContactData> gVar5 = new g<>(suggestContactData_, 4, 5, String.class, "userName");
        userName = gVar5;
        g<SuggestContactData> gVar6 = new g<>(suggestContactData_, 5, 6, String.class, "contactName");
        contactName = gVar6;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4, gVar5, gVar6};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<SuggestContactData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<SuggestContactData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "SuggestContactData";
    }

    @Override // io.objectbox.c
    public final Class<SuggestContactData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 16;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "SuggestContactData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<SuggestContactData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<SuggestContactData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
