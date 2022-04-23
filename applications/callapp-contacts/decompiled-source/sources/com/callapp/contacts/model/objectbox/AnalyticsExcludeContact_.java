package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.AnalyticsExcludeContactCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/AnalyticsExcludeContact_.class */
public final class AnalyticsExcludeContact_ implements c<AnalyticsExcludeContact> {
    public static final g<AnalyticsExcludeContact>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "AnalyticsExcludeContact";
    public static final int __ENTITY_ID = 48;
    public static final String __ENTITY_NAME = "AnalyticsExcludeContact";
    public static final g<AnalyticsExcludeContact> __ID_PROPERTY;
    public static final AnalyticsExcludeContact_ __INSTANCE;
    public static final g<AnalyticsExcludeContact> id;
    public static final g<AnalyticsExcludeContact> phoneAsGlobal;
    public static final Class<AnalyticsExcludeContact> __ENTITY_CLASS = AnalyticsExcludeContact.class;
    public static final b<AnalyticsExcludeContact> __CURSOR_FACTORY = new AnalyticsExcludeContactCursor.Factory();
    static final AnalyticsExcludeContactIdGetter __ID_GETTER = new AnalyticsExcludeContactIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/AnalyticsExcludeContact_$AnalyticsExcludeContactIdGetter.class */
    static final class AnalyticsExcludeContactIdGetter implements io.objectbox.b.c<AnalyticsExcludeContact> {
        AnalyticsExcludeContactIdGetter() {
        }

        public final long getId(AnalyticsExcludeContact analyticsExcludeContact) {
            Long l = analyticsExcludeContact.id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        AnalyticsExcludeContact_ analyticsExcludeContact_ = new AnalyticsExcludeContact_();
        __INSTANCE = analyticsExcludeContact_;
        g<AnalyticsExcludeContact> gVar = new g<>(analyticsExcludeContact_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<AnalyticsExcludeContact> gVar2 = new g<>(analyticsExcludeContact_, 1, 2, String.class, "phoneAsGlobal");
        phoneAsGlobal = gVar2;
        __ALL_PROPERTIES = new g[]{gVar, gVar2};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<AnalyticsExcludeContact>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<AnalyticsExcludeContact> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "AnalyticsExcludeContact";
    }

    @Override // io.objectbox.c
    public final Class<AnalyticsExcludeContact> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 48;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "AnalyticsExcludeContact";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<AnalyticsExcludeContact> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<AnalyticsExcludeContact> getIdProperty() {
        return __ID_PROPERTY;
    }
}
