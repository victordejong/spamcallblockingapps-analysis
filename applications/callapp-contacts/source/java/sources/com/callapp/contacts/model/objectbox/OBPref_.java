package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.OBPrefCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/OBPref_.class */
public final class OBPref_ implements AbstractC17957c<OBPref> {
    public static final C17978g<OBPref>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "OBPref";
    public static final int __ENTITY_ID = 27;
    public static final String __ENTITY_NAME = "OBPref";
    public static final C17978g<OBPref> __ID_PROPERTY;
    public static final OBPref_ __INSTANCE;

    /* renamed from: id */
    public static final C17978g<OBPref> f26784id;
    public static final C17978g<OBPref> key;
    public static final C17978g<OBPref> value;
    public static final Class<OBPref> __ENTITY_CLASS = OBPref.class;
    public static final AbstractC17949b<OBPref> __CURSOR_FACTORY = new OBPrefCursor.Factory();
    static final OBPrefIdGetter __ID_GETTER = new OBPrefIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/OBPref_$OBPrefIdGetter.class */
    public static final class OBPrefIdGetter implements AbstractC17950c<OBPref> {
        OBPrefIdGetter() {
        }

        public final long getId(OBPref oBPref) {
            Long l = oBPref.f26783id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        OBPref_ oBPref_ = new OBPref_();
        __INSTANCE = oBPref_;
        C17978g<OBPref> c17978g = new C17978g<>(oBPref_, 0, 1, Long.class, "id", true, "id");
        f26784id = c17978g;
        C17978g<OBPref> c17978g2 = new C17978g<>(oBPref_, 1, 2, String.class, "key");
        key = c17978g2;
        C17978g<OBPref> c17978g3 = new C17978g<>(oBPref_, 2, 3, String.class, "value");
        value = c17978g3;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<OBPref>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<OBPref> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "OBPref";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<OBPref> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 27;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "OBPref";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<OBPref> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<OBPref> getIdProperty() {
        return __ID_PROPERTY;
    }
}
