package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.SpamDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SpamData_.class */
public final class SpamData_ implements AbstractC17957c<SpamData> {
    public static final C17978g<SpamData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "SpamData";
    public static final int __ENTITY_ID = 28;
    public static final String __ENTITY_NAME = "SpamData";
    public static final C17978g<SpamData> __ID_PROPERTY;
    public static final SpamData_ __INSTANCE;

    /* renamed from: id */
    public static final C17978g<SpamData> f26800id;
    public static final C17978g<SpamData> phoneAsRaw;
    public static final C17978g<SpamData> when;
    public static final Class<SpamData> __ENTITY_CLASS = SpamData.class;
    public static final AbstractC17949b<SpamData> __CURSOR_FACTORY = new SpamDataCursor.Factory();
    static final SpamDataIdGetter __ID_GETTER = new SpamDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SpamData_$SpamDataIdGetter.class */
    public static final class SpamDataIdGetter implements AbstractC17950c<SpamData> {
        SpamDataIdGetter() {
        }

        public final long getId(SpamData spamData) {
            return spamData.getId();
        }
    }

    static {
        SpamData_ spamData_ = new SpamData_();
        __INSTANCE = spamData_;
        C17978g<SpamData> c17978g = new C17978g<>(spamData_, 0, 1, Long.TYPE, "id", true, "id");
        f26800id = c17978g;
        C17978g<SpamData> c17978g2 = new C17978g<>(spamData_, 1, 2, String.class, "phoneAsRaw");
        phoneAsRaw = c17978g2;
        C17978g<SpamData> c17978g3 = new C17978g<>(spamData_, 2, 3, Long.TYPE, "when");
        when = c17978g3;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<SpamData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<SpamData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "SpamData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<SpamData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 28;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "SpamData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<SpamData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<SpamData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
