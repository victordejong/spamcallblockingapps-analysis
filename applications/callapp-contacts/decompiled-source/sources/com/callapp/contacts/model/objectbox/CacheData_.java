package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.CacheDataCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CacheData_.class */
public final class CacheData_ implements c<CacheData> {
    public static final g<CacheData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "CacheData";
    public static final int __ENTITY_ID = 25;
    public static final String __ENTITY_NAME = "CacheData";
    public static final g<CacheData> __ID_PROPERTY;
    public static final CacheData_ __INSTANCE;
    public static final g<CacheData> booleanVal;
    public static final g<CacheData> bytesVal;
    public static final g<CacheData> expires;
    public static final g<CacheData> file;
    public static final g<CacheData> id;
    public static final g<CacheData> integerVal;
    public static final g<CacheData> longVal;
    public static final g<CacheData> stringVal;
    public static final g<CacheData> valueType;
    public static final Class<CacheData> __ENTITY_CLASS = CacheData.class;
    public static final b<CacheData> __CURSOR_FACTORY = new CacheDataCursor.Factory();
    static final CacheDataIdGetter __ID_GETTER = new CacheDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CacheData_$CacheDataIdGetter.class */
    static final class CacheDataIdGetter implements io.objectbox.b.c<CacheData> {
        CacheDataIdGetter() {
        }

        public final long getId(CacheData cacheData) {
            return cacheData.getId();
        }
    }

    static {
        CacheData_ cacheData_ = new CacheData_();
        __INSTANCE = cacheData_;
        g<CacheData> gVar = new g<>(cacheData_, 0, 1, Long.TYPE, "id", true, "id");
        id = gVar;
        g<CacheData> gVar2 = new g<>(cacheData_, 1, 2, String.class, "file");
        file = gVar2;
        g<CacheData> gVar3 = new g<>(cacheData_, 2, 3, Date.class, "expires");
        expires = gVar3;
        g<CacheData> gVar4 = new g<>(cacheData_, 3, 4, String.class, "valueType");
        valueType = gVar4;
        g<CacheData> gVar5 = new g<>(cacheData_, 4, 5, String.class, "stringVal");
        stringVal = gVar5;
        g<CacheData> gVar6 = new g<>(cacheData_, 5, 6, Long.class, "longVal");
        longVal = gVar6;
        g<CacheData> gVar7 = new g<>(cacheData_, 6, 7, Boolean.class, "booleanVal");
        booleanVal = gVar7;
        g<CacheData> gVar8 = new g<>(cacheData_, 7, 8, Integer.class, "integerVal");
        integerVal = gVar8;
        g<CacheData> gVar9 = new g<>(cacheData_, 8, 9, byte[].class, "bytesVal");
        bytesVal = gVar9;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4, gVar5, gVar6, gVar7, gVar8, gVar9};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<CacheData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<CacheData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "CacheData";
    }

    @Override // io.objectbox.c
    public final Class<CacheData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 25;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "CacheData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<CacheData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<CacheData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
