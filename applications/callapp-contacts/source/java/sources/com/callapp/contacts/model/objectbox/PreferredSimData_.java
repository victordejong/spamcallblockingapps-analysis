package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.model.objectbox.PreferredSimData;
import com.callapp.contacts.model.objectbox.PreferredSimDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PreferredSimData_.class */
public final class PreferredSimData_ implements AbstractC17957c<PreferredSimData> {
    public static final C17978g<PreferredSimData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "PreferredSimData";
    public static final int __ENTITY_ID = 45;
    public static final String __ENTITY_NAME = "PreferredSimData";
    public static final C17978g<PreferredSimData> __ID_PROPERTY;
    public static final PreferredSimData_ __INSTANCE;

    /* renamed from: id */
    public static final C17978g<PreferredSimData> f26790id;
    public static final C17978g<PreferredSimData> phoneOrIdKey;
    public static final C17978g<PreferredSimData> simId;
    public static final Class<PreferredSimData> __ENTITY_CLASS = PreferredSimData.class;
    public static final AbstractC17949b<PreferredSimData> __CURSOR_FACTORY = new PreferredSimDataCursor.Factory();
    static final PreferredSimDataIdGetter __ID_GETTER = new PreferredSimDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PreferredSimData_$PreferredSimDataIdGetter.class */
    public static final class PreferredSimDataIdGetter implements AbstractC17950c<PreferredSimData> {
        PreferredSimDataIdGetter() {
        }

        public final long getId(PreferredSimData preferredSimData) {
            Long l = preferredSimData.f26789id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        PreferredSimData_ preferredSimData_ = new PreferredSimData_();
        __INSTANCE = preferredSimData_;
        C17978g<PreferredSimData> c17978g = new C17978g<>(preferredSimData_, 0, 1, Long.class, "id", true, "id");
        f26790id = c17978g;
        C17978g<PreferredSimData> c17978g2 = new C17978g<>(preferredSimData_, 1, 2, String.class, "phoneOrIdKey");
        phoneOrIdKey = c17978g2;
        C17978g<PreferredSimData> c17978g3 = new C17978g<>(preferredSimData_, 2, 3, Integer.TYPE, "simId", false, "simId", PreferredSimData.SimTypeConverter.class, SimManager.SimId.class);
        simId = c17978g3;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<PreferredSimData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<PreferredSimData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "PreferredSimData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<PreferredSimData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 45;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "PreferredSimData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<PreferredSimData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<PreferredSimData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
