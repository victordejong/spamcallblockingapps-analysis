package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.OBPrefCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/OBPref_.class */
public final class OBPref_ implements c<OBPref> {
    public static final g<OBPref>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "OBPref";
    public static final int __ENTITY_ID = 27;
    public static final String __ENTITY_NAME = "OBPref";
    public static final g<OBPref> __ID_PROPERTY;
    public static final OBPref_ __INSTANCE;
    public static final g<OBPref> id;
    public static final g<OBPref> key;
    public static final g<OBPref> value;
    public static final Class<OBPref> __ENTITY_CLASS = OBPref.class;
    public static final b<OBPref> __CURSOR_FACTORY = new OBPrefCursor.Factory();
    static final OBPrefIdGetter __ID_GETTER = new OBPrefIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/OBPref_$OBPrefIdGetter.class */
    static final class OBPrefIdGetter implements io.objectbox.b.c<OBPref> {
        OBPrefIdGetter() {
        }

        public final long getId(OBPref oBPref) {
            Long l = oBPref.id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        OBPref_ oBPref_ = new OBPref_();
        __INSTANCE = oBPref_;
        g<OBPref> gVar = new g<>(oBPref_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<OBPref> gVar2 = new g<>(oBPref_, 1, 2, String.class, "key");
        key = gVar2;
        g<OBPref> gVar3 = new g<>(oBPref_, 2, 3, String.class, "value");
        value = gVar3;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<OBPref>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<OBPref> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "OBPref";
    }

    @Override // io.objectbox.c
    public final Class<OBPref> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 27;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "OBPref";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<OBPref> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<OBPref> getIdProperty() {
        return __ID_PROPERTY;
    }
}
