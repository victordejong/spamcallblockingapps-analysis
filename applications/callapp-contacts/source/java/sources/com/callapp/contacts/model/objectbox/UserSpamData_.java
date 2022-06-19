package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.UserSpamData;
import com.callapp.contacts.model.objectbox.UserSpamDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserSpamData_.class */
public final class UserSpamData_ implements AbstractC17957c<UserSpamData> {
    public static final C17978g<UserSpamData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "UserSpamData";
    public static final int __ENTITY_ID = 3;
    public static final String __ENTITY_NAME = "UserSpamData";
    public static final C17978g<UserSpamData> __ID_PROPERTY;
    public static final UserSpamData_ __INSTANCE;

    /* renamed from: id */
    public static final C17978g<UserSpamData> f26816id;
    public static final C17978g<UserSpamData> phone;
    public static final C17978g<UserSpamData> spamScore;
    public static final Class<UserSpamData> __ENTITY_CLASS = UserSpamData.class;
    public static final AbstractC17949b<UserSpamData> __CURSOR_FACTORY = new UserSpamDataCursor.Factory();
    static final UserSpamDataIdGetter __ID_GETTER = new UserSpamDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserSpamData_$UserSpamDataIdGetter.class */
    public static final class UserSpamDataIdGetter implements AbstractC17950c<UserSpamData> {
        UserSpamDataIdGetter() {
        }

        public final long getId(UserSpamData userSpamData) {
            return userSpamData.getId();
        }
    }

    static {
        UserSpamData_ userSpamData_ = new UserSpamData_();
        __INSTANCE = userSpamData_;
        C17978g<UserSpamData> c17978g = new C17978g<>(userSpamData_, 0, 1, Long.TYPE, "id", true, "id");
        f26816id = c17978g;
        C17978g<UserSpamData> c17978g2 = new C17978g<>(userSpamData_, 1, 2, String.class, Constants.EXTRA_PHONE_NUMBER);
        phone = c17978g2;
        C17978g<UserSpamData> c17978g3 = new C17978g<>(userSpamData_, 2, 4, Boolean.TYPE, "spamScore", false, "spamScore", UserSpamData.SpamScoreConverter.class, Integer.class);
        spamScore = c17978g3;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<UserSpamData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<UserSpamData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "UserSpamData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<UserSpamData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 3;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "UserSpamData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<UserSpamData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<UserSpamData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
