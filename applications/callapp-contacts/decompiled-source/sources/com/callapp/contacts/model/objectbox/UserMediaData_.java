package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.UserMediaDataCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserMediaData_.class */
public final class UserMediaData_ implements c<UserMediaData> {
    public static final g<UserMediaData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "UserMediaData";
    public static final int __ENTITY_ID = 12;
    public static final String __ENTITY_NAME = "UserMediaData";
    public static final g<UserMediaData> __ID_PROPERTY;
    public static final UserMediaData_ __INSTANCE;
    public static final g<UserMediaData> id;
    public static final g<UserMediaData> phoneOrIdKey;
    public static final g<UserMediaData> photoUrl;
    public static final Class<UserMediaData> __ENTITY_CLASS = UserMediaData.class;
    public static final b<UserMediaData> __CURSOR_FACTORY = new UserMediaDataCursor.Factory();
    static final UserMediaDataIdGetter __ID_GETTER = new UserMediaDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserMediaData_$UserMediaDataIdGetter.class */
    static final class UserMediaDataIdGetter implements io.objectbox.b.c<UserMediaData> {
        UserMediaDataIdGetter() {
        }

        public final long getId(UserMediaData userMediaData) {
            Long l = userMediaData.id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        UserMediaData_ userMediaData_ = new UserMediaData_();
        __INSTANCE = userMediaData_;
        g<UserMediaData> gVar = new g<>(userMediaData_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<UserMediaData> gVar2 = new g<>(userMediaData_, 1, 2, String.class, "phoneOrIdKey");
        phoneOrIdKey = gVar2;
        g<UserMediaData> gVar3 = new g<>(userMediaData_, 2, 3, String.class, "photoUrl");
        photoUrl = gVar3;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<UserMediaData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<UserMediaData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "UserMediaData";
    }

    @Override // io.objectbox.c
    public final Class<UserMediaData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 12;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "UserMediaData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<UserMediaData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<UserMediaData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
