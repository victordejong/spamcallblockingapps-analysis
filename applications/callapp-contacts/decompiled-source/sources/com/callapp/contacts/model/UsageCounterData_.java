package com.callapp.contacts.model;

import com.callapp.contacts.model.UsageCounterDataCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/UsageCounterData_.class */
public final class UsageCounterData_ implements c<UsageCounterData> {
    public static final g<UsageCounterData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "UsageCounterData";
    public static final int __ENTITY_ID = 17;
    public static final String __ENTITY_NAME = "UsageCounterData";
    public static final g<UsageCounterData> __ID_PROPERTY;
    public static final UsageCounterData_ __INSTANCE;
    public static final g<UsageCounterData> count;
    public static final g<UsageCounterData> date;
    public static final g<UsageCounterData> id;
    public static final g<UsageCounterData> netCallType;
    public static final g<UsageCounterData> socialNetworkId;
    public static final Class<UsageCounterData> __ENTITY_CLASS = UsageCounterData.class;
    public static final b<UsageCounterData> __CURSOR_FACTORY = new UsageCounterDataCursor.Factory();
    static final UsageCounterDataIdGetter __ID_GETTER = new UsageCounterDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/UsageCounterData_$UsageCounterDataIdGetter.class */
    static final class UsageCounterDataIdGetter implements io.objectbox.b.c<UsageCounterData> {
        UsageCounterDataIdGetter() {
        }

        public final long getId(UsageCounterData usageCounterData) {
            return usageCounterData.getId();
        }
    }

    static {
        UsageCounterData_ usageCounterData_ = new UsageCounterData_();
        __INSTANCE = usageCounterData_;
        g<UsageCounterData> gVar = new g<>(usageCounterData_, 0, 1, Long.TYPE, "id", true, "id");
        id = gVar;
        g<UsageCounterData> gVar2 = new g<>(usageCounterData_, 1, 2, Integer.TYPE, "socialNetworkId");
        socialNetworkId = gVar2;
        g<UsageCounterData> gVar3 = new g<>(usageCounterData_, 2, 3, Integer.TYPE, "netCallType");
        netCallType = gVar3;
        g<UsageCounterData> gVar4 = new g<>(usageCounterData_, 3, 4, Long.TYPE, "count");
        count = gVar4;
        g<UsageCounterData> gVar5 = new g<>(usageCounterData_, 4, 5, Long.TYPE, "date");
        date = gVar5;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4, gVar5};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<UsageCounterData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<UsageCounterData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "UsageCounterData";
    }

    @Override // io.objectbox.c
    public final Class<UsageCounterData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 17;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "UsageCounterData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<UsageCounterData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<UsageCounterData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
