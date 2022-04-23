package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.UserSpamData;
import com.callapp.contacts.model.objectbox.UserSpamDataCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserSpamData_.class */
public final class UserSpamData_ implements c<UserSpamData> {
    public static final g<UserSpamData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "UserSpamData";
    public static final int __ENTITY_ID = 3;
    public static final String __ENTITY_NAME = "UserSpamData";
    public static final g<UserSpamData> __ID_PROPERTY;
    public static final UserSpamData_ __INSTANCE;
    public static final g<UserSpamData> id;
    public static final g<UserSpamData> phone;
    public static final g<UserSpamData> spamScore;
    public static final Class<UserSpamData> __ENTITY_CLASS = UserSpamData.class;
    public static final b<UserSpamData> __CURSOR_FACTORY = new UserSpamDataCursor.Factory();
    static final UserSpamDataIdGetter __ID_GETTER = new UserSpamDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserSpamData_$UserSpamDataIdGetter.class */
    static final class UserSpamDataIdGetter implements io.objectbox.b.c<UserSpamData> {
        UserSpamDataIdGetter() {
        }

        public final long getId(UserSpamData userSpamData) {
            return userSpamData.getId();
        }
    }

    static {
        UserSpamData_ userSpamData_ = new UserSpamData_();
        __INSTANCE = userSpamData_;
        g<UserSpamData> gVar = new g<>(userSpamData_, 0, 1, Long.TYPE, "id", true, "id");
        id = gVar;
        g<UserSpamData> gVar2 = new g<>(userSpamData_, 1, 2, String.class, Constants.EXTRA_PHONE_NUMBER);
        phone = gVar2;
        g<UserSpamData> gVar3 = new g<>(userSpamData_, 2, 4, Boolean.TYPE, "spamScore", false, "spamScore", UserSpamData.SpamScoreConverter.class, Integer.class);
        spamScore = gVar3;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<UserSpamData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<UserSpamData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "UserSpamData";
    }

    @Override // io.objectbox.c
    public final Class<UserSpamData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 3;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "UserSpamData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<UserSpamData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<UserSpamData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
