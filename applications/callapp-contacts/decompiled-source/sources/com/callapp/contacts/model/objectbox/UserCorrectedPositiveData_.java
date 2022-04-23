package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.UserCorrectedPositiveDataCursor;
import io.objectbox.b.h;
import io.objectbox.c;
import io.objectbox.g;
import io.objectbox.relation.ToOne;
import io.objectbox.relation.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserCorrectedPositiveData_.class */
public final class UserCorrectedPositiveData_ implements c<UserCorrectedPositiveData> {
    public static final g<UserCorrectedPositiveData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "UserCorrectedPositiveData";
    public static final int __ENTITY_ID = 15;
    public static final String __ENTITY_NAME = "UserCorrectedPositiveData";
    public static final g<UserCorrectedPositiveData> __ID_PROPERTY;
    public static final UserCorrectedPositiveData_ __INSTANCE;
    public static final g<UserCorrectedPositiveData> id;
    public static final g<UserCorrectedPositiveData> profileId;
    public static final g<UserCorrectedPositiveData> socialNetworkId;
    public static final b<UserCorrectedPositiveData, UserCorrectedData> userCorrectedData;
    public static final g<UserCorrectedPositiveData> userCorrectedDataId;
    public static final Class<UserCorrectedPositiveData> __ENTITY_CLASS = UserCorrectedPositiveData.class;
    public static final io.objectbox.b.b<UserCorrectedPositiveData> __CURSOR_FACTORY = new UserCorrectedPositiveDataCursor.Factory();
    static final UserCorrectedPositiveDataIdGetter __ID_GETTER = new UserCorrectedPositiveDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserCorrectedPositiveData_$UserCorrectedPositiveDataIdGetter.class */
    public static final class UserCorrectedPositiveDataIdGetter implements io.objectbox.b.c<UserCorrectedPositiveData> {
        UserCorrectedPositiveDataIdGetter() {
        }

        public final long getId(UserCorrectedPositiveData userCorrectedPositiveData) {
            return userCorrectedPositiveData.getId();
        }
    }

    static {
        UserCorrectedPositiveData_ userCorrectedPositiveData_ = new UserCorrectedPositiveData_();
        __INSTANCE = userCorrectedPositiveData_;
        g<UserCorrectedPositiveData> gVar = new g<>(userCorrectedPositiveData_, 0, 1, Long.TYPE, "id", true, "id");
        id = gVar;
        g<UserCorrectedPositiveData> gVar2 = new g<>(userCorrectedPositiveData_, 1, 2, Integer.TYPE, "socialNetworkId");
        socialNetworkId = gVar2;
        g<UserCorrectedPositiveData> gVar3 = new g<>(userCorrectedPositiveData_, 2, 3, String.class, "profileId");
        profileId = gVar3;
        g<UserCorrectedPositiveData> gVar4 = new g<>(userCorrectedPositiveData_, 3, 4, Long.TYPE, "userCorrectedDataId", true);
        userCorrectedDataId = gVar4;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4};
        __ID_PROPERTY = gVar;
        userCorrectedData = new b<>(userCorrectedPositiveData_, UserCorrectedData_.__INSTANCE, gVar4, new h<UserCorrectedPositiveData>() { // from class: com.callapp.contacts.model.objectbox.UserCorrectedPositiveData_.1
            public final ToOne<UserCorrectedData> getToOne(UserCorrectedPositiveData userCorrectedPositiveData) {
                return userCorrectedPositiveData.getUserCorrectedData();
            }
        });
    }

    @Override // io.objectbox.c
    public final g<UserCorrectedPositiveData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.b<UserCorrectedPositiveData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "UserCorrectedPositiveData";
    }

    @Override // io.objectbox.c
    public final Class<UserCorrectedPositiveData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 15;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "UserCorrectedPositiveData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<UserCorrectedPositiveData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<UserCorrectedPositiveData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
