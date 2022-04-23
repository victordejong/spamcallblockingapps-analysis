package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.model.objectbox.UserCorrectedDataCursor;
import io.objectbox.b.h;
import io.objectbox.c;
import io.objectbox.g;
import io.objectbox.relation.ToOne;
import io.objectbox.relation.b;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserCorrectedData_.class */
public final class UserCorrectedData_ implements c<UserCorrectedData> {
    public static final g<UserCorrectedData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "UserCorrectedData";
    public static final int __ENTITY_ID = 14;
    public static final String __ENTITY_NAME = "UserCorrectedData";
    public static final g<UserCorrectedData> __ID_PROPERTY;
    public static final UserCorrectedData_ __INSTANCE;
    public static final g<UserCorrectedData> fullName;
    public static final g<UserCorrectedData> id;
    public static final g<UserCorrectedData> phoneOrIdKey;
    public static final b<UserCorrectedData, UserCorrectedPositiveData> userCorrectedPositive;
    public static final g<UserCorrectedData> userCorrectedType;
    public static final Class<UserCorrectedData> __ENTITY_CLASS = UserCorrectedData.class;
    public static final io.objectbox.b.b<UserCorrectedData> __CURSOR_FACTORY = new UserCorrectedDataCursor.Factory();
    static final UserCorrectedDataIdGetter __ID_GETTER = new UserCorrectedDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserCorrectedData_$UserCorrectedDataIdGetter.class */
    static final class UserCorrectedDataIdGetter implements io.objectbox.b.c<UserCorrectedData> {
        UserCorrectedDataIdGetter() {
        }

        public final long getId(UserCorrectedData userCorrectedData) {
            Long l = userCorrectedData.id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        UserCorrectedData_ userCorrectedData_ = new UserCorrectedData_();
        __INSTANCE = userCorrectedData_;
        g<UserCorrectedData> gVar = new g<>(userCorrectedData_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<UserCorrectedData> gVar2 = new g<>(userCorrectedData_, 1, 2, String.class, "phoneOrIdKey");
        phoneOrIdKey = gVar2;
        g<UserCorrectedData> gVar3 = new g<>(userCorrectedData_, 2, 5, String.class, ContactDetailsActivity.EXTRA_FULL_NAME);
        fullName = gVar3;
        g<UserCorrectedData> gVar4 = new g<>(userCorrectedData_, 3, 4, Integer.TYPE, "userCorrectedType");
        userCorrectedType = gVar4;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4};
        __ID_PROPERTY = gVar;
        userCorrectedPositive = new b<>(userCorrectedData_, UserCorrectedPositiveData_.__INSTANCE, new io.objectbox.b.g<UserCorrectedData>() { // from class: com.callapp.contacts.model.objectbox.UserCorrectedData_.1
            public final List<UserCorrectedPositiveData> getToMany(UserCorrectedData userCorrectedData) {
                return userCorrectedData.getUserCorrectedPositive();
            }
        }, UserCorrectedPositiveData_.userCorrectedDataId, new h<UserCorrectedPositiveData>() { // from class: com.callapp.contacts.model.objectbox.UserCorrectedData_.2
            public final ToOne<UserCorrectedData> getToOne(UserCorrectedPositiveData userCorrectedPositiveData) {
                return userCorrectedPositiveData.getUserCorrectedData();
            }
        });
    }

    @Override // io.objectbox.c
    public final g<UserCorrectedData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.b<UserCorrectedData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "UserCorrectedData";
    }

    @Override // io.objectbox.c
    public final Class<UserCorrectedData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 14;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "UserCorrectedData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<UserCorrectedData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<UserCorrectedData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
