package com.callapp.contacts.model;

import com.callapp.contacts.model.UsageCounterDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/UsageCounterData_.class */
public final class UsageCounterData_ implements AbstractC17957c<UsageCounterData> {
    public static final C17978g<UsageCounterData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "UsageCounterData";
    public static final int __ENTITY_ID = 17;
    public static final String __ENTITY_NAME = "UsageCounterData";
    public static final C17978g<UsageCounterData> __ID_PROPERTY;
    public static final UsageCounterData_ __INSTANCE;
    public static final C17978g<UsageCounterData> count;
    public static final C17978g<UsageCounterData> date;

    /* renamed from: id */
    public static final C17978g<UsageCounterData> f26738id;
    public static final C17978g<UsageCounterData> netCallType;
    public static final C17978g<UsageCounterData> socialNetworkId;
    public static final Class<UsageCounterData> __ENTITY_CLASS = UsageCounterData.class;
    public static final AbstractC17949b<UsageCounterData> __CURSOR_FACTORY = new UsageCounterDataCursor.Factory();
    static final UsageCounterDataIdGetter __ID_GETTER = new UsageCounterDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/UsageCounterData_$UsageCounterDataIdGetter.class */
    public static final class UsageCounterDataIdGetter implements AbstractC17950c<UsageCounterData> {
        UsageCounterDataIdGetter() {
        }

        public final long getId(UsageCounterData usageCounterData) {
            return usageCounterData.getId();
        }
    }

    static {
        UsageCounterData_ usageCounterData_ = new UsageCounterData_();
        __INSTANCE = usageCounterData_;
        C17978g<UsageCounterData> c17978g = new C17978g<>(usageCounterData_, 0, 1, Long.TYPE, "id", true, "id");
        f26738id = c17978g;
        C17978g<UsageCounterData> c17978g2 = new C17978g<>(usageCounterData_, 1, 2, Integer.TYPE, "socialNetworkId");
        socialNetworkId = c17978g2;
        C17978g<UsageCounterData> c17978g3 = new C17978g<>(usageCounterData_, 2, 3, Integer.TYPE, "netCallType");
        netCallType = c17978g3;
        C17978g<UsageCounterData> c17978g4 = new C17978g<>(usageCounterData_, 3, 4, Long.TYPE, "count");
        count = c17978g4;
        C17978g<UsageCounterData> c17978g5 = new C17978g<>(usageCounterData_, 4, 5, Long.TYPE, "date");
        date = c17978g5;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4, c17978g5};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<UsageCounterData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<UsageCounterData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "UsageCounterData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<UsageCounterData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 17;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "UsageCounterData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<UsageCounterData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<UsageCounterData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
