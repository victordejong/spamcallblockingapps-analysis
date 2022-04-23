package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.IncognitoDataCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/IncognitoData_.class */
public final class IncognitoData_ implements c<IncognitoData> {
    public static final g<IncognitoData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "IncognitoData";
    public static final int __ENTITY_ID = 32;
    public static final String __ENTITY_NAME = "IncognitoData";
    public static final g<IncognitoData> __ID_PROPERTY;
    public static final IncognitoData_ __INSTANCE;
    public static final g<IncognitoData> id;
    public static final g<IncognitoData> phoneOrIdKey;
    public static final Class<IncognitoData> __ENTITY_CLASS = IncognitoData.class;
    public static final b<IncognitoData> __CURSOR_FACTORY = new IncognitoDataCursor.Factory();
    static final IncognitoDataIdGetter __ID_GETTER = new IncognitoDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/IncognitoData_$IncognitoDataIdGetter.class */
    static final class IncognitoDataIdGetter implements io.objectbox.b.c<IncognitoData> {
        IncognitoDataIdGetter() {
        }

        public final long getId(IncognitoData incognitoData) {
            return incognitoData.id;
        }
    }

    static {
        IncognitoData_ incognitoData_ = new IncognitoData_();
        __INSTANCE = incognitoData_;
        g<IncognitoData> gVar = new g<>(incognitoData_, 0, 1, Long.TYPE, "id", true, "id");
        id = gVar;
        g<IncognitoData> gVar2 = new g<>(incognitoData_, 1, 2, String.class, "phoneOrIdKey");
        phoneOrIdKey = gVar2;
        __ALL_PROPERTIES = new g[]{gVar, gVar2};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<IncognitoData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<IncognitoData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "IncognitoData";
    }

    @Override // io.objectbox.c
    public final Class<IncognitoData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 32;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "IncognitoData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<IncognitoData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<IncognitoData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
