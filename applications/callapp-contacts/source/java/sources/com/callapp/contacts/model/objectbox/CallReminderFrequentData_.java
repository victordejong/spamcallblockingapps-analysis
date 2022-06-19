package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.CallReminderFrequentData;
import com.callapp.contacts.model.objectbox.CallReminderFrequentDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CallReminderFrequentData_.class */
public final class CallReminderFrequentData_ implements AbstractC17957c<CallReminderFrequentData> {
    public static final C17978g<CallReminderFrequentData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "CallReminderFrequentData";
    public static final int __ENTITY_ID = 37;
    public static final String __ENTITY_NAME = "CallReminderFrequentData";
    public static final C17978g<CallReminderFrequentData> __ID_PROPERTY;
    public static final CallReminderFrequentData_ __INSTANCE;
    public static final C17978g<CallReminderFrequentData> deleteTimeStamp;
    public static final C17978g<CallReminderFrequentData> frequentType;

    /* renamed from: id */
    public static final C17978g<CallReminderFrequentData> f26762id;
    public static final C17978g<CallReminderFrequentData> lastDeleteFromNotificationTimeStamp;
    public static final C17978g<CallReminderFrequentData> missedCallType;
    public static final C17978g<CallReminderFrequentData> phoneAsGlobal;
    public static final Class<CallReminderFrequentData> __ENTITY_CLASS = CallReminderFrequentData.class;
    public static final AbstractC17949b<CallReminderFrequentData> __CURSOR_FACTORY = new CallReminderFrequentDataCursor.Factory();
    static final CallReminderFrequentDataIdGetter __ID_GETTER = new CallReminderFrequentDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CallReminderFrequentData_$CallReminderFrequentDataIdGetter.class */
    public static final class CallReminderFrequentDataIdGetter implements AbstractC17950c<CallReminderFrequentData> {
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
        C17978g<CallReminderFrequentData> c17978g = new C17978g<>(callReminderFrequentData_, 0, 1, Long.class, "id", true, "id");
        f26762id = c17978g;
        C17978g<CallReminderFrequentData> c17978g2 = new C17978g<>(callReminderFrequentData_, 1, 2, String.class, "phoneAsGlobal");
        phoneAsGlobal = c17978g2;
        C17978g<CallReminderFrequentData> c17978g3 = new C17978g<>(callReminderFrequentData_, 2, 3, Integer.TYPE, "frequentType", false, "frequentType", CallReminderFrequentData.FrequentTypeConverter.class, CallReminderFrequentData.FrequentType.class);
        frequentType = c17978g3;
        C17978g<CallReminderFrequentData> c17978g4 = new C17978g<>(callReminderFrequentData_, 3, 7, Long.TYPE, "deleteTimeStamp");
        deleteTimeStamp = c17978g4;
        C17978g<CallReminderFrequentData> c17978g5 = new C17978g<>(callReminderFrequentData_, 4, 8, Integer.TYPE, "missedCallType");
        missedCallType = c17978g5;
        C17978g<CallReminderFrequentData> c17978g6 = new C17978g<>(callReminderFrequentData_, 5, 10, Long.TYPE, "lastDeleteFromNotificationTimeStamp");
        lastDeleteFromNotificationTimeStamp = c17978g6;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4, c17978g5, c17978g6};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<CallReminderFrequentData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<CallReminderFrequentData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "CallReminderFrequentData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<CallReminderFrequentData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 37;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "CallReminderFrequentData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<CallReminderFrequentData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<CallReminderFrequentData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
