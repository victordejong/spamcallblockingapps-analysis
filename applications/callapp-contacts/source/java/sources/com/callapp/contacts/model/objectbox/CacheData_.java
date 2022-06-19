package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.CacheDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CacheData_.class */
public final class CacheData_ implements AbstractC17957c<CacheData> {
    public static final C17978g<CacheData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "CacheData";
    public static final int __ENTITY_ID = 25;
    public static final String __ENTITY_NAME = "CacheData";
    public static final C17978g<CacheData> __ID_PROPERTY;
    public static final CacheData_ __INSTANCE;
    public static final C17978g<CacheData> booleanVal;
    public static final C17978g<CacheData> bytesVal;
    public static final C17978g<CacheData> expires;
    public static final C17978g<CacheData> file;

    /* renamed from: id */
    public static final C17978g<CacheData> f26758id;
    public static final C17978g<CacheData> integerVal;
    public static final C17978g<CacheData> longVal;
    public static final C17978g<CacheData> stringVal;
    public static final C17978g<CacheData> valueType;
    public static final Class<CacheData> __ENTITY_CLASS = CacheData.class;
    public static final AbstractC17949b<CacheData> __CURSOR_FACTORY = new CacheDataCursor.Factory();
    static final CacheDataIdGetter __ID_GETTER = new CacheDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CacheData_$CacheDataIdGetter.class */
    public static final class CacheDataIdGetter implements AbstractC17950c<CacheData> {
        CacheDataIdGetter() {
        }

        public final long getId(CacheData cacheData) {
            return cacheData.getId();
        }
    }

    static {
        CacheData_ cacheData_ = new CacheData_();
        __INSTANCE = cacheData_;
        C17978g<CacheData> c17978g = new C17978g<>(cacheData_, 0, 1, Long.TYPE, "id", true, "id");
        f26758id = c17978g;
        C17978g<CacheData> c17978g2 = new C17978g<>(cacheData_, 1, 2, String.class, "file");
        file = c17978g2;
        C17978g<CacheData> c17978g3 = new C17978g<>(cacheData_, 2, 3, Date.class, "expires");
        expires = c17978g3;
        C17978g<CacheData> c17978g4 = new C17978g<>(cacheData_, 3, 4, String.class, "valueType");
        valueType = c17978g4;
        C17978g<CacheData> c17978g5 = new C17978g<>(cacheData_, 4, 5, String.class, "stringVal");
        stringVal = c17978g5;
        C17978g<CacheData> c17978g6 = new C17978g<>(cacheData_, 5, 6, Long.class, "longVal");
        longVal = c17978g6;
        C17978g<CacheData> c17978g7 = new C17978g<>(cacheData_, 6, 7, Boolean.class, "booleanVal");
        booleanVal = c17978g7;
        C17978g<CacheData> c17978g8 = new C17978g<>(cacheData_, 7, 8, Integer.class, "integerVal");
        integerVal = c17978g8;
        C17978g<CacheData> c17978g9 = new C17978g<>(cacheData_, 8, 9, byte[].class, "bytesVal");
        bytesVal = c17978g9;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4, c17978g5, c17978g6, c17978g7, c17978g8, c17978g9};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<CacheData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<CacheData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "CacheData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<CacheData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 25;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "CacheData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<CacheData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<CacheData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
