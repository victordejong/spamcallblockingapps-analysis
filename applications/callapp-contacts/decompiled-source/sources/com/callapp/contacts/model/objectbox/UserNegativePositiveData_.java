package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.UserNegativePositiveDataCursor;
import io.objectbox.b.h;
import io.objectbox.c;
import io.objectbox.g;
import io.objectbox.relation.ToOne;
import io.objectbox.relation.b;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserNegativePositiveData_.class */
public final class UserNegativePositiveData_ implements c<UserNegativePositiveData> {
    public static final g<UserNegativePositiveData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "UserNegativePositiveData";
    public static final int __ENTITY_ID = 19;
    public static final String __ENTITY_NAME = "UserNegativePositiveData";
    public static final g<UserNegativePositiveData> __ID_PROPERTY;
    public static final UserNegativePositiveData_ __INSTANCE;
    public static final g<UserNegativePositiveData> id;
    public static final g<UserNegativePositiveData> phoneOrIdKey;
    public static final b<UserNegativePositiveData, UserNegativeSocialData> userNegativeSocialData;
    public static final b<UserNegativePositiveData, UserPositiveSocialData> userPositiveSocialData;
    public static final Class<UserNegativePositiveData> __ENTITY_CLASS = UserNegativePositiveData.class;
    public static final io.objectbox.b.b<UserNegativePositiveData> __CURSOR_FACTORY = new UserNegativePositiveDataCursor.Factory();
    static final UserNegativePositiveDataIdGetter __ID_GETTER = new UserNegativePositiveDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserNegativePositiveData_$UserNegativePositiveDataIdGetter.class */
    static final class UserNegativePositiveDataIdGetter implements io.objectbox.b.c<UserNegativePositiveData> {
        UserNegativePositiveDataIdGetter() {
        }

        public final long getId(UserNegativePositiveData userNegativePositiveData) {
            Long l = userNegativePositiveData.id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        UserNegativePositiveData_ userNegativePositiveData_ = new UserNegativePositiveData_();
        __INSTANCE = userNegativePositiveData_;
        g<UserNegativePositiveData> gVar = new g<>(userNegativePositiveData_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<UserNegativePositiveData> gVar2 = new g<>(userNegativePositiveData_, 1, 2, String.class, "phoneOrIdKey");
        phoneOrIdKey = gVar2;
        __ALL_PROPERTIES = new g[]{gVar, gVar2};
        __ID_PROPERTY = gVar;
        userNegativeSocialData = new b<>(userNegativePositiveData_, UserNegativeSocialData_.__INSTANCE, new io.objectbox.b.g<UserNegativePositiveData>() { // from class: com.callapp.contacts.model.objectbox.UserNegativePositiveData_.1
            public final List<UserNegativeSocialData> getToMany(UserNegativePositiveData userNegativePositiveData) {
                return userNegativePositiveData.userNegativeSocialData;
            }
        }, UserNegativeSocialData_.userNegativeDataId, new h<UserNegativeSocialData>() { // from class: com.callapp.contacts.model.objectbox.UserNegativePositiveData_.2
            public final ToOne<UserNegativePositiveData> getToOne(UserNegativeSocialData userNegativeSocialData2) {
                return userNegativeSocialData2.getUserNegativeData();
            }
        });
        userPositiveSocialData = new b<>(userNegativePositiveData_, UserPositiveSocialData_.__INSTANCE, new io.objectbox.b.g<UserNegativePositiveData>() { // from class: com.callapp.contacts.model.objectbox.UserNegativePositiveData_.3
            public final List<UserPositiveSocialData> getToMany(UserNegativePositiveData userNegativePositiveData) {
                return userNegativePositiveData.userPositiveSocialData;
            }
        }, UserPositiveSocialData_.userPositiveDataId, new h<UserPositiveSocialData>() { // from class: com.callapp.contacts.model.objectbox.UserNegativePositiveData_.4
            public final ToOne<UserNegativePositiveData> getToOne(UserPositiveSocialData userPositiveSocialData2) {
                return userPositiveSocialData2.getUserPositiveData();
            }
        });
    }

    @Override // io.objectbox.c
    public final g<UserNegativePositiveData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.b<UserNegativePositiveData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "UserNegativePositiveData";
    }

    @Override // io.objectbox.c
    public final Class<UserNegativePositiveData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 19;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "UserNegativePositiveData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<UserNegativePositiveData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<UserNegativePositiveData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
