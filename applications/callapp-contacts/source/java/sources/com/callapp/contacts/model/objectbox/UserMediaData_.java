package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.UserMediaDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserMediaData_.class */
public final class UserMediaData_ implements AbstractC17957c<UserMediaData> {
    public static final C17978g<UserMediaData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "UserMediaData";
    public static final int __ENTITY_ID = 12;
    public static final String __ENTITY_NAME = "UserMediaData";
    public static final C17978g<UserMediaData> __ID_PROPERTY;
    public static final UserMediaData_ __INSTANCE;

    /* renamed from: id */
    public static final C17978g<UserMediaData> f26808id;
    public static final C17978g<UserMediaData> phoneOrIdKey;
    public static final C17978g<UserMediaData> photoUrl;
    public static final Class<UserMediaData> __ENTITY_CLASS = UserMediaData.class;
    public static final AbstractC17949b<UserMediaData> __CURSOR_FACTORY = new UserMediaDataCursor.Factory();
    static final UserMediaDataIdGetter __ID_GETTER = new UserMediaDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserMediaData_$UserMediaDataIdGetter.class */
    public static final class UserMediaDataIdGetter implements AbstractC17950c<UserMediaData> {
        UserMediaDataIdGetter() {
        }

        public final long getId(UserMediaData userMediaData) {
            Long l = userMediaData.f26807id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        UserMediaData_ userMediaData_ = new UserMediaData_();
        __INSTANCE = userMediaData_;
        C17978g<UserMediaData> c17978g = new C17978g<>(userMediaData_, 0, 1, Long.class, "id", true, "id");
        f26808id = c17978g;
        C17978g<UserMediaData> c17978g2 = new C17978g<>(userMediaData_, 1, 2, String.class, "phoneOrIdKey");
        phoneOrIdKey = c17978g2;
        C17978g<UserMediaData> c17978g3 = new C17978g<>(userMediaData_, 2, 3, String.class, "photoUrl");
        photoUrl = c17978g3;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<UserMediaData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<UserMediaData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "UserMediaData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<UserMediaData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 12;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "UserMediaData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<UserMediaData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<UserMediaData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
