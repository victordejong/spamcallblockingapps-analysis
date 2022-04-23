package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.UserPositiveSocialDataCursor;
import io.objectbox.b.h;
import io.objectbox.c;
import io.objectbox.g;
import io.objectbox.relation.ToOne;
import io.objectbox.relation.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserPositiveSocialData_.class */
public final class UserPositiveSocialData_ implements c<UserPositiveSocialData> {
    public static final g<UserPositiveSocialData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "UserPositiveSocialData";
    public static final int __ENTITY_ID = 21;
    public static final String __ENTITY_NAME = "UserPositiveSocialData";
    public static final g<UserPositiveSocialData> __ID_PROPERTY;
    public static final UserPositiveSocialData_ __INSTANCE;
    public static final g<UserPositiveSocialData> id;
    public static final g<UserPositiveSocialData> profileId;
    public static final g<UserPositiveSocialData> socialNetworkId;
    public static final g<UserPositiveSocialData> sure;
    public static final b<UserPositiveSocialData, UserNegativePositiveData> userPositiveData;
    public static final g<UserPositiveSocialData> userPositiveDataId;
    public static final Class<UserPositiveSocialData> __ENTITY_CLASS = UserPositiveSocialData.class;
    public static final io.objectbox.b.b<UserPositiveSocialData> __CURSOR_FACTORY = new UserPositiveSocialDataCursor.Factory();
    static final UserPositiveSocialDataIdGetter __ID_GETTER = new UserPositiveSocialDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserPositiveSocialData_$UserPositiveSocialDataIdGetter.class */
    public static final class UserPositiveSocialDataIdGetter implements io.objectbox.b.c<UserPositiveSocialData> {
        UserPositiveSocialDataIdGetter() {
        }

        public final long getId(UserPositiveSocialData userPositiveSocialData) {
            Long l = userPositiveSocialData.id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        UserPositiveSocialData_ userPositiveSocialData_ = new UserPositiveSocialData_();
        __INSTANCE = userPositiveSocialData_;
        g<UserPositiveSocialData> gVar = new g<>(userPositiveSocialData_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<UserPositiveSocialData> gVar2 = new g<>(userPositiveSocialData_, 1, 2, Integer.TYPE, "socialNetworkId");
        socialNetworkId = gVar2;
        g<UserPositiveSocialData> gVar3 = new g<>(userPositiveSocialData_, 2, 3, String.class, "profileId");
        profileId = gVar3;
        g<UserPositiveSocialData> gVar4 = new g<>(userPositiveSocialData_, 3, 4, Boolean.TYPE, "sure");
        sure = gVar4;
        g<UserPositiveSocialData> gVar5 = new g<>(userPositiveSocialData_, 4, 5, Long.TYPE, "userPositiveDataId", true);
        userPositiveDataId = gVar5;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4, gVar5};
        __ID_PROPERTY = gVar;
        userPositiveData = new b<>(userPositiveSocialData_, UserNegativePositiveData_.__INSTANCE, gVar5, new h<UserPositiveSocialData>() { // from class: com.callapp.contacts.model.objectbox.UserPositiveSocialData_.1
            public final ToOne<UserNegativePositiveData> getToOne(UserPositiveSocialData userPositiveSocialData) {
                return userPositiveSocialData.getUserPositiveData();
            }
        });
    }

    @Override // io.objectbox.c
    public final g<UserPositiveSocialData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.b<UserPositiveSocialData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "UserPositiveSocialData";
    }

    @Override // io.objectbox.c
    public final Class<UserPositiveSocialData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 21;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "UserPositiveSocialData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<UserPositiveSocialData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<UserPositiveSocialData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
