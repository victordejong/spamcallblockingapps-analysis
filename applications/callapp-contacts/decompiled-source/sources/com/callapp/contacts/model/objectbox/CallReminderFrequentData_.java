package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.CallReminderFrequentData;
import com.callapp.contacts.model.objectbox.CallReminderFrequentDataCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CallReminderFrequentData_.class */
public final class CallReminderFrequentData_ implements c<CallReminderFrequentData> {
    public static final g<CallReminderFrequentData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "CallReminderFrequentData";
    public static final int __ENTITY_ID = 37;
    public static final String __ENTITY_NAME = "CallReminderFrequentData";
    public static final g<CallReminderFrequentData> __ID_PROPERTY;
    public static final CallReminderFrequentData_ __INSTANCE;
    public static final g<CallReminderFrequentData> deleteTimeStamp;
    public static final g<CallReminderFrequentData> frequentType;
    public static final g<CallReminderFrequentData> id;
    public static final g<CallReminderFrequentData> lastDeleteFromNotificationTimeStamp;
    public static final g<CallReminderFrequentData> missedCallType;
    public static final g<CallReminderFrequentData> phoneAsGlobal;
    public static final Class<CallReminderFrequentData> __ENTITY_CLASS = CallReminderFrequentData.class;
    public static final b<CallReminderFrequentData> __CURSOR_FACTORY = new CallReminderFrequentDataCursor.Factory();
    static final CallReminderFrequentDataIdGetter __ID_GETTER = new CallReminderFrequentDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CallReminderFrequentData_$CallReminderFrequentDataIdGetter.class */
    static final class CallReminderFrequentDataIdGetter implements io.objectbox.b.c<CallReminderFrequentData> {
        CallReminderFrequentDataIdGetter() {
        }

        public final long getId(CallReminderFrequentData callReminderFrequentData) {
            Long id = callReminderFrequentData.getId();
            if (id != null) {
                return id.longValue();
            }
            return 0L;
        }
    }

    static {
        CallReminderFrequentData_ callReminderFrequentData_ = new CallReminderFrequentData_();
        __INSTANCE = callReminderFrequentData_;
        g<CallReminderFrequentData> gVar = new g<>(callReminderFrequentData_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<CallReminderFrequentData> gVar2 = new g<>(callReminderFrequentData_, 1, 2, String.class, "phoneAsGlobal");
        phoneAsGlobal = gVar2;
        g<CallReminderFrequentData> gVar3 = new g<>(callReminderFrequentData_, 2, 3, Integer.TYPE, "frequentType", false, "frequentType", CallReminderFrequentData.FrequentTypeConverter.class, CallReminderFrequentData.FrequentType.class);
        frequentType = gVar3;
        g<CallReminderFrequentData> gVar4 = new g<>(callReminderFrequentData_, 3, 7, Long.TYPE, "deleteTimeStamp");
        deleteTimeStamp = gVar4;
        g<CallReminderFrequentData> gVar5 = new g<>(callReminderFrequentData_, 4, 8, Integer.TYPE, "missedCallType");
        missedCallType = gVar5;
        g<CallReminderFrequentData> gVar6 = new g<>(callReminderFrequentData_, 5, 10, Long.TYPE, "lastDeleteFromNotificationTimeStamp");
        lastDeleteFromNotificationTimeStamp = gVar6;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4, gVar5, gVar6};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<CallReminderFrequentData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<CallReminderFrequentData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "CallReminderFrequentData";
    }

    @Override // io.objectbox.c
    public final Class<CallReminderFrequentData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 37;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "CallReminderFrequentData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<CallReminderFrequentData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<CallReminderFrequentData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
