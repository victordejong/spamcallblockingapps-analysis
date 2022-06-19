package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.IncognitoDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/IncognitoData_.class */
public final class IncognitoData_ implements AbstractC17957c<IncognitoData> {
    public static final C17978g<IncognitoData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "IncognitoData";
    public static final int __ENTITY_ID = 32;
    public static final String __ENTITY_NAME = "IncognitoData";
    public static final C17978g<IncognitoData> __ID_PROPERTY;
    public static final IncognitoData_ __INSTANCE;

    /* renamed from: id */
    public static final C17978g<IncognitoData> f26778id;
    public static final C17978g<IncognitoData> phoneOrIdKey;
    public static final Class<IncognitoData> __ENTITY_CLASS = IncognitoData.class;
    public static final AbstractC17949b<IncognitoData> __CURSOR_FACTORY = new IncognitoDataCursor.Factory();
    static final IncognitoDataIdGetter __ID_GETTER = new IncognitoDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/IncognitoData_$IncognitoDataIdGetter.class */
    public static final class IncognitoDataIdGetter implements AbstractC17950c<IncognitoData> {
        IncognitoDataIdGetter() {
        }

        public final long getId(IncognitoData incognitoData) {
            return incognitoData.f26777id;
        }
    }

    static {
        IncognitoData_ incognitoData_ = new IncognitoData_();
        __INSTANCE = incognitoData_;
        C17978g<IncognitoData> c17978g = new C17978g<>(incognitoData_, 0, 1, Long.TYPE, "id", true, "id");
        f26778id = c17978g;
        C17978g<IncognitoData> c17978g2 = new C17978g<>(incognitoData_, 1, 2, String.class, "phoneOrIdKey");
        phoneOrIdKey = c17978g2;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<IncognitoData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<IncognitoData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "IncognitoData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<IncognitoData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 32;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "IncognitoData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<IncognitoData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<IncognitoData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
