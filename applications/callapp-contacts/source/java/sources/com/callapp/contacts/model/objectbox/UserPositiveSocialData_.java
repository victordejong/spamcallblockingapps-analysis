package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.UserPositiveSocialDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
import io.objectbox.p502b.AbstractC17956h;
import io.objectbox.relation.C17990b;
import io.objectbox.relation.ToOne;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserPositiveSocialData_.class */
public final class UserPositiveSocialData_ implements AbstractC17957c<UserPositiveSocialData> {
    public static final C17978g<UserPositiveSocialData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "UserPositiveSocialData";
    public static final int __ENTITY_ID = 21;
    public static final String __ENTITY_NAME = "UserPositiveSocialData";
    public static final C17978g<UserPositiveSocialData> __ID_PROPERTY;
    public static final UserPositiveSocialData_ __INSTANCE;

    /* renamed from: id */
    public static final C17978g<UserPositiveSocialData> f26814id;
    public static final C17978g<UserPositiveSocialData> profileId;
    public static final C17978g<UserPositiveSocialData> socialNetworkId;
    public static final C17978g<UserPositiveSocialData> sure;
    public static final C17990b<UserPositiveSocialData, UserNegativePositiveData> userPositiveData;
    public static final C17978g<UserPositiveSocialData> userPositiveDataId;
    public static final Class<UserPositiveSocialData> __ENTITY_CLASS = UserPositiveSocialData.class;
    public static final AbstractC17949b<UserPositiveSocialData> __CURSOR_FACTORY = new UserPositiveSocialDataCursor.Factory();
    static final UserPositiveSocialDataIdGetter __ID_GETTER = new UserPositiveSocialDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserPositiveSocialData_$UserPositiveSocialDataIdGetter.class */
    public static final class UserPositiveSocialDataIdGetter implements AbstractC17950c<UserPositiveSocialData> {
        UserPositiveSocialDataIdGetter() {
        }

        public final long getId(UserPositiveSocialData userPositiveSocialData) {
            Long l = userPositiveSocialData.f26813id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        UserPositiveSocialData_ userPositiveSocialData_ = new UserPositiveSocialData_();
        __INSTANCE = userPositiveSocialData_;
        C17978g<UserPositiveSocialData> c17978g = new C17978g<>(userPositiveSocialData_, 0, 1, Long.class, "id", true, "id");
        f26814id = c17978g;
        C17978g<UserPositiveSocialData> c17978g2 = new C17978g<>(userPositiveSocialData_, 1, 2, Integer.TYPE, "socialNetworkId");
        socialNetworkId = c17978g2;
        C17978g<UserPositiveSocialData> c17978g3 = new C17978g<>(userPositiveSocialData_, 2, 3, String.class, "profileId");
        profileId = c17978g3;
        C17978g<UserPositiveSocialData> c17978g4 = new C17978g<>(userPositiveSocialData_, 3, 4, Boolean.TYPE, "sure");
        sure = c17978g4;
        C17978g<UserPositiveSocialData> c17978g5 = new C17978g<>(userPositiveSocialData_, 4, 5, Long.TYPE, "userPositiveDataId", true);
        userPositiveDataId = c17978g5;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4, c17978g5};
        __ID_PROPERTY = c17978g;
        userPositiveData = new C17990b<>(userPositiveSocialData_, UserNegativePositiveData_.__INSTANCE, c17978g5, new AbstractC17956h<UserPositiveSocialData>() { // from class: com.callapp.contacts.model.objectbox.UserPositiveSocialData_.1
            public final ToOne<UserNegativePositiveData> getToOne(UserPositiveSocialData userPositiveSocialData) {
                return userPositiveSocialData.getUserPositiveData();
            }
        });
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<UserPositiveSocialData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<UserPositiveSocialData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "UserPositiveSocialData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<UserPositiveSocialData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 21;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "UserPositiveSocialData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<UserPositiveSocialData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<UserPositiveSocialData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
