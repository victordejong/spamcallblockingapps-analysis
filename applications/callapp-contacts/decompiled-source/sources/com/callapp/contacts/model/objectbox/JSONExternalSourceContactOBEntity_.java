package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.JSONExternalSourceContactOBEntityCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity_.class */
public final class JSONExternalSourceContactOBEntity_ implements c<JSONExternalSourceContactOBEntity> {
    public static final g<JSONExternalSourceContactOBEntity>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "JSONExternalSourceContactOBEntity";
    public static final int __ENTITY_ID = 4;
    public static final String __ENTITY_NAME = "JSONExternalSourceContactOBEntity";
    public static final g<JSONExternalSourceContactOBEntity> __ID_PROPERTY;
    public static final JSONExternalSourceContactOBEntity_ __INSTANCE;
    public static final g<JSONExternalSourceContactOBEntity> externalSourceId;
    public static final g<JSONExternalSourceContactOBEntity> id;
    public static final g<JSONExternalSourceContactOBEntity> jsonDoc;
    public static final g<JSONExternalSourceContactOBEntity> key;
    public static final Class<JSONExternalSourceContactOBEntity> __ENTITY_CLASS = JSONExternalSourceContactOBEntity.class;
    public static final b<JSONExternalSourceContactOBEntity> __CURSOR_FACTORY = new JSONExternalSourceContactOBEntityCursor.Factory();
    static final JSONExternalSourceContactOBEntityIdGetter __ID_GETTER = new JSONExternalSourceContactOBEntityIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity_$JSONExternalSourceContactOBEntityIdGetter.class */
    static final class JSONExternalSourceContactOBEntityIdGetter implements io.objectbox.b.c<JSONExternalSourceContactOBEntity> {
        JSONExternalSourceContactOBEntityIdGetter() {
        }

        public final long getId(JSONExternalSourceContactOBEntity jSONExternalSourceContactOBEntity) {
            return jSONExternalSourceContactOBEntity.getId();
        }
    }

    static {
        JSONExternalSourceContactOBEntity_ jSONExternalSourceContactOBEntity_ = new JSONExternalSourceContactOBEntity_();
        __INSTANCE = jSONExternalSourceContactOBEntity_;
        g<JSONExternalSourceContactOBEntity> gVar = new g<>(jSONExternalSourceContactOBEntity_, 0, 1, Long.TYPE, "id", true, "id");
        id = gVar;
        g<JSONExternalSourceContactOBEntity> gVar2 = new g<>(jSONExternalSourceContactOBEntity_, 1, 2, Integer.TYPE, "externalSourceId");
        externalSourceId = gVar2;
        g<JSONExternalSourceContactOBEntity> gVar3 = new g<>(jSONExternalSourceContactOBEntity_, 2, 3, String.class, "key");
        key = gVar3;
        g<JSONExternalSourceContactOBEntity> gVar4 = new g<>(jSONExternalSourceContactOBEntity_, 3, 4, String.class, "jsonDoc");
        jsonDoc = gVar4;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<JSONExternalSourceContactOBEntity>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<JSONExternalSourceContactOBEntity> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "JSONExternalSourceContactOBEntity";
    }

    @Override // io.objectbox.c
    public final Class<JSONExternalSourceContactOBEntity> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 4;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "JSONExternalSourceContactOBEntity";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<JSONExternalSourceContactOBEntity> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<JSONExternalSourceContactOBEntity> getIdProperty() {
        return __ID_PROPERTY;
    }
}
