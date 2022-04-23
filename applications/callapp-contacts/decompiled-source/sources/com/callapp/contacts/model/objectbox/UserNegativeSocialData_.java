package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.UserNegativeSocialDataCursor;
import io.objectbox.b.h;
import io.objectbox.c;
import io.objectbox.g;
import io.objectbox.relation.ToOne;
import io.objectbox.relation.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserNegativeSocialData_.class */
public final class UserNegativeSocialData_ implements c<UserNegativeSocialData> {
    public static final g<UserNegativeSocialData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "UserNegativeSocialData";
    public static final int __ENTITY_ID = 20;
    public static final String __ENTITY_NAME = "UserNegativeSocialData";
    public static final g<UserNegativeSocialData> __ID_PROPERTY;
    public static final UserNegativeSocialData_ __INSTANCE;
    public static final g<UserNegativeSocialData> id;
    public static final g<UserNegativeSocialData> profileId;
    public static final g<UserNegativeSocialData> socialNetworkId;
    public static final b<UserNegativeSocialData, UserNegativePositiveData> userNegativeData;
    public static final g<UserNegativeSocialData> userNegativeDataId;
    public static final Class<UserNegativeSocialData> __ENTITY_CLASS = UserNegativeSocialData.class;
    public static final io.objectbox.b.b<UserNegativeSocialData> __CURSOR_FACTORY = new UserNegativeSocialDataCursor.Factory();
    static final UserNegativeSocialDataIdGetter __ID_GETTER = new UserNegativeSocialDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserNegativeSocialData_$UserNegativeSocialDataIdGetter.class */
    public static final class UserNegativeSocialDataIdGetter implements io.objectbox.b.c<UserNegativeSocialData> {
        UserNegativeSocialDataIdGetter() {
        }

        public final long getId(UserNegativeSocialData userNegativeSocialData) {
            Long l = userNegativeSocialData.id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        UserNegativeSocialData_ userNegativeSocialData_ = new UserNegativeSocialData_();
        __INSTANCE = userNegativeSocialData_;
        g<UserNegativeSocialData> gVar = new g<>(userNegativeSocialData_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<UserNegativeSocialData> gVar2 = new g<>(userNegativeSocialData_, 1, 2, Integer.TYPE, "socialNetworkId");
        socialNetworkId = gVar2;
        g<UserNegativeSocialData> gVar3 = new g<>(userNegativeSocialData_, 2, 3, String.class, "profileId");
        profileId = gVar3;
        g<UserNegativeSocialData> gVar4 = new g<>(userNegativeSocialData_, 3, 4, Long.TYPE, "userNegativeDataId", true);
        userNegativeDataId = gVar4;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4};
        __ID_PROPERTY = gVar;
        userNegativeData = new b<>(userNegativeSocialData_, UserNegativePositiveData_.__INSTANCE, gVar4, new h<UserNegativeSocialData>() { // from class: com.callapp.contacts.model.objectbox.UserNegativeSocialData_.1
            public final ToOne<UserNegativePositiveData> getToOne(UserNegativeSocialData userNegativeSocialData) {
                return userNegativeSocialData.getUserNegativeData();
            }
        });
    }

    @Override // io.objectbox.c
    public final g<UserNegativeSocialData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.b<UserNegativeSocialData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "UserNegativeSocialData";
    }

    @Override // io.objectbox.c
    public final Class<UserNegativeSocialData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 20;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "UserNegativeSocialData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<UserNegativeSocialData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<UserNegativeSocialData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
