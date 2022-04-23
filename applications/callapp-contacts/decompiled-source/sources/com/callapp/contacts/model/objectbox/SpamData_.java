package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.SpamDataCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SpamData_.class */
public final class SpamData_ implements c<SpamData> {
    public static final g<SpamData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "SpamData";
    public static final int __ENTITY_ID = 28;
    public static final String __ENTITY_NAME = "SpamData";
    public static final g<SpamData> __ID_PROPERTY;
    public static final SpamData_ __INSTANCE;
    public static final g<SpamData> id;
    public static final g<SpamData> phoneAsRaw;
    public static final g<SpamData> when;
    public static final Class<SpamData> __ENTITY_CLASS = SpamData.class;
    public static final b<SpamData> __CURSOR_FACTORY = new SpamDataCursor.Factory();
    static final SpamDataIdGetter __ID_GETTER = new SpamDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SpamData_$SpamDataIdGetter.class */
    static final class SpamDataIdGetter implements io.objectbox.b.c<SpamData> {
        SpamDataIdGetter() {
        }

        public final long getId(SpamData spamData) {
            return spamData.getId();
        }
    }

    static {
        SpamData_ spamData_ = new SpamData_();
        __INSTANCE = spamData_;
        g<SpamData> gVar = new g<>(spamData_, 0, 1, Long.TYPE, "id", true, "id");
        id = gVar;
        g<SpamData> gVar2 = new g<>(spamData_, 1, 2, String.class, "phoneAsRaw");
        phoneAsRaw = gVar2;
        g<SpamData> gVar3 = new g<>(spamData_, 2, 3, Long.TYPE, "when");
        when = gVar3;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<SpamData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<SpamData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "SpamData";
    }

    @Override // io.objectbox.c
    public final Class<SpamData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 28;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "SpamData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<SpamData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<SpamData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
