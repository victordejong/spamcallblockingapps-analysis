package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.UserNegativePositiveDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
import io.objectbox.p502b.AbstractC17955g;
import io.objectbox.p502b.AbstractC17956h;
import io.objectbox.relation.C17990b;
import io.objectbox.relation.ToOne;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserNegativePositiveData_.class */
public final class UserNegativePositiveData_ implements AbstractC17957c<UserNegativePositiveData> {
    public static final C17978g<UserNegativePositiveData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "UserNegativePositiveData";
    public static final int __ENTITY_ID = 19;
    public static final String __ENTITY_NAME = "UserNegativePositiveData";
    public static final C17978g<UserNegativePositiveData> __ID_PROPERTY;
    public static final UserNegativePositiveData_ __INSTANCE;

    /* renamed from: id */
    public static final C17978g<UserNegativePositiveData> f26810id;
    public static final C17978g<UserNegativePositiveData> phoneOrIdKey;
    public static final C17990b<UserNegativePositiveData, UserNegativeSocialData> userNegativeSocialData;
    public static final C17990b<UserNegativePositiveData, UserPositiveSocialData> userPositiveSocialData;
    public static final Class<UserNegativePositiveData> __ENTITY_CLASS = UserNegativePositiveData.class;
    public static final AbstractC17949b<UserNegativePositiveData> __CURSOR_FACTORY = new UserNegativePositiveDataCursor.Factory();
    static final UserNegativePositiveDataIdGetter __ID_GETTER = new UserNegativePositiveDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserNegativePositiveData_$UserNegativePositiveDataIdGetter.class */
    public static final class UserNegativePositiveDataIdGetter implements AbstractC17950c<UserNegativePositiveData> {
        UserNegativePositiveDataIdGetter() {
        }

        public final long getId(UserNegativePositiveData userNegativePositiveData) {
            Long l = userNegativePositiveData.f26809id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        UserNegativePositiveData_ userNegativePositiveData_ = new UserNegativePositiveData_();
        __INSTANCE = userNegativePositiveData_;
        C17978g<UserNegativePositiveData> c17978g = new C17978g<>(userNegativePositiveData_, 0, 1, Long.class, "id", true, "id");
        f26810id = c17978g;
        C17978g<UserNegativePositiveData> c17978g2 = new C17978g<>(userNegativePositiveData_, 1, 2, String.class, "phoneOrIdKey");
        phoneOrIdKey = c17978g2;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2};
        __ID_PROPERTY = c17978g;
        userNegativeSocialData = new C17990b<>(userNegativePositiveData_, UserNegativeSocialData_.__INSTANCE, new AbstractC17955g<UserNegativePositiveData>() { // from class: com.callapp.contacts.model.objectbox.UserNegativePositiveData_.1
            public final List<UserNegativeSocialData> getToMany(UserNegativePositiveData userNegativePositiveData) {
                return userNegativePositiveData.userNegativeSocialData;
            }
        }, UserNegativeSocialData_.userNegativeDataId, new AbstractC17956h<UserNegativeSocialData>() { // from class: com.callapp.contacts.model.objectbox.UserNegativePositiveData_.2
            public final ToOne<UserNegativePositiveData> getToOne(UserNegativeSocialData userNegativeSocialData2) {
                return userNegativeSocialData2.getUserNegativeData();
            }
        });
        userPositiveSocialData = new C17990b<>(userNegativePositiveData_, UserPositiveSocialData_.__INSTANCE, new AbstractC17955g<UserNegativePositiveData>() { // from class: com.callapp.contacts.model.objectbox.UserNegativePositiveData_.3
            public final List<UserPositiveSocialData> getToMany(UserNegativePositiveData userNegativePositiveData) {
                return userNegativePositiveData.userPositiveSocialData;
            }
        }, UserPositiveSocialData_.userPositiveDataId, new AbstractC17956h<UserPositiveSocialData>() { // from class: com.callapp.contacts.model.objectbox.UserNegativePositiveData_.4
            public final ToOne<UserNegativePositiveData> getToOne(UserPositiveSocialData userPositiveSocialData2) {
                return userPositiveSocialData2.getUserPositiveData();
            }
        });
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<UserNegativePositiveData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<UserNegativePositiveData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "UserNegativePositiveData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<UserNegativePositiveData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 19;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "UserNegativePositiveData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<UserNegativePositiveData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<UserNegativePositiveData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
