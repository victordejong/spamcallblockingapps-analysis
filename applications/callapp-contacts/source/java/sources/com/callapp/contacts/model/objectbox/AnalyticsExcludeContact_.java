package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.AnalyticsExcludeContactCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/AnalyticsExcludeContact_.class */
public final class AnalyticsExcludeContact_ implements AbstractC17957c<AnalyticsExcludeContact> {
    public static final C17978g<AnalyticsExcludeContact>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "AnalyticsExcludeContact";
    public static final int __ENTITY_ID = 48;
    public static final String __ENTITY_NAME = "AnalyticsExcludeContact";
    public static final C17978g<AnalyticsExcludeContact> __ID_PROPERTY;
    public static final AnalyticsExcludeContact_ __INSTANCE;

    /* renamed from: id */
    public static final C17978g<AnalyticsExcludeContact> f26750id;
    public static final C17978g<AnalyticsExcludeContact> phoneAsGlobal;
    public static final Class<AnalyticsExcludeContact> __ENTITY_CLASS = AnalyticsExcludeContact.class;
    public static final AbstractC17949b<AnalyticsExcludeContact> __CURSOR_FACTORY = new AnalyticsExcludeContactCursor.Factory();
    static final AnalyticsExcludeContactIdGetter __ID_GETTER = new AnalyticsExcludeContactIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/AnalyticsExcludeContact_$AnalyticsExcludeContactIdGetter.class */
    public static final class AnalyticsExcludeContactIdGetter implements AbstractC17950c<AnalyticsExcludeContact> {
        AnalyticsExcludeContactIdGetter() {
        }

        public final long getId(AnalyticsExcludeContact analyticsExcludeContact) {
            Long l = analyticsExcludeContact.f26749id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        AnalyticsExcludeContact_ analyticsExcludeContact_ = new AnalyticsExcludeContact_();
        __INSTANCE = analyticsExcludeContact_;
        C17978g<AnalyticsExcludeContact> c17978g = new C17978g<>(analyticsExcludeContact_, 0, 1, Long.class, "id", true, "id");
        f26750id = c17978g;
        C17978g<AnalyticsExcludeContact> c17978g2 = new C17978g<>(analyticsExcludeContact_, 1, 2, String.class, "phoneAsGlobal");
        phoneAsGlobal = c17978g2;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<AnalyticsExcludeContact>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<AnalyticsExcludeContact> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "AnalyticsExcludeContact";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<AnalyticsExcludeContact> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 48;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "AnalyticsExcludeContact";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<AnalyticsExcludeContact> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<AnalyticsExcludeContact> getIdProperty() {
        return __ID_PROPERTY;
    }
}
