package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.CallRemindersDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CallRemindersData_.class */
public final class CallRemindersData_ implements AbstractC17957c<CallRemindersData> {
    public static final C17978g<CallRemindersData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "CallRemindersData";
    public static final int __ENTITY_ID = 7;
    public static final String __ENTITY_NAME = "CallRemindersData";
    public static final C17978g<CallRemindersData> __ID_PROPERTY;
    public static final CallRemindersData_ __INSTANCE;
    public static final C17978g<CallRemindersData> date;
    public static final C17978g<CallRemindersData> displayName;

    /* renamed from: id */
    public static final C17978g<CallRemindersData> f26764id;
    public static final C17978g<CallRemindersData> jobStringId;
    public static final C17978g<CallRemindersData> notificationId;
    public static final C17978g<CallRemindersData> notificationTime;
    public static final C17978g<CallRemindersData> phoneAsRaw;
    public static final Class<CallRemindersData> __ENTITY_CLASS = CallRemindersData.class;
    public static final AbstractC17949b<CallRemindersData> __CURSOR_FACTORY = new CallRemindersDataCursor.Factory();
    static final CallRemindersDataIdGetter __ID_GETTER = new CallRemindersDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CallRemindersData_$CallRemindersDataIdGetter.class */
    public static final class CallRemindersDataIdGetter implements AbstractC17950c<CallRemindersData> {
        CallRemindersDataIdGetter() {
        }

        public final long getId(CallRemindersData callRemindersData) {
            Long id = callRemindersData.getId();
            if (id != null) {
                return id.longValue();
            }
            return 0L;
        }
    }

    static {
        CallRemindersData_ callRemindersData_ = new CallRemindersData_();
        __INSTANCE = callRemindersData_;
        C17978g<CallRemindersData> c17978g = new C17978g<>(callRemindersData_, 0, 1, Long.class, "id", true, "id");
        f26764id = c17978g;
        C17978g<CallRemindersData> c17978g2 = new C17978g<>(callRemindersData_, 1, 2, Date.class, "date");
        date = c17978g2;
        C17978g<CallRemindersData> c17978g3 = new C17978g<>(callRemindersData_, 2, 3, String.class, "displayName");
        displayName = c17978g3;
        C17978g<CallRemindersData> c17978g4 = new C17978g<>(callRemindersData_, 3, 8, String.class, "phoneAsRaw");
        phoneAsRaw = c17978g4;
        C17978g<CallRemindersData> c17978g5 = new C17978g<>(callRemindersData_, 4, 10, String.class, "jobStringId");
        jobStringId = c17978g5;
        C17978g<CallRemindersData> c17978g6 = new C17978g<>(callRemindersData_, 5, 5, Long.class, "notificationTime");
        notificationTime = c17978g6;
        C17978g<CallRemindersData> c17978g7 = new C17978g<>(callRemindersData_, 6, 6, Long.class, "notificationId");
        notificationId = c17978g7;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4, c17978g5, c17978g6, c17978g7};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<CallRemindersData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<CallRemindersData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "CallRemindersData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<CallRemindersData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 7;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "CallRemindersData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<CallRemindersData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<CallRemindersData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
