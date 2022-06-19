package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.UserNegativeSocialDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
import io.objectbox.p502b.AbstractC17956h;
import io.objectbox.relation.C17990b;
import io.objectbox.relation.ToOne;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserNegativeSocialData_.class */
public final class UserNegativeSocialData_ implements AbstractC17957c<UserNegativeSocialData> {
    public static final C17978g<UserNegativeSocialData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "UserNegativeSocialData";
    public static final int __ENTITY_ID = 20;
    public static final String __ENTITY_NAME = "UserNegativeSocialData";
    public static final C17978g<UserNegativeSocialData> __ID_PROPERTY;
    public static final UserNegativeSocialData_ __INSTANCE;

    /* renamed from: id */
    public static final C17978g<UserNegativeSocialData> f26812id;
    public static final C17978g<UserNegativeSocialData> profileId;
    public static final C17978g<UserNegativeSocialData> socialNetworkId;
    public static final C17990b<UserNegativeSocialData, UserNegativePositiveData> userNegativeData;
    public static final C17978g<UserNegativeSocialData> userNegativeDataId;
    public static final Class<UserNegativeSocialData> __ENTITY_CLASS = UserNegativeSocialData.class;
    public static final AbstractC17949b<UserNegativeSocialData> __CURSOR_FACTORY = new UserNegativeSocialDataCursor.Factory();
    static final UserNegativeSocialDataIdGetter __ID_GETTER = new UserNegativeSocialDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserNegativeSocialData_$UserNegativeSocialDataIdGetter.class */
    public static final class UserNegativeSocialDataIdGetter implements AbstractC17950c<UserNegativeSocialData> {
        UserNegativeSocialDataIdGetter() {
        }

        public final long getId(UserNegativeSocialData userNegativeSocialData) {
            Long l = userNegativeSocialData.f26811id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        UserNegativeSocialData_ userNegativeSocialData_ = new UserNegativeSocialData_();
        __INSTANCE = userNegativeSocialData_;
        C17978g<UserNegativeSocialData> c17978g = new C17978g<>(userNegativeSocialData_, 0, 1, Long.class, "id", true, "id");
        f26812id = c17978g;
        C17978g<UserNegativeSocialData> c17978g2 = new C17978g<>(userNegativeSocialData_, 1, 2, Integer.TYPE, "socialNetworkId");
        socialNetworkId = c17978g2;
        C17978g<UserNegativeSocialData> c17978g3 = new C17978g<>(userNegativeSocialData_, 2, 3, String.class, "profileId");
        profileId = c17978g3;
        C17978g<UserNegativeSocialData> c17978g4 = new C17978g<>(userNegativeSocialData_, 3, 4, Long.TYPE, "userNegativeDataId", true);
        userNegativeDataId = c17978g4;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4};
        __ID_PROPERTY = c17978g;
        userNegativeData = new C17990b<>(userNegativeSocialData_, UserNegativePositiveData_.__INSTANCE, c17978g4, new AbstractC17956h<UserNegativeSocialData>() { // from class: com.callapp.contacts.model.objectbox.UserNegativeSocialData_.1
            public final ToOne<UserNegativePositiveData> getToOne(UserNegativeSocialData userNegativeSocialData) {
                return userNegativeSocialData.getUserNegativeData();
            }
        });
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<UserNegativeSocialData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<UserNegativeSocialData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "UserNegativeSocialData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<UserNegativeSocialData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 20;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "UserNegativeSocialData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<UserNegativeSocialData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<UserNegativeSocialData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
