package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.CommonSpammerCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CommonSpammer_.class */
public final class CommonSpammer_ implements AbstractC17957c<CommonSpammer> {
    public static final C17978g<CommonSpammer>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "CommonSpammer";
    public static final int __ENTITY_ID = 9;
    public static final String __ENTITY_NAME = "CommonSpammer";
    public static final C17978g<CommonSpammer> __ID_PROPERTY;
    public static final CommonSpammer_ __INSTANCE;
    public static final C17978g<CommonSpammer> commonSpammerName;
    public static final C17978g<CommonSpammer> commonSpammerPhone;
    public static final C17978g<CommonSpammer> commonSpammerScore;

    /* renamed from: id */
    public static final C17978g<CommonSpammer> f26768id;
    public static final Class<CommonSpammer> __ENTITY_CLASS = CommonSpammer.class;
    public static final AbstractC17949b<CommonSpammer> __CURSOR_FACTORY = new CommonSpammerCursor.Factory();
    static final CommonSpammerIdGetter __ID_GETTER = new CommonSpammerIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CommonSpammer_$CommonSpammerIdGetter.class */
    public static final class CommonSpammerIdGetter implements AbstractC17950c<CommonSpammer> {
        CommonSpammerIdGetter() {
        }

        public final long getId(CommonSpammer commonSpammer) {
            Long l = commonSpammer.f26767id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        CommonSpammer_ commonSpammer_ = new CommonSpammer_();
        __INSTANCE = commonSpammer_;
        C17978g<CommonSpammer> c17978g = new C17978g<>(commonSpammer_, 0, 1, Long.class, "id", true, "id");
        f26768id = c17978g;
        C17978g<CommonSpammer> c17978g2 = new C17978g<>(commonSpammer_, 1, 2, String.class, "commonSpammerName");
        commonSpammerName = c17978g2;
        C17978g<CommonSpammer> c17978g3 = new C17978g<>(commonSpammer_, 2, 3, String.class, "commonSpammerPhone");
        commonSpammerPhone = c17978g3;
        C17978g<CommonSpammer> c17978g4 = new C17978g<>(commonSpammer_, 3, 4, Integer.TYPE, "commonSpammerScore");
        commonSpammerScore = c17978g4;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<CommonSpammer>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<CommonSpammer> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "CommonSpammer";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<CommonSpammer> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 9;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "CommonSpammer";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<CommonSpammer> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<CommonSpammer> getIdProperty() {
        return __ID_PROPERTY;
    }
}
