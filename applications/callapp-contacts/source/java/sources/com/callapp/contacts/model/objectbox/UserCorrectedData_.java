package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.model.objectbox.UserCorrectedDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
import io.objectbox.p502b.AbstractC17955g;
import io.objectbox.p502b.AbstractC17956h;
import io.objectbox.relation.C17990b;
import io.objectbox.relation.ToOne;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserCorrectedData_.class */
public final class UserCorrectedData_ implements AbstractC17957c<UserCorrectedData> {
    public static final C17978g<UserCorrectedData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "UserCorrectedData";
    public static final int __ENTITY_ID = 14;
    public static final String __ENTITY_NAME = "UserCorrectedData";
    public static final C17978g<UserCorrectedData> __ID_PROPERTY;
    public static final UserCorrectedData_ __INSTANCE;
    public static final C17978g<UserCorrectedData> fullName;

    /* renamed from: id */
    public static final C17978g<UserCorrectedData> f26804id;
    public static final C17978g<UserCorrectedData> phoneOrIdKey;
    public static final C17990b<UserCorrectedData, UserCorrectedPositiveData> userCorrectedPositive;
    public static final C17978g<UserCorrectedData> userCorrectedType;
    public static final Class<UserCorrectedData> __ENTITY_CLASS = UserCorrectedData.class;
    public static final AbstractC17949b<UserCorrectedData> __CURSOR_FACTORY = new UserCorrectedDataCursor.Factory();
    static final UserCorrectedDataIdGetter __ID_GETTER = new UserCorrectedDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserCorrectedData_$UserCorrectedDataIdGetter.class */
    public static final class UserCorrectedDataIdGetter implements AbstractC17950c<UserCorrectedData> {
        UserCorrectedDataIdGetter() {
        }

        public final long getId(UserCorrectedData userCorrectedData) {
            Long l = userCorrectedData.f26803id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        UserCorrectedData_ userCorrectedData_ = new UserCorrectedData_();
        __INSTANCE = userCorrectedData_;
        C17978g<UserCorrectedData> c17978g = new C17978g<>(userCorrectedData_, 0, 1, Long.class, "id", true, "id");
        f26804id = c17978g;
        C17978g<UserCorrectedData> c17978g2 = new C17978g<>(userCorrectedData_, 1, 2, String.class, "phoneOrIdKey");
        phoneOrIdKey = c17978g2;
        C17978g<UserCorrectedData> c17978g3 = new C17978g<>(userCorrectedData_, 2, 5, String.class, ContactDetailsActivity.EXTRA_FULL_NAME);
        fullName = c17978g3;
        C17978g<UserCorrectedData> c17978g4 = new C17978g<>(userCorrectedData_, 3, 4, Integer.TYPE, "userCorrectedType");
        userCorrectedType = c17978g4;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4};
        __ID_PROPERTY = c17978g;
        userCorrectedPositive = new C17990b<>(userCorrectedData_, UserCorrectedPositiveData_.__INSTANCE, new AbstractC17955g<UserCorrectedData>() { // from class: com.callapp.contacts.model.objectbox.UserCorrectedData_.1
            public final List<UserCorrectedPositiveData> getToMany(UserCorrectedData userCorrectedData) {
                return userCorrectedData.getUserCorrectedPositive();
            }
        }, UserCorrectedPositiveData_.userCorrectedDataId, new AbstractC17956h<UserCorrectedPositiveData>() { // from class: com.callapp.contacts.model.objectbox.UserCorrectedData_.2
            public final ToOne<UserCorrectedData> getToOne(UserCorrectedPositiveData userCorrectedPositiveData) {
                return userCorrectedPositiveData.getUserCorrectedData();
            }
        });
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<UserCorrectedData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<UserCorrectedData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "UserCorrectedData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<UserCorrectedData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 14;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "UserCorrectedData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<UserCorrectedData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<UserCorrectedData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
