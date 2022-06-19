package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.SuggestContactDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SuggestContactData_.class */
public final class SuggestContactData_ implements AbstractC17957c<SuggestContactData> {
    public static final C17978g<SuggestContactData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "SuggestContactData";
    public static final int __ENTITY_ID = 16;
    public static final String __ENTITY_NAME = "SuggestContactData";
    public static final C17978g<SuggestContactData> __ID_PROPERTY;
    public static final SuggestContactData_ __INSTANCE;
    public static final C17978g<SuggestContactData> contactName;

    /* renamed from: id */
    public static final C17978g<SuggestContactData> f26802id;
    public static final C17978g<SuggestContactData> phoneOrIdKey;
    public static final C17978g<SuggestContactData> profileId;
    public static final C17978g<SuggestContactData> socialNetworkId;
    public static final C17978g<SuggestContactData> userName;
    public static final Class<SuggestContactData> __ENTITY_CLASS = SuggestContactData.class;
    public static final AbstractC17949b<SuggestContactData> __CURSOR_FACTORY = new SuggestContactDataCursor.Factory();
    static final SuggestContactDataIdGetter __ID_GETTER = new SuggestContactDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SuggestContactData_$SuggestContactDataIdGetter.class */
    public static final class SuggestContactDataIdGetter implements AbstractC17950c<SuggestContactData> {
        SuggestContactDataIdGetter() {
        }

        public final long getId(SuggestContactData suggestContactData) {
            Long id = suggestContactData.getId();
            if (id != null) {
                return id.longValue();
            }
            return 0L;
        }
    }

    static {
        SuggestContactData_ suggestContactData_ = new SuggestContactData_();
        __INSTANCE = suggestContactData_;
        C17978g<SuggestContactData> c17978g = new C17978g<>(suggestContactData_, 0, 1, Long.class, "id", true, "id");
        f26802id = c17978g;
        C17978g<SuggestContactData> c17978g2 = new C17978g<>(suggestContactData_, 1, 2, String.class, "phoneOrIdKey");
        phoneOrIdKey = c17978g2;
        C17978g<SuggestContactData> c17978g3 = new C17978g<>(suggestContactData_, 2, 3, Integer.TYPE, "socialNetworkId");
        socialNetworkId = c17978g3;
        C17978g<SuggestContactData> c17978g4 = new C17978g<>(suggestContactData_, 3, 4, String.class, "profileId");
        profileId = c17978g4;
        C17978g<SuggestContactData> c17978g5 = new C17978g<>(suggestContactData_, 4, 5, String.class, "userName");
        userName = c17978g5;
        C17978g<SuggestContactData> c17978g6 = new C17978g<>(suggestContactData_, 5, 6, String.class, "contactName");
        contactName = c17978g6;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4, c17978g5, c17978g6};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<SuggestContactData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<SuggestContactData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "SuggestContactData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<SuggestContactData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 16;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "SuggestContactData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<SuggestContactData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<SuggestContactData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
