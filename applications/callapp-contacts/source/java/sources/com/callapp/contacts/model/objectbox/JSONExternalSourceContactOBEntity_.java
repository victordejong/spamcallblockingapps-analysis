package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.JSONExternalSourceContactOBEntityCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity_.class */
public final class JSONExternalSourceContactOBEntity_ implements AbstractC17957c<JSONExternalSourceContactOBEntity> {
    public static final C17978g<JSONExternalSourceContactOBEntity>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "JSONExternalSourceContactOBEntity";
    public static final int __ENTITY_ID = 4;
    public static final String __ENTITY_NAME = "JSONExternalSourceContactOBEntity";
    public static final C17978g<JSONExternalSourceContactOBEntity> __ID_PROPERTY;
    public static final JSONExternalSourceContactOBEntity_ __INSTANCE;
    public static final C17978g<JSONExternalSourceContactOBEntity> externalSourceId;

    /* renamed from: id */
    public static final C17978g<JSONExternalSourceContactOBEntity> f26780id;
    public static final C17978g<JSONExternalSourceContactOBEntity> jsonDoc;
    public static final C17978g<JSONExternalSourceContactOBEntity> key;
    public static final Class<JSONExternalSourceContactOBEntity> __ENTITY_CLASS = JSONExternalSourceContactOBEntity.class;
    public static final AbstractC17949b<JSONExternalSourceContactOBEntity> __CURSOR_FACTORY = new JSONExternalSourceContactOBEntityCursor.Factory();
    static final JSONExternalSourceContactOBEntityIdGetter __ID_GETTER = new JSONExternalSourceContactOBEntityIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity_$JSONExternalSourceContactOBEntityIdGetter.class */
    public static final class JSONExternalSourceContactOBEntityIdGetter implements AbstractC17950c<JSONExternalSourceContactOBEntity> {
        JSONExternalSourceContactOBEntityIdGetter() {
        }

        public final long getId(JSONExternalSourceContactOBEntity jSONExternalSourceContactOBEntity) {
            return jSONExternalSourceContactOBEntity.getId();
        }
    }

    static {
        JSONExternalSourceContactOBEntity_ jSONExternalSourceContactOBEntity_ = new JSONExternalSourceContactOBEntity_();
        __INSTANCE = jSONExternalSourceContactOBEntity_;
        C17978g<JSONExternalSourceContactOBEntity> c17978g = new C17978g<>(jSONExternalSourceContactOBEntity_, 0, 1, Long.TYPE, "id", true, "id");
        f26780id = c17978g;
        C17978g<JSONExternalSourceContactOBEntity> c17978g2 = new C17978g<>(jSONExternalSourceContactOBEntity_, 1, 2, Integer.TYPE, "externalSourceId");
        externalSourceId = c17978g2;
        C17978g<JSONExternalSourceContactOBEntity> c17978g3 = new C17978g<>(jSONExternalSourceContactOBEntity_, 2, 3, String.class, "key");
        key = c17978g3;
        C17978g<JSONExternalSourceContactOBEntity> c17978g4 = new C17978g<>(jSONExternalSourceContactOBEntity_, 3, 4, String.class, "jsonDoc");
        jsonDoc = c17978g4;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<JSONExternalSourceContactOBEntity>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<JSONExternalSourceContactOBEntity> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "JSONExternalSourceContactOBEntity";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<JSONExternalSourceContactOBEntity> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 4;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "JSONExternalSourceContactOBEntity";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<JSONExternalSourceContactOBEntity> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<JSONExternalSourceContactOBEntity> getIdProperty() {
        return __ID_PROPERTY;
    }
}
