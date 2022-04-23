package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.model.objectbox.PreferredSimData;
import com.callapp.contacts.model.objectbox.PreferredSimDataCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PreferredSimData_.class */
public final class PreferredSimData_ implements c<PreferredSimData> {
    public static final g<PreferredSimData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "PreferredSimData";
    public static final int __ENTITY_ID = 45;
    public static final String __ENTITY_NAME = "PreferredSimData";
    public static final g<PreferredSimData> __ID_PROPERTY;
    public static final PreferredSimData_ __INSTANCE;
    public static final g<PreferredSimData> id;
    public static final g<PreferredSimData> phoneOrIdKey;
    public static final g<PreferredSimData> simId;
    public static final Class<PreferredSimData> __ENTITY_CLASS = PreferredSimData.class;
    public static final b<PreferredSimData> __CURSOR_FACTORY = new PreferredSimDataCursor.Factory();
    static final PreferredSimDataIdGetter __ID_GETTER = new PreferredSimDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PreferredSimData_$PreferredSimDataIdGetter.class */
    static final class PreferredSimDataIdGetter implements io.objectbox.b.c<PreferredSimData> {
        PreferredSimDataIdGetter() {
        }

        public final long getId(PreferredSimData preferredSimData) {
            Long l = preferredSimData.id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        PreferredSimData_ preferredSimData_ = new PreferredSimData_();
        __INSTANCE = preferredSimData_;
        g<PreferredSimData> gVar = new g<>(preferredSimData_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<PreferredSimData> gVar2 = new g<>(preferredSimData_, 1, 2, String.class, "phoneOrIdKey");
        phoneOrIdKey = gVar2;
        g<PreferredSimData> gVar3 = new g<>(preferredSimData_, 2, 3, Integer.TYPE, "simId", false, "simId", PreferredSimData.SimTypeConverter.class, SimManager.SimId.class);
        simId = gVar3;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<PreferredSimData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<PreferredSimData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "PreferredSimData";
    }

    @Override // io.objectbox.c
    public final Class<PreferredSimData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 45;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "PreferredSimData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<PreferredSimData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<PreferredSimData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
