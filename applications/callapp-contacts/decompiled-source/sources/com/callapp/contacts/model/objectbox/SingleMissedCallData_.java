package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.SingleMissedCallDataCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SingleMissedCallData_.class */
public final class SingleMissedCallData_ implements c<SingleMissedCallData> {
    public static final g<SingleMissedCallData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "SingleMissedCallData";
    public static final int __ENTITY_ID = 42;
    public static final String __ENTITY_NAME = "SingleMissedCallData";
    public static final g<SingleMissedCallData> __ID_PROPERTY;
    public static final SingleMissedCallData_ __INSTANCE;
    public static final g<SingleMissedCallData> contactId;
    public static final g<SingleMissedCallData> id;
    public static final g<SingleMissedCallData> missedCallTime;
    public static final g<SingleMissedCallData> missedCallType;
    public static final g<SingleMissedCallData> numberOfMissedCalls;
    public static final g<SingleMissedCallData> phoneAsRaw;
    public static final Class<SingleMissedCallData> __ENTITY_CLASS = SingleMissedCallData.class;
    public static final b<SingleMissedCallData> __CURSOR_FACTORY = new SingleMissedCallDataCursor.Factory();
    static final SingleMissedCallDataIdGetter __ID_GETTER = new SingleMissedCallDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SingleMissedCallData_$SingleMissedCallDataIdGetter.class */
    static final class SingleMissedCallDataIdGetter implements io.objectbox.b.c<SingleMissedCallData> {
        SingleMissedCallDataIdGetter() {
        }

        public final long getId(SingleMissedCallData singleMissedCallData) {
            Long l = singleMissedCallData.id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        SingleMissedCallData_ singleMissedCallData_ = new SingleMissedCallData_();
        __INSTANCE = singleMissedCallData_;
        g<SingleMissedCallData> gVar = new g<>(singleMissedCallData_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<SingleMissedCallData> gVar2 = new g<>(singleMissedCallData_, 1, 2, Long.TYPE, Constants.EXTRA_CONTACT_ID);
        contactId = gVar2;
        g<SingleMissedCallData> gVar3 = new g<>(singleMissedCallData_, 2, 7, String.class, "phoneAsRaw");
        phoneAsRaw = gVar3;
        g<SingleMissedCallData> gVar4 = new g<>(singleMissedCallData_, 3, 4, Long.TYPE, "missedCallTime");
        missedCallTime = gVar4;
        g<SingleMissedCallData> gVar5 = new g<>(singleMissedCallData_, 4, 5, Integer.TYPE, "numberOfMissedCalls");
        numberOfMissedCalls = gVar5;
        g<SingleMissedCallData> gVar6 = new g<>(singleMissedCallData_, 5, 6, Integer.TYPE, "missedCallType");
        missedCallType = gVar6;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4, gVar5, gVar6};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<SingleMissedCallData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<SingleMissedCallData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "SingleMissedCallData";
    }

    @Override // io.objectbox.c
    public final Class<SingleMissedCallData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 42;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "SingleMissedCallData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<SingleMissedCallData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<SingleMissedCallData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
