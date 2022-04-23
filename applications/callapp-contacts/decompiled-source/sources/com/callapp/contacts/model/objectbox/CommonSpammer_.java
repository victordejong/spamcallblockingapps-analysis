package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.CommonSpammerCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CommonSpammer_.class */
public final class CommonSpammer_ implements c<CommonSpammer> {
    public static final g<CommonSpammer>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "CommonSpammer";
    public static final int __ENTITY_ID = 9;
    public static final String __ENTITY_NAME = "CommonSpammer";
    public static final g<CommonSpammer> __ID_PROPERTY;
    public static final CommonSpammer_ __INSTANCE;
    public static final g<CommonSpammer> commonSpammerName;
    public static final g<CommonSpammer> commonSpammerPhone;
    public static final g<CommonSpammer> commonSpammerScore;
    public static final g<CommonSpammer> id;
    public static final Class<CommonSpammer> __ENTITY_CLASS = CommonSpammer.class;
    public static final b<CommonSpammer> __CURSOR_FACTORY = new CommonSpammerCursor.Factory();
    static final CommonSpammerIdGetter __ID_GETTER = new CommonSpammerIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CommonSpammer_$CommonSpammerIdGetter.class */
    static final class CommonSpammerIdGetter implements io.objectbox.b.c<CommonSpammer> {
        CommonSpammerIdGetter() {
        }

        public final long getId(CommonSpammer commonSpammer) {
            Long l = commonSpammer.id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        CommonSpammer_ commonSpammer_ = new CommonSpammer_();
        __INSTANCE = commonSpammer_;
        g<CommonSpammer> gVar = new g<>(commonSpammer_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<CommonSpammer> gVar2 = new g<>(commonSpammer_, 1, 2, String.class, "commonSpammerName");
        commonSpammerName = gVar2;
        g<CommonSpammer> gVar3 = new g<>(commonSpammer_, 2, 3, String.class, "commonSpammerPhone");
        commonSpammerPhone = gVar3;
        g<CommonSpammer> gVar4 = new g<>(commonSpammer_, 3, 4, Integer.TYPE, "commonSpammerScore");
        commonSpammerScore = gVar4;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<CommonSpammer>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<CommonSpammer> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "CommonSpammer";
    }

    @Override // io.objectbox.c
    public final Class<CommonSpammer> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 9;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "CommonSpammer";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<CommonSpammer> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<CommonSpammer> getIdProperty() {
        return __ID_PROPERTY;
    }
}
