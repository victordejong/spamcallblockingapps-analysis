package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.UserCorrectedPositiveDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
import io.objectbox.p502b.AbstractC17956h;
import io.objectbox.relation.C17990b;
import io.objectbox.relation.ToOne;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserCorrectedPositiveData_.class */
public final class UserCorrectedPositiveData_ implements AbstractC17957c<UserCorrectedPositiveData> {
    public static final C17978g<UserCorrectedPositiveData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "UserCorrectedPositiveData";
    public static final int __ENTITY_ID = 15;
    public static final String __ENTITY_NAME = "UserCorrectedPositiveData";
    public static final C17978g<UserCorrectedPositiveData> __ID_PROPERTY;
    public static final UserCorrectedPositiveData_ __INSTANCE;

    /* renamed from: id */
    public static final C17978g<UserCorrectedPositiveData> f26806id;
    public static final C17978g<UserCorrectedPositiveData> profileId;
    public static final C17978g<UserCorrectedPositiveData> socialNetworkId;
    public static final C17990b<UserCorrectedPositiveData, UserCorrectedData> userCorrectedData;
    public static final C17978g<UserCorrectedPositiveData> userCorrectedDataId;
    public static final Class<UserCorrectedPositiveData> __ENTITY_CLASS = UserCorrectedPositiveData.class;
    public static final AbstractC17949b<UserCorrectedPositiveData> __CURSOR_FACTORY = new UserCorrectedPositiveDataCursor.Factory();
    static final UserCorrectedPositiveDataIdGetter __ID_GETTER = new UserCorrectedPositiveDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserCorrectedPositiveData_$UserCorrectedPositiveDataIdGetter.class */
    public static final class UserCorrectedPositiveDataIdGetter implements AbstractC17950c<UserCorrectedPositiveData> {
        UserCorrectedPositiveDataIdGetter() {
        }

        public final long getId(UserCorrectedPositiveData userCorrectedPositiveData) {
            return userCorrectedPositiveData.getId();
        }
    }

    static {
        UserCorrectedPositiveData_ userCorrectedPositiveData_ = new UserCorrectedPositiveData_();
        __INSTANCE = userCorrectedPositiveData_;
        C17978g<UserCorrectedPositiveData> c17978g = new C17978g<>(userCorrectedPositiveData_, 0, 1, Long.TYPE, "id", true, "id");
        f26806id = c17978g;
        C17978g<UserCorrectedPositiveData> c17978g2 = new C17978g<>(userCorrectedPositiveData_, 1, 2, Integer.TYPE, "socialNetworkId");
        socialNetworkId = c17978g2;
        C17978g<UserCorrectedPositiveData> c17978g3 = new C17978g<>(userCorrectedPositiveData_, 2, 3, String.class, "profileId");
        profileId = c17978g3;
        C17978g<UserCorrectedPositiveData> c17978g4 = new C17978g<>(userCorrectedPositiveData_, 3, 4, Long.TYPE, "userCorrectedDataId", true);
        userCorrectedDataId = c17978g4;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4};
        __ID_PROPERTY = c17978g;
        userCorrectedData = new C17990b<>(userCorrectedPositiveData_, UserCorrectedData_.__INSTANCE, c17978g4, new AbstractC17956h<UserCorrectedPositiveData>() { // from class: com.callapp.contacts.model.objectbox.UserCorrectedPositiveData_.1
            public final ToOne<UserCorrectedData> getToOne(UserCorrectedPositiveData userCorrectedPositiveData) {
                return userCorrectedPositiveData.getUserCorrectedData();
            }
        });
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<UserCorrectedPositiveData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<UserCorrectedPositiveData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "UserCorrectedPositiveData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<UserCorrectedPositiveData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 15;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "UserCorrectedPositiveData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<UserCorrectedPositiveData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<UserCorrectedPositiveData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
